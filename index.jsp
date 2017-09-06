<%@ page import="com.esotericsoftware.yamlbeans.YamlWriter" %>
<%@ page import="notmycupofcoffee.Contact" %>
<%@ page import="java.io.FileWriter" %>


<html>
  Hello
  <% System.out.println(1); %>
  <%= 1 %>

  <%
    Contact c = new Contact();
    c.name = "Leon";

    YamlWriter yw = new YamlWriter(new FileWriter("contact.yml"));
    yw.write(c);
    yw.close();

    %>
</html>
