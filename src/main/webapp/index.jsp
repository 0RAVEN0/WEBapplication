<%@page import="main.java.JSONReader"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="main.java.ValueInfo" %>
<html>
<head>
    <title>WebAPP</title>
</head>
<body>
<%
    JSONReader tc = new JSONReader();
    List<ValueInfo> newCountryList = new ArrayList<>();
    newCountryList = tc.countryName();
%>
<h1 align="center" style="color:#483d8b;">Countries with the lowest unemployment rate </h1>
<table width="60%" border="2" align="center">
    <thead>
    <tr>
        <th>Index</th>
        <th>Country Code</th>
        <th>Country Name</th>
        <th>Value</th>
    </tr>
    </thead>
    <tbody align="center">
    <tr>
        <td>1</td>
        <td><%= newCountryList.get(0).getCountryCode() %></td>
        <td><%= newCountryList.get(0).getCountryName() %></td>
        <td><%= newCountryList.get(0).getValue()%></td>
    </tr>
    <tr>
        <td>2</td>
        <td><%= newCountryList.get(1).getCountryCode() %></td>
        <td><%= newCountryList.get(1).getCountryName() %></td>
        <td><%= newCountryList.get(1).getValue()%></td>
    </tr>
    <tr>
        <td>3</td>
        <td><%= newCountryList.get(2).getCountryCode() %></td>
        <td><%= newCountryList.get(2).getCountryName() %></td>
        <td><%= newCountryList.get(2).getValue()%></td>
    </tr>
    </tbody>
</table>
<h1 align="center" style="color:#483d8b;">Countries with the highest unemployment rate </h1>
<table width="60%" border="2" align="center">
    <thead>
    <tr>
        <th>Index</th>
        <th>Country Code</th>
        <th>Country Name</th>
        <th>Value</th>
    </tr>
    </thead>
    <tbody align="center">
    <tr>
        <td>1</td>
        <td><%= newCountryList.get(newCountryList.size()-1).getCountryCode() %></td>
        <td><%= newCountryList.get(newCountryList.size()-1).getCountryName() %></td>
        <td><%= newCountryList.get(newCountryList.size()-1).getValue() %></td>
    </tr>
    <tr>
        <td>2</td>
        <td><%= newCountryList.get(newCountryList.size()-2).getCountryCode() %></td>
        <td><%= newCountryList.get(newCountryList.size()-2).getCountryName() %></td>
        <td><%= newCountryList.get(newCountryList.size()-2).getValue() %></td>
    </tr>
    <tr>
        <td>3</td>
        <td><%= newCountryList.get(newCountryList.size()-3).getCountryCode() %></td>
        <td><%= newCountryList.get(newCountryList.size()-3).getCountryName() %></td>
        <td><%= newCountryList.get(newCountryList.size()-3).getValue() %></td>
    </tr>
    </tbody>
</table>
</body>
</html>
