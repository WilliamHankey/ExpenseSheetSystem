<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
       
        <div id="list-user" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
           
               <div class="card-deck container-fluid">
                <g:each var="user" in="${userList}">
                <div class="card">
                    <div class="card-body  mx-auto">
                     <p class="card-title">Name: ${user.name}  
                     
                     </p>
                     <p>
                     Initial Bank Balance:  ${user.initialBankBalance}
                     </p>
                      <g:link class="card-link”" controller="expense" action="statement" id="${user.id}" >[View Statement]
                      </g:link>
                    
                 
                 </div>
                </div>
                     </g:each>
                </div>
            
            <div class="pagination">
                <g:paginate total="${userCount ?: 0}" />
            </div>
        </div>

    </body>
</html>

