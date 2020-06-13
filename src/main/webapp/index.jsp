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
<h1 align="center">Countries with the lowest unemployment rate </h1>
<table width="60%" border="1" align="center">
    <thead>
    <tr>
        <td>Index</td>
        <td>Country Code</td>
        <td>Country Name</td>
        <td>Value</td>
    </tr>
    </thead>
    <tbody>
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
<h1 align="center">Countries with the highest unemployment rate </h1>
<table width="60%" border="1" align="center">
    <thead>
    <tr>
        <td>Index</td>
        <td>Country Code</td>
        <td>Country Name</td>
        <td>Value</td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td><%= newCountryList.get(newCountryList.size()-3).getCountryCode() %></td>
        <td><%= newCountryList.get(newCountryList.size()-3).getCountryName() %></td>
        <td><%= newCountryList.get(newCountryList.size()-3).getValue() %></td>
    </tr>
    <tr>
        <td>2</td>
        <td><%= newCountryList.get(newCountryList.size()-2).getCountryCode() %></td>
        <td><%= newCountryList.get(newCountryList.size()-2).getCountryName() %></td>
        <td><%= newCountryList.get(newCountryList.size()-2).getValue() %></td>
    </tr>
    <tr>
        <td>3</td>
        <td><%= newCountryList.get(newCountryList.size()-1).getCountryCode() %></td>
        <td><%= newCountryList.get(newCountryList.size()-1).getCountryName() %></td>
        <td><%= newCountryList.get(newCountryList.size()-1).getValue() %></td>
    </tr>
    </tbody>
</table>
</body>
</html>
