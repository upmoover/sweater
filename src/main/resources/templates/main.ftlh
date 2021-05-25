<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container">
        <form method="get" action="/main" class="form-inline">
            <div class="row">
                <div class="col">
                    <input type="text" name="filter" class="form-control" value="${filter?ifExists}"
                           placeholder="Search by tag">
                </div>
                <div class="col">
                    <button type="submit" class="btn btn-primary mb-3">Search</button>
                </div>
            </div>
        </form>
    </div>
    <a class="btn btn-primary m-3" data-bs-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="false"
       aria-controls="collapseExample">Add new message</a>
    <div class="collapse <#if message??>show</#if>" id="collapseExample">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}  mb-3"
                       value="<#if message??>${message.text}</#if>" name="text" placeholder="Введите сообщение">
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <input type="text" class="form-control"
                   value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Введите тэг">
            <#if tagError??>
                <div class="invalid-feedback">
                    ${tagError}
                </div>
            </#if>
            <div class="form-group">
                <div class="custom-file mt-3">
                    <input class="form-control" type="file" name="file" id="customFile">
                    <label for="customFile" class="form-label"></label>
                </div>
            </div>
            <div class="m-3">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-primary">Добавить</button>
            </div>
        </form>
    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <#list messages as message>
            <div class="card m-2" style="width: 18rem;">
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                </#if>
                <div class="m-2">
                    <span>${message.text}</span>
                    <i>${message.tag}</i>
                </div>
                <div class="card-footer text-muted">
                    ${message.authorName}
                </div>
            </div>
        <#else>
            No messages
        </#list>
    </div>
</@c.page>