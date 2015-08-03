<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2015/7/31
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=utf-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="templates/header.jsp"%>
<%@include file="templates/sidebar.jsp"%>
<link rel="stylesheet" href="/OCare/Assets/CSS/homepage.css">
<div class="content">
   <table class="ui table segment">
      <thead>
        <tr>
          <th>������</th>
          <th>״̬</th>
          <th>��ϸ��Ϣ</th>
          <th>��ע</th>
        </tr>
      </thead>
        <tr>
          <td>����������</td>
          <td><i class="question icon"></i>�����</td>
          <td><i class="icon search"></i>�鿴</td>
          <td>��</td>
        </tr>
        <tr class="positive">
          <td>����</td>
          <td><i class="icon checkmark"></i> ��ͨ��</td>
          <td><i class="icon search"></i>�鿴</td>
          <td>��</td>
        </tr>
        <tr>
          <td>����</td>
          <td><i class="question icon"></i>�����</td>
          <td><i class="icon search"></i>�鿴</td>
          <td>��绰��ϵ</td>
        </tr>
        <tr class="negative">
          <td>����</td>
          <td><i class="icon Ban Circle"></i>�Ѿܾ�</td>
          <td><i class="icon search"></i>�鿴</td>
          <td>ͼƬ���ϸ�</td>
        </tr>

     <c:forEach items="${list}" var="var">
          <c:if test="${var.type}=1||${var.type}=2"/>
          <tr class="positive">
            <td>${var.id}</td>
            <td><i class="icon checkmark"></i>��ͨ��</td>
            <td><a href="/OCare/monitor/agree/${var.id}"><i class="icon search"></i>�鿴</a></td>
            <td>��</td>
          </tr>
          <c:if test="${var.type}=4"/>
          <tr class="negative">
            <td>${var.id}</td>
            <td><i class="icon Ban Circle"></i>�Ѿܾ�</td>
            <td><a href="/OCare/monitor/agree/${var.id}"><i class="icon search"></i>�鿴</a></td>
            <td>��</td>
          </tr>
          <c:if test="${var.type}=3"/>
          <tr>
            <td>${var.id}</td>
            <td><i class="icon Ban Circle"></i>�����</td>
            <td><a href="/OCare/monitor/agree/${var.id}"><i class="icon search"></i>�鿴</a></td>
            <td>��</td>
          </tr>
        </c:forEach>
      </tbody>
   </table>
</div>

<%@include file="templates/footer.jsp"%>