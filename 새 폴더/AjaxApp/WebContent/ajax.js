//ajax모듈 파일(ajax.js)

var httpRequest = null; 

function getXMLHttpRequest()
{
	if(window.ActiveXObject)
	{
		try
		{
			return new ActiveXObject("MSXML2.XMLHTTP");
		}
		catch(e)
		{
			return new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	else if(window.XMLHttpRequest)
	{
		return new XMLHttpRequest();
	}
	else
	{
		return null;
	}
}

function sendRequest(url, params, callback, method)
{
	httpRequest = getXMLHttpRequest();
	
	
	var httpMethod = (method !=null) ? method : "GET";
	if(httpMethod != "GET" && httpMethod != "POST")
	{
		httpMethod = "GET";
	}
	
	var httpParams = (params == null || params == "") ? null : params; //값이 없으면 null 있으면 params
	
	var httpUrl = url;
	if(httpMethod == "GET" && httpParams != null)
	{
		httpUrl = httpUrl + "?" + httpParams;
	
	}
	
	httpRequest.open(httpMethod, httpUrl, true);
	httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); //써줘야 포스트방식이 됨
	httpRequest.onreadystatechange = callback;
	httpRequest.send(httpMethod == "POST" ? httpParams : null);
}