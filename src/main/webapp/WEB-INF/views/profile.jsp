<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/taglib.jsp"%>

<style>
    .profile {
        display: flex;
        margin: 20px 350px auto;
    }

    .profile-item2 {
        margin-left: 50px;
        padding-top: 15px;
    }

    .item-flex {
        display: flex;
        align-items: center;
    }

    .profile-item2 input {
        height: 30px;
        border-radius: 6px;
        outline: none;
        border: 1px solid #cccccc;
        margin-top: 5px;
     
        
    }
    .profile-item2 a{
        margin-left: 38px;
        border: 1px solid #cccccc;
        padding: 5px;
        border-radius: 5px;
        color: #cccccc;
        text-decoration: none;
    }
    .profile-item2 a:hover{
        background-color: red ;
        color: white;
    }

    .phone {
        height: 31px;
        margin-top: 5px;
        width: 183px;
        border-radius: 5px;
        outline: none;
        border: 1px solid #cccccc;
    }
    .profile-save{
       width: 109px;
       height: 40px;
       background-color: #0e71eb;
       color: white
    }
    .profile-save:hover{
       background-color: red;
        color: white;
    }   

    .item-row {
        margin-top: 15px;
    }
    .profile-context{
        font-weight: 500;
        font-size: 17px;
    }
    

    input[type=text]:focus {
        outline: 1px solid orange;      
    }
</style>
    <div style="text-align: center;font-size: 30px;margin-top: 30px;">Profile</div>
    <form action="profileSave" method="post"  enctype="multipart/form-data" >
    <div class="profile">
      <div>
        <img class="profile-item1" src="${person.image}" style="height: 100px;padding: 18px;border-radius: 36px;">
       	<input type = "file" id ="file" name = "file">
      </div>
        <div class="profile-item2">
	        <div class="item-flex">
		        <div>Id : </div>
		        <input name = "id" value = "${person.id }" readonly="true" style ="border: none;margin: 0px">
	        </div>
            <div class="item-flex">           	
                <div>
                    <div class="profile-context">User Name</div>
                    <input type="text" style="width: 138px;color: green;" id = "username" name = "username" value = "${person.username}" >
                </div>
                <div style="margin-left: 15px;">
                    <div class="profile-context">Full Name</div>
                    <input type="text" id  = "fullname" name = "fullname" value = "${person.fullname }" style ="color: green;">
                </div>
            </div>
              <div class="item-row">
                <div class="profile-context">Password</div>
                <input type="text" style="width: 369px;color: green;" id ="password" name = "password" value = "${person.password}" >
            </div>
            <div class="item-flex item-row">
                <div>
                    <div class="profile-context">Phone</div>
                    <select class="phone">
                        <option>Vietnam</option>
                        <option>America</option>
                        <option>Gemany</option>
                        <option>france</option>
                    </select>
                </div>
                <input type="text" style="margin-top: 22px;margin-left: 15px;color: red;" id = "phone" name = "phone" value = "${person.phone }">
            </div>

            <div class="item-row">
                <div class="profile-context">Email</div>
                <input type="text" style="width: 369px;color: green;" id ="email" name = "email" value = "${person.email}">
            </div>

            <div class="item-row">
                <div class="profile-context">Address</div>
                <input type="text" style="width: 369px;color: green;" id = "address" name = "address" value = "${person.address}">
            </div>

            <div class="item-row">
                <div class="profile-context">City</div>
                <input type="text" style="width: 369px;color: green;" id ="city" name = "city" value ="${person.city }">
            </div>
            
            <div style = "margin-top: 15px;">
            <input class="profile-save" type="submit" value="Save Change" > 
            	<c:choose>
				    <c:when test="${person.id=='1'}">
				        <a href="<%=request.getContextPath()%>/quan-tri/trang-chu">Cancel</a>    				        
				    </c:when>    
				    <c:otherwise>				       
				        <a href="<%=request.getContextPath()%>/trang-chu">Cancel</a>
				    </c:otherwise>
				</c:choose>                                                             
                           
            </div>
        </div>
    </div>
</form>
