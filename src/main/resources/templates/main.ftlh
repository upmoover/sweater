<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container">
        <form method="get" action="/main" class="form-inline">
            <div class="row">
                <div class="col">
                    <input type="text" name="filter" class="form-control" value="${filter?ifExists}"
                           placeholder="Search by tag"/>
                </div>
                <div class="col">
                    <button type="submit" class="btn btn-primary mb-3">Search</button>
                </div>
            </div>
        </form>
    </div>

    <#include "parts/messageEdit.ftlh" />

    <#include "parts/messageList.ftlh" />

</@c.page>