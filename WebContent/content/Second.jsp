
<!DOCTYPE html>
<html>
<head>
	<title>Successful Login</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
  <script type="text/javascript">
    setTimeout(function() {
    $('h2').fadeOut('slow');
}, 1000);
  </script>
<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Montserrat+Alternates);

* {
    margin:0;
    padding:0;
    font:12pt Arial;
}

body {
  background-color:#34495e;
}

.field {
  display:flex;
  position:realtive;
  margin:5em auto;
  width:70%;
  flex-direction:row;
  box-shadow:
   1px 1px 0 rgb(22, 160, 133),
   2px 2px 0 rgb(22, 160, 133),
   3px 3px 0 rgb(22, 160, 133),
   4px 4px 0 rgb(22, 160, 133),
   5px 5px 0 rgb(22, 160, 133),
   6px 6px 0 rgb(22, 160, 133),
   7px 7px 0 rgb(22, 160, 133)
  ;
}

.field>input[type=text],
.field>button {
  display:block;
  font:1.2em 'Montserrat Alternates';
}

.field>input[type=text] {
  flex:1;
  padding:0.6em;
  border:0.2em solid rgb(26, 188, 156);
}

.field>button {
  padding:0.6em 0.8em;
  background-color:rgb(26, 188, 156);
  color:white;
  border:none;

}
a{
color:white;
 font:12pt Arial
}
</style>
</head>
<body>


<div class="field" id="searchform">
<form method="post" action="../home">
<input type="hidden" name="pageName" value="Second">
  <input type="text" id="searchterm" name="code"  placeholder="Please Enter the Teacher Code to predict her likelyhood to leave the school" />
  <button type="submit" id="search">Go!</button>
  </form>
</div>
<div class="field">
	<button ><a href="Third.jsp" value="Teacher Application" >Teacher Applicant Data Upload</a></button>
</div>


<script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>

</body>
</html>