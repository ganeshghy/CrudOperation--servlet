<%@ page language="java" import="com.model.EditDao" import="java.util.List" import="com.model.Record" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit the record</title>
<link rel="stylesheet" href="./assets/css/bootstrap.css">
<script type="text/javascript" src="./assets/js/bootstrap.min.js"></script>
<style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }h4{
        	margin:20px;
        }
    </style>
</head>
<body>
	<h4>Update-Delete records</h4>

<table>
    <thead>
        <tr>
        	<th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>PhoneNo</th>
            <th>Password</th>
            <th colspan="2">Action</th>
        </tr>
    </thead>
    <tbody>
        <% 
            EditDao edit = new EditDao();
            List<Record> records = edit.fetch();
            for (Record record : records) {
        %>
            <tr>
            	<td><%= record.getId() %></td>
                <td><%= record.getName() %></td>
                <td><%= record.getEmail() %></td>
                <td><%= record.getPhno() %></td>
                <td><%= record.getPwd() %></td>
                <td><a class="btn btn-outline-success px-2 mt-2" href="update.jsp?id=<%= record.getId() %>&name=<%= record.getName() %>&email=<%= record.getEmail() %>&phno=<%= record.getPhno() %>&pwd=<%= record.getPwd() %>">update</a></td>
                <td><a class="btn btn-outline-danger px-2 mt-2" href="DeleteServlet?id=<%= record.getId() %>">delete</a></td>
               
            </tr>
        <% } %>
    </tbody>
</table>
</body>
</html>