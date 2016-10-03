<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for your business!</h1>

                    <p>Your order will be shipped in two business days!</p>
                </div>
            </div>
        </section>

        
        <p style="text-align:center;">
         <img src="<c:url value="/resources/image/thank you.gif"/>" class="img-responsive">
         </p>
         
         <section class="container">
            <p><a href="<spring:url value="/" />" class="btn btn-default">OK</a></p>
        </section>
</div>
</div>
<%@ include file="footer.jsp" %>