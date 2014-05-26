// ajax ��� ���� (ajax.js)
var httpRequest = null;

function getXMLHttpRequest(){
   if(window.ActiveXObject){
      try{
         return new ActiveXObject("MSXML2.XMLHTTP");
      }
      catch(e){
         return new ActiveXObject("Microsoft.XMLHTTP");
      }
   }
   else if(window.XMLHttpRequest){
      return new XMLHttpRequest();
   }
   else{
      return null;
   }
}

function sendRequest(url, params, callback, method){
   httpRequest = getXMLHttpRequest();
   
   var httpMethod = method ? method : "GET";
   if(httpMethod != "GET" && httpMethod != "POST"){
      httpMethod = "GET";
   }
   
   var httpParams = (params == null || params == "") ? null : params;
   
   var httpUrl = url;
   if(httpMethod == "GET" && httpParams != null){
      httpUrl = httpUrl + "?" + httpParams;
   }
   
   httpRequest.open(httpMethod, httpUrl, true);
   httpRequest.setRequestHeader("Content-Type", "applicaiton/x-www-form-urlencoded");
   httpRequest.onreadystatechange = callback;
   //alert(httpParams);
   httpRequest.send(httpMethod == "POST" ? httpParams : null);   
}
