<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
      <%@page import= " org.part.javaApp.PartDAO, org.part.javaApp.Part,java.util.*"%>
<html>
<style>
  .mcls {display:block; margin:5px; width: 200px;}
</style>
<body>
<form method="post" action="Exam.jsp" >
<table>
<tr>
    <td valign=top>
        <div id="newlink">
            <div class="feed">
               <input type="text" placeholder="part  name"  name="part" value="" class="mcls" size="50">
               <input type="text" placeholder="price"   name="price" value="" class="mcls" size="50">
               <input type="text" placeholder="qty"   name="count" value="" class="mcls" size="50">
            </div>
        </div>
    </td>
</tr>
</table>
    <p>
        <br>
        <input type="submit" name="submit1">
        <input type="reset" name="reset1">
    </p>
<p id="addnew">
    <a href="javascript:add_feed()">Add New </a>
    <a href="" onclick="javascript:removeElement(); return false;" >Remove</a>
</p>
</form>
<!-- Template. This whole data will be added directly to working form above -->
<div id="newlinktpl" style="display:none">
    <div class="feed">
     <input type="text" name="part" placeholder="part  name" value="" class="mcls"  size="50">
     <input type="text" name="price" placeholder="price" value="" class="mcls"  size="50">
     <input type="text" placeholder="qty"   name="count" value="" class="mcls" size="50">
    
    </div>
</div>
<script type="text/javascript">
function validate(frm)
{
    var ele = frm.elements['feedurl[]'];
    if (! ele.length)
    {
        alert(ele.value);
    }
    for(var i=0; i<ele.length; i++)
    {
        alert(ele[i].value);
    }
    return true;
}
function add_feed()
{    
    var i;
    var div1 = document.createElement('div');

    for (i = 0; i < 15; i++) {
    
    
    div1.className="c"+i;
    
    // Get template data
    div1.innerHTML = document.getElementById('newlinktpl').innerHTML;
    // append to our form, so that template data
    //become part of form
    document.getElementById('newlink').appendChild(div1);
    }
}

function removeElement(elementId) {
   // Removes an element from the document
   var element = document.getElementById(elementId);
   element.parentNode.removeChild(element);
}
</script>
</body>
</html>