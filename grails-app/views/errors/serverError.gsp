<html>
  <head>
	  <title>OpenThesaurus Fehler</title>
	  <style type="text/css">
	  		.message {
	  			border: 1px solid black;
	  			padding: 5px;
	  			background-color:#E9E9E9;
	  		}
	  		.stack {
	  			border: 1px solid black;
	  			padding: 5px;	  		
	  			overflow:auto;
	  			height: 300px;
	  		}
	  		.snippet {
	  			padding: 5px;
	  			background-color:white;
	  			border:1px solid black;
	  			margin:3px;
	  			font-family:courier,serif;
	  		}
	  </style>
  </head>
  
  <body>

    <h1>OpenThesaurus Server-Fehler</h1>

    <p>Es ist etwas schiefgegangen - bitte versuch es in ein paar Minuten nochmal neu. Wenn es dann noch
    nicht geht, bitte kontaktiere uns unter feedback <span>at</span> openthesaurus.de unter
    Angabe der Fehlermeldung und dieses Zeitstempels: ${new Date()}</p>
    
    <p><strong>Fehlermeldung:</strong> ${exception.message?.encodeAsHTML()}</p>

    <%--
    <h1>xxxGrails Runtime Exception</h1>

    <h2>Error Details</h2>
  	<div class="message">
  		<strong>Message:</strong> ${exception.message?.encodeAsHTML()} <br />
  		<strong>Caused by:</strong> ${exception.cause?.message?.encodeAsHTML()} <br />
  		<strong>Class:</strong> ${exception.className} <br />  		  		
  		<strong>At Line:</strong> [${exception.lineNumber}] <br />  		
  		<strong>Code Snippet:</strong><br />   		
  		<div class="snippet">
  			<g:each var="cs" in="${exception.codeSnippet}"> 
  				${cs?.encodeAsHTML()}<br />  			
  			</g:each>  	
  		</div>	  		
  	</div>
    <h2>Stack Trace</h2>
    <div class="stack">
      <pre><g:each in="${exception.stackTraceLines}">${it.encodeAsHTML()}<br/></g:each></pre>
    </div>
    --%>
    
  </body>
</html>