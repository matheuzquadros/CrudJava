<%-- 
    Document   : HelloWorld
    Created on : 11/09/2017, 19:53:05
    Author     : matheus.quadros
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <% out.println("<h1>Hello World!</h1>");
            int dia = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
            int mes = Integer.parseInt((new SimpleDateFormat("M")).format(new Date()));
            int ano = Integer.parseInt((new SimpleDateFormat("yyyy")).format(new Date()));
            if (mes == 1) {
                out.println("Hoje é " + dia + " de Janeiro de " + ano);
            } else if (mes == 02) {
                out.println("Hoje é " + dia + " de Fevereiro de " + ano);
            } else if (mes == 3) {
                out.println("Hoje é " + dia + " de Março de " + ano);
            } else if (mes == 9) {
                out.println("Hoje é " + dia + " de Setembro de " + ano);
            }%> </body> </html>
