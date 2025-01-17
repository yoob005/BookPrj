	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>전체도서</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap"
      rel="stylesheet"
    />
    <style>
       * {
        font-family: "Noto Sans KR", sans-serif;
        margin: 0;
        padding: 0;
      }

      ul {
        padding: 0;
        margin-left: 28px;
      }

      li {
        list-style: none;
        margin-bottom: 5px;
      }

      a {
        color: #333;
        text-decoration: none;
        display: block;
      }
      
     
      .content {
        width: 1200px;
        margin: 30px 0px 30px 40px;
      }
      
      .book_cont {
        padding-top: 14px;
      }
      
      .buy-btn,
      .cart-btn {
        padding: 4px 20px;
        margin-right: 4px;
      }
      
      h4{font-size: 16px;}
      .form-con{
          border: 1px solid #333;
          width: 500px;
        height: 200px;
      }
      
      .container-size{
          width: 500px;
          height: 100px;
          margin: 0;
          line-height: 20px;
          padding-top: 10px;

          margin-left: 200px;
          border-radius: 6px;
      }
      
      .likeco{
	      display: flex;
	      justify-content: space-between;
      }
      
        #btn-button:hover{
		color: white;
		background-color: #4eac27;
		border-color: #4eac27;
		}
		
		#btn-button2:active{
		color: white;
		background-color: #4eac27;
		border-color: #4eac27;
		}

		#btn-button{
		background-color:white;
		color:#4eac27;
		border-color: #4eac27;
		} 
       .pagination{
		--bs-pagination-color: #4eac27;
		}
	
		.form-check-input:checked{
			background-color:#4eac27;
			border-color:#4eac27;
		}
      
    </style>
  </head>
<body>
	<my:headerBar></my:headerBar>
    <div class="input-group" style="margin:30px; margin-left: 100px;">
    <!-- checkBox-1 -->
    <div class="container container-size" style="border: 0.5px solid #4eac27; opacity: 0.7;">
    <div class="row">
        <div class="col-3">
            <h4>장르선택</h4>
        </div>
         <div class="form-check col-3">
         <c:if test="${genre eq '소설' }">
         	<input class="form-check-input" type="checkbox" value="소설" id="option1" onclick="clickCheck(this)" checked="checked" disabled="disabled">
         </c:if>
         <c:if test="${genre ne '소설' }">
         	<input class="form-check-input" type="checkbox" value="소설" id="option1" onclick="clickCheck(this)">
         </c:if>
            <label class="form-check-label" for="option1">
            소설
            </label>
         </div>
        <div class="form-check col-3">
        <c:if test="${genre eq '에세이' }">
        	<input class="form-check-input" type="checkbox" value="에세이" id="option2" onclick="clickCheck(this)" checked="checked" disabled="disabled"> 
        </c:if>
        <c:if test="${genre ne '에세이' }">
        	<input class="form-check-input" type="checkbox" value="에세이" id="option2" onclick="clickCheck(this)"> 
        </c:if>
        <label class="form-check-label" for="option2">
            에세이
        </label>
      </div>
      <div class="form-check col-3">
      	<c:if test="${genre eq '인문' }">
       		<input class="form-check-input" type="checkbox" value="인문" id="option3" onclick="clickCheck(this)" checked="checked" disabled="disabled">
        </c:if>
        <c:if test="${genre ne '인문' }">
        	<input class="form-check-input" type="checkbox" value="인문" id="option3" onclick="clickCheck(this)">
        </c:if>
        <label class="form-check-label" for="option3">
            인문
        </label>
      </div>
</div>

    <!-- checkBox-2 -->
    <div class="row">
        <div class="col-3">
            <h4></h4>
        </div>
        <div class="form-check col-3">
        	<c:if test="${genre eq '역사' }">
        		<input class="form-check-input" type="checkbox" value="역사" id="option4" onclick="clickCheck(this)" checked="checked" disabled="disabled">
        	</c:if>
        	<c:if test="${genre ne '역사' }">
        		<input class="form-check-input" type="checkbox" value="역사" id="option4" onclick="clickCheck(this)">
        	</c:if>
           <label class="form-check-label" for="option4">
           역사
           </label>
        </div>
       <div class="form-check col-3">
       <c:if test="${genre eq '만화' }">
       		<input class="form-check-input" type="checkbox" value="만화" id="option5" onclick="clickCheck(this)" checked="checked" disabled="disabled">
       </c:if>
       <c:if test="${genre ne '만화' }">
       		<input class="form-check-input" type="checkbox" value="만화" id="option5" onclick="clickCheck(this)">
       </c:if>
       <label class="form-check-label" for="option5">
         만화
       </label>
     </div>
     <div class="form-check col-3">
      <c:if test="${genre eq '어린이' }">
       <input class="form-check-input" type="checkbox" value="어린이" id="option6" onclick="clickCheck(this)" checked="checked" disabled="disabled">
       </c:if>
       <c:if test="${genre ne '어린이' }">
       <input class="form-check-input" type="checkbox" value="어린이" id="option6" onclick="clickCheck(this)">
       </c:if>
       <label class="form-check-label" for="option6">
         어린이
       </label>
     </div>
</div>
<!-- checkBox3 -->
<div class="row ">
    <div class="col-3">
        <h4></h4>
    </div>
    <div class="form-check col-3">
    <c:if test="${genre eq '수험서' }">
       <input class="form-check-input" type="checkbox" value="수험서" id="option7" onclick="clickCheck(this)" checked="checked" disabled="disabled">
    </c:if>
    <c:if test="${genre ne '수험서' }">
       <input class="form-check-input" type="checkbox" value="수험서" id="option7" onclick="clickCheck(this)">
    </c:if>
       <label class="form-check-label" for="option7">
       수험서
       </label>
    </div>
   <div class="form-check col-3">
   <c:if test="${genre eq '육아' }">
   	<input class="form-check-input" type="checkbox" value="육아" id="option8" onclick="clickCheck(this)" checked="checked" disabled="disabled">
   </c:if>
   <c:if test="${genre ne '육아' }">
   	<input class="form-check-input" type="checkbox" value="육아" id="option8" onclick="clickCheck(this)">
   </c:if>
   <label class="form-check-label" for="option8">
       육아
   </label>
 </div>
 <div class="form-check col-3">
 	<c:if test="${genre eq '예술' }">
   	<input class="form-check-input" type="checkbox" value="예술" id="option9" onclick="clickCheck(this)" checked="checked" disabled="disabled">
   </c:if>
   <c:if test="${genre ne '예술' }">
   	<input class="form-check-input" type="checkbox" value="예술" id="option9" onclick="clickCheck(this)">
   </c:if>
   <label class="form-check-label" for="option9">
       예술
   </label>
 </div>
</div>
</div>
<button class="btn btn-outline-secondary" type="submit" id="button-addon2" onclick="selectGenre()">선택</button>
</div>
<!-- Pagination -->
          <div class="row justify-content-center">
            <div class="col-3">
              <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                  <c:url value="${pageContext.request.contextPath }/list/${genre }" var="pageLink"></c:url>
                    <a class="page-link" href="${pageLink }?page=1" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <c:forEach begin="1" end="${pages }" varStatus="status" var="pageNumb">
                  	<li class="page-item">
                  		<a class="page-link" href="${pageLink }?page=${pageNumb}">${pageNumb }</a>
                  	</li>
                  </c:forEach>
                  <li class="page-item">
                    <a class="page-link" href="${pageLink }?page=${pages}" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>

          
          <div class="container-md">
            <hr />
            
            <div id="message">
            
            </div>
			<div id="modalComponent">
			
			</div>
			<c:forEach var="item" items="${bookList }">
            <div class="row content justify-content-center">
            	<c:url value="${pageContext.request.contextPath}/detail/${item.b_code}" var="link"></c:url>
              		<a href="${link }" style="width: 159px; height: 234px">
              			<img src="https://bookproject-20221208.s3.ap-northeast-2.amazonaws.com/book/${item.b_code }/${URLEncoder.encode(item.b_img,'utf-8')}" alt="" style="width: 159px; height: 230px;" class="bookTarget"/>
              		</a>
              	<ul class="col book_cont">
                <li class="likeco"><div style="font-size: 22px; font-weight: 500;">${item.b_title }</div><div style="font-size: 20px"><i class="fa-solid fa-heart"></i>${item.b_like }</div></li> 
                <li class="mt-3" >${item.b_writer }</li>
                <li style="font-size: 18px" class="item-price mt-1">${item.b_price }</li>
                <li style="margin-bottom:35px">
                세계화의 종말, 갈등과 분열, 그리고 전쟁. 수십 년간 이어져 온 평화와 공존의 시대는 막을 내리고 엄청난 위기감 <br>
                속에서 사람들은 다가올 미래를 두려워한다. 
                자산시장 및 증시의 버블붕괴는 마치 2008년 글로벌 경제위기 ...
                </li>
                <li>

                <c:if test="${u_id !=null}">
                  <a type="button" id="btn-button" class="btn btn-secondary cart-btn want" onclick="wantBook(this)" value="${item.b_code }" data-item="${item.b_code}">
                    장바구니
                  </a>      
                  <c:url value="${pageContext.request.contextPath }/order/${item.b_code }" var="link">
                  	<c:param name="c_cnt" value="1"/>
                  </c:url>
                   <a type="button" class="btn btn-primary buy-btn buy" href="${link}" value="${item.b_code }" data-item="${item.b_code}" id="btn-button2">
                    구매하기
                  </a>         
                </c:if>
                
                <c:if test="${u_id ==null }">
                <c:url value="${pageContext.request.contextPath}/user/login.do" var="loginLink"></c:url>
                	<a type="button" id="btn-button" class="btn btn-secondary cart-btn want" href="${loginLink }">
	                 		장바구니
	                 	</a>
	                 <a type="button" class="btn btn-primary buy-btn buy" href="${loginLink}" id="btn-button2">
                    구매하기
                  </a>
                </c:if>
                </li>
                
                
              </ul>
              <hr />
            </div>
			</c:forEach>
          </div>
               
          <my:footer></my:footer>
          
          
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script>
    const ctx = "${pageContext.request.contextPath}";
    
    let checkedId;
    function clickCheck(target) {
    document.querySelectorAll(`input[type=checkbox]`)
        .forEach(el => el.checked = false);

    target.checked = true;
    checkedId = target.id;
    //console.log(target.id); 
	}
    
    function selectGenre(){
    	let genre = document.getElementById(checkedId).value;
		
    /* 	fetch(`\${ctx}/book/list/\${genre}`)
    	.then(res => res.json())
    	.then(data => console.log(data)); */
    	console.log("this is genre:" + genre);
    	location.assign(`\${ctx}/book/list/\${genre}`);
    } 
    
    
    
   /* function buyBook(target){
    	console.log(target);
    	
     	const bookData = target.dataset.item
     	console.log(bookData);
    	fetch(`\${ctx}/book/order/\${bookData}`)
    	.then((res) => console.log(res));*/
/*     	fetch(`\${ctx}/book/payment`,{
    		method: "post",
    		headers:{
    			"Content-Type": "application/json",
    		},
    		body: JSON.stringify({bookData})
    		})
    		.then((res) => console.log(res));  
    }*/
    
    function wantBook(target){

/*     	console.log(target); */
    	console.log(target.dataset.item);
    	const bookData = target.dataset.item; //1
    	const form ={
    			u_id : '<%=(String)session.getAttribute("id")%>',
    			b_code : `\${bookData}`
    	};
    	
    	fetch(`\${ctx}/book/cart`,{
    		method:"post",
    		headers:{
    			"Content-Type":"application/json",
    		},
    		body: JSON.stringify(form)
    	}).then((res) => res.json())
    	.then((data) => {
    		
    		document.querySelector("#message").style.display = "block";
    		document.querySelector("#message").innerHTML = data.message;
    		setTimeout(() =>{
    			document.querySelector("#message").style.display = "none";
    		},2000);
    		console.log(data.message);
 			return data.message;
    	})
    	.then((msg) =>{
    		const onBasket = '장바구니에 추가완료';
    		const offBasket = '이미 장바구니에 있습니다.';
    		if(msg == onBasket){
    			document.querySelector("#modalComponent").innerHTML=`
    				<!-- Modal -->
    				<div class="modal fade" id="basketModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    				  <div class="modal-dialog">
    				    <div class="modal-content">
    				      <div class="modal-header">
    				        <h1 class="modal-title fs-5" id="exampleModalLabel">장바구니에 추가되었습니다.</h1>
    				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    				      </div>
    				      <div class="modal-body">
    				      장바구니로 이동하시겠습니까?
    				      </div>
    				      <div class="modal-footer">
    				     	<button id="deleteButton"  type="button" class="btn btn-primary" onclick ="location.href = '${ctx}/book/cart/cart'">예</button>
    				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
    				        
    				      </div>
    				    </div>
    				  </div>
    				</div>
    			`;
    		}else if(msg == offBasket){
    			document.querySelector("#modalComponent").innerHTML=`
    				<!-- Modal -->
    				<div class="modal fade" id="basketModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    				  <div class="modal-dialog">
    				    <div class="modal-content">
    				      <div class="modal-header">
    				        <h1 class="modal-title fs-5" id="exampleModalLabel">이미 장바구니에 있습니다.</h1>
    				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    				      </div>
    				      <div class="modal-body">
    				      	장바구니로 이동하시겠습니까?
    				      </div>
    				      <div class="modal-footer">
    				      	<button type="button" class="btn btn-primary" onclick ="location.href = '${ctx}/book/cart/cart'">예</button>
    				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
    				      </div>
    				    </div>
    				  </div>
    				</div>
    			`;
    		}
    	})
    	.then(() => {
    		const myModal = new bootstrap.Modal('#basketModal', {});
    		myModal.show();
    	})
    	;
    }
    
    let itemPrice = document.querySelectorAll(".item-price");
    for(let i=0;i<itemPrice.length;i++){
		itemPrice[i].innerText = Number(itemPrice[i].innerText).toLocaleString() + " 원";	
	}
    


    </script>
</body>
</html>