<a class="btn btn-primary m-3" data-bs-toggle="collapse" href="#collapseExample" role="button"
   aria-expanded="false"
   aria-controls="collapseExample">Message editor</a>
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
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>
</div>