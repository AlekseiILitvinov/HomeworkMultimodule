<%@ page import="java.util.List" %>
<%@ page import="ru.itpark.web.model.AutoModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="bootstrap-css.jsp" %>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col">
            <% if (request.getAttribute("item") != null) { %>
            <h1>Details</h1>

            <div class="row">
                <% AutoModel item = (AutoModel) request.getAttribute("item"); %>
                <div class="col-sm-6 mt-3">
                    <div class="card">
                        <img src="<%= request.getContextPath() %>/images/<%= item.getImageUrl() %>" class="card-img-top"
                             alt="<%= item.getName() %>">
                        <div class="card-body">
                            <h5 class="card-title"><%= item.getName() %>
                            </h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <form action="<%= request.getContextPath() %>" method="POST" enctype="multipart/form-data" class="mt-3">
                    <div class="form-group">
                        <label for="name">Update Name</label>
                        <input type="text" id="name" name="name" class="form-control" value="<%=item.getName()%>"
                               required>
                    </div>

                    <div class="custom-file">
                        <input type="file" id="file" name="image" class="custom-file-input" accept="image/*">
                        <label class="custom-file-label" for="file">Update image...</label>
                    </div>

                    <button type="submit" class="btn btn-primary mt-3">Update</button>
                </form>
            </div>
            <div class="btn-toolbar justify-content-between">
                <div class="row">
                    <form action="<%= request.getContextPath() %>/remove/<%= item.getId() %>" method="POST"
                          class="mt-3">
                        <button type="submit" class="btn btn-primary mt-3">Remove</button>
                    </form>
                    <% } %>

                    <form action="<%= request.getContextPath() %>/" method="GET" class="mt-3">
                        <button type="submit" class="btn btn-primary mt-3">Back</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="bootstrap-scripts.jsp" %>
</body>
</html>
