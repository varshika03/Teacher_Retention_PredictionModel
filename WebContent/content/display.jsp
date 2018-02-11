<!Doctype HTML>
<html>
<head>
<style>
.list-type5{
width:410px;
margin:0 auto;
padding-top: 70px;
}
.list-type5 ol {
list-style-type: none;
list-style-type: decimal !ie; /*IE 7- hack*/
margin: 0;
margin-left: 1em;
padding: 0;
counter-reset: li-counter;
}
.list-type5 ol li{
position: relative;
margin-bottom: 1.5em;
padding: 0.5em;
background-color: #F0D756;
padding-left: 58px;
}

.list-type5 a{
text-decoration:none;
color:black;
font-size:15px;
/*font-family: 'Raleway', sans-serif;*/
}

.list-type5 li:hover{
box-shadow:inset -1em 0 #6CD6CC;
-webkit-transition: box-shadow 0.5s; /* For Safari 3.1 to 6.0 */
transition: box-shadow 0.5s;
}

.list-type5 ol li:before {
position: absolute;
top: -0.3em;
left: -0.5em;
width: 1.8em;
height: 1.2em;
font-size: 2em;
line-height: 1.2;
font-weight: bold;
text-align: center;
color: white;
background-color: #6CD6CC;
transform: rotate(-20deg);
-ms-transform: rotate(-20deg);
-webkit-transform: rotate(-20deg);
z-index: 99;
overflow: hidden;
content: counter(li-counter);
counter-increment: li-counter;
}
h1
{text-align:center;
	color: rgb(200,200,200);
}
body
{
	background-image: url(background.jpg);
	font-family: Palatino Linotype;
}
li
{
	box-shadow: 0 0 5px 10px #222;
}
</style>
</head>
<body>
<h1> Replacement Recommendation</h1>
<div class="list-type5">
<ol>
<li><a href="#">Teacher Name: Sakshi <br /> 
email:sakshidagar12@gmail.com<br/>
Age:49<br />
Gender:F<br/>
post:Academic</a></li>
<li><a href="#">Teacher Name: Ridhima Bhatnagar <br /> 
email:ridhima79@gmail.com<br/>
Age:25<br />
Gender:F<br/>
post:Academic</a></li>
<li><a href="#">Teacher Name: Swaraj Modi <br /> 
email:swaraj79@gmail.com<br/>
Age:33<br />
Gender:M<br/>
post:Non academic</a></li>
<li><a href="#">Teacher Name: Varshika Gambhir <br /> 
email:vini@gmail.com<br/>
Age:27<br />
Gender:F<br/>
post:Academic</a></li>
</ol>
</div>
</body>
</html>