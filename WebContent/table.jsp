<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>  

<style type="text/css">
.tcls{display:block;}
</style>
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
    var div1 = document.createElement('td');

    for (i = 0; i < 15; i++) {
    
    
    div1.className="c"+i;
    div1.className="tcls";
    
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

<script>  
var request;  
function sendInfo()  
{  
var v=document.vinform.t1.value;  
var url="ajaxgetdata.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;
var val1=val.split(".");

//document.getElementById('amit').innerHTML=val;  
document.getElementById('partname').value=val1[0];
document.getElementById('partprice').value=val1[1];



}  
}  
  
</script>  
</head>  
<body>  
   <!--  <marquee><h1>This is an example of ajax</h1></marquee>  --> 
<form name="vinform">  
<table>
<tr id="newlink">
    <td valign=top class="feed" style="display: block;">

     <input type="text" placeholder="part  name" id="t1" onkeyup="sendInfo()" name="part" value="" class="mcls" style="width:150px;margin: 0px 75px;">
    <input type="number" placeholder="price"  id="partname" name="price" value="" class="mcls" style="width:150px;margin: 0px 75px;">
       <input type="number" placeholder="qty" id="partprice" name="count" value="" class="mcls"  style="width:150px;margin: 0px 75px;">
    </td>
</tr>

  <tr>
<td colspan="2" align="center">
<div style="margin-top:25px;" align="center">
<input type="submit"  class="btn btn-default" value="Submit">
<input type="reset"  class="btn btn-default" value="Reset">
</div>
</td>
   </tr>
 </table>
  

   
</form>  
 <div id="newlinktpl" style="display:none">
    <td class="feed">
      <input type="text" placeholder="part  name" id="t1" onkeyup="sendInfo()"  name="part" value="" class="mcls" style="width:150px;margin: 0px 75px;">
    <input type="number" placeholder="price"  id="partname"   name="price" value="" class="mcls" style="width:150px;margin: 0px 75px;">
       <input type="number" placeholder="qty" id="partprice"  name="count" value="" class="mcls"  style="width:150px;margin: 0px 75px;">
    
    </td>
</div>
<p id="addnew">
<div align="center">
    <a class="btn btn-info" href="javascript:add_feed()">Add New Part</a>
    <a class="btn btn-danger" href="" onclick="javascript:removeElement(); return false;" >Remove</a>
    </div>
</p>
<span id="amit"> </span>  
  
</body>  
</html>  