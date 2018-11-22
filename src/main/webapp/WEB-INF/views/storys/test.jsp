<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>텍스트 파일 읽기</title>
</head>
<body>
 <%
 BufferedReader reader = null;
 try
  {
   String filePath = application.getRealPath("/resources/text/dc9a21e8-5519-495c-ac2d-941452c0e53a.html"); 
   reader = new BufferedReader(new FileReader(filePath));
   while(true)
   {
   String str = reader.readLine();   
   if(str==null)
    break;
   out.print(str+"</br>");  
   }
  }
  catch(FileNotFoundException fnfe)
  {
   out.print("파일이 존재 하지 않습니다.");
  }
 catch(IOException ioe)
 {
  out.print("파일을 읽을수 없습니다.");
 }
 
 finally
 {
  try 
  {
   reader.close();    
  }
  catch(Exception e)
  {
  
  }
 }
 %>
</body>
</html>
