<%@ page language="java" import="com.model.EditDao" import="java.util.List" import="com.model.Record" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Records</title>
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
        }
    </style>
</head>
<body>
		<h2>View records</h2>

<table>
    <thead>
        <tr>
        	<th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>PhoneNo</th>
            <th>Password</th>
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
               
            </tr>
        <% } %>
    </tbody>
</table>
</body>
</html>