<%@ page language="java" import="java.util.List" import="com.model.Record" import="com.model.SearchDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search view</title>
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
<h2>search record</h2>

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
        	int id = Integer.parseInt(request.getParameter("id"));
           	SearchDao dao = new SearchDao();
        	List<Record> r = dao.search(id);
            for (Record record : r) {
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