<#include "security.ftl">

<div class="card-columns" id="message-list">
    <#list messages as msg>
        <div class="card my-3" data-id="${msg.id}">
            <#if msg.filename??>
                <img src="/img/${msg.filename}" class="card-img-top"/>
            </#if>
            <div class="m-2">
                <span>${msg.text}</span><br/>
                <i>#${msg.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${msg.author.id}">${msg.authorName}</a>
                <#if msg.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-messages/${msg.author.id}?message=${msg.id}">
                        Edit
                    </a>
                </#if>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>
