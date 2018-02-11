
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Responsive Table + Detail View</title>
  
  <link type=text/css rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


      <style type="text/css">
       {
  box-sizing: border-box;
}

html.open, body.open {
  height: 100%;
  overflow: hidden;
}

html {
  padding: 40px;
  font-size: 62.5%;
}

body {
  padding: 20px;
  background-color: #5BB9B8;
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
  color: #fff;
  font-size: 1.6rem;
  font-family: 'Lato', sans-serif;
}

p {
  text-align: center;
  margin: 20px 0 60px;
}

main {
  background-color: #2C3845;
}

h1 {
  text-align: center;
  font-weight: 300;
}

table {
  display: block;
}

tr, td, tbody, tfoot {
  display: block;
}

thead {
  display: none;
}

tr {
  padding-bottom: 10px;
}

td {
  padding: 10px 10px 0;
  text-align: center;
}
td:before {
  content: attr(data-title);
  color: #7a91aa;
  text-transform: uppercase;
  font-size: 1.4rem;
  padding-right: 10px;
  display: block;
}

table {
  width: 100%;
}

th {
  text-align: left;
  font-weight: 700;
}

thead th {
  background-color: #202932;
  color: #fff;
  border: 1px solid #202932;
}

tfoot th {
  display: block;
  padding: 10px;
  text-align: center;
  color: #b8c4d2;
}

.button {
  line-height: 1;
  display: inline-block;
  font-size: 1.2rem;
  text-decoration: none;
  border-radius: 5px;
  color: #fff;
  padding: 8px;
  background-color: #4b908f;
}

.select {
  padding-bottom: 20px;
  border-bottom: 1px solid #28333f;
}
.select:before {
  display: none;
}

.detail {
  background-color: #BD2A4E;
  width: 100%;
  height: 100%;
  padding: 40px 0;
  position: fixed;
  top: 0;
  left: 0;
  overflow: auto;
  -moz-transform: translateX(-100%);
  -ms-transform: translateX(-100%);
  -webkit-transform: translateX(-100%);
  transform: translateX(-100%);
  -moz-transition: -moz-transform 0.3s ease-out;
  -o-transition: -o-transform 0.3s ease-out;
  -webkit-transition: -webkit-transform 0.3s ease-out;
  transition: transform 0.3s ease-out;
}
.detail.open {
  -moz-transform: translateX(0);
  -ms-transform: translateX(0);
  -webkit-transform: translateX(0);
  transform: translateX(0);
}

.detail-container {
  margin: 0 auto;
  padding: 40px;
  max-width: 500px;
}

dl {
  margin: 0;
  padding: 0;
}

dt {
  font-size: 2.2rem;
  font-weight: 300;
}

dd {
  margin: 0 0 40px 0;
  font-size: 1.8rem;
  padding-bottom: 5px;
  border-bottom: 1px solid #ac2647;
  box-shadow: 0 1px 0 #c52c51;
}

.close {
  background: none;
  padding: 18px;
  color: #fff;
  font-weight: 300;
  border: 1px solid rgba(255, 255, 255, 0.4);
  border-radius: 4px;
  line-height: 1;
  font-size: 1.8rem;
  position: fixed;
  right: 40px;
  top: 20px;
  -moz-transition: border 0.3s linear;
  -o-transition: border 0.3s linear;
  -webkit-transition: border 0.3s linear;
  transition: border 0.3s linear;
}
.close:hover, .close:focus {
  background-color: #a82545;
  border: 1px solid #a82545;
}

@media (min-width: 460px) {
  td {
    text-align: left;
  }
  td:before {
    display: inline-block;
    text-align: right;
    width: 140px;
  }

  .select {
    padding-left: 160px;
  }
}
@media (min-width: 720px) {
  table {
    display: table;
  }

  tr {
    display: table-row;
  }

  td, th {
    display: table-cell;
  }

  tbody {
    display: table-row-group;
  }

  thead {
    display: table-header-group;
  }

  tfoot {
    display: table-footer-group;
  }

  td {
    border: 1px solid #28333f;
  }
  td:before {
    display: none;
  }

  td, th {
    padding: 10px;
  }

  tr:nth-child(2n+2) td {
    background-color: #242e39;
  }

  tfoot th {
    display: table-cell;
  }

  .select {
    padding: 10px;
  }
}
      
      
      </style>

  <script type=text/javascript src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script type=text/javascript  src="./js/index.js"></script>
    <script	type=text/javascript>
    $('.button, .close').on('click', function(e) {
    	  e.preventDefault();
    	  $('.detail, html, body').toggleClass('open');
    	});
    </script>
</head>

<body>
<main>
 <input type="hidden" name="pageName" value="New">
  <table>
    
      <tr>
        <th>
          Teacher Code
        </th>
        <td id="one">
        	${listing[0]}
        </td> 
       </tr>
      <tr>
        <th>
          Name
        </th>
        <td>
        	${listing[1]}
        </td> 
       </tr>
      <tr>
        <th>
          Age
        </th>
        <td>
        	${listing[2]}
        </td> 
       </tr>
        <tr>
        <th>
          Experience
        </th>
        <td>
        	${listing[3]}
        </td> 
       </tr>
       <tr>
        <th>
          Qualification
        </th>
        <td>
        	${listing[4]}
        </td> 
       </tr>
       <tr>
        <th>
          Subjects
        </th>
        <td>
        	${listing[5]}
        </td> 
       </tr>
       <tr>
        <th>
          Gender
        </th>
        <td>
        	${listing[6]}
        </td> 
       </tr>
       <tr>
        <th>
          Marital Status
        </th>
        <td>
        	${listing[7]}
        </td> 
       </tr>
       <tr>
        <th>
          Salary
        </th>
        <td>
        	${listing[8]}
        </td> 
       </tr>
       <tr>
        <th>
          Attendance
        </th>
        <td>
        	${listing[9]}
        </td> 
       </tr>
       <tr>
        <th>
          Work Satisfaction
        </th>
        <td>
        	${listing[10]}
        </td> 
       </tr>
       <tr>
        <th>
          Number of Migrations
        </th>
        <td>
        	${listing[11]}
        </td> 
       </tr>
       <tr>
        <th>
          Likelihood to leave: Decision Tree (Accuracy: 81%)
        </th>
        <td>
        	${listing[12]}
        </td> 
       </tr>
       <tr>
        <th>
          Likelihood to leave: MultiClass Logistic Regression (Accuracy: 37%)
        </th>
        <td>
        	${listing[13]}
        </td> 
       </tr>
        <tr>
        <th>
          Likelihood to leave: SVM Kernel-Linear(Accuracy: 58%)
        </th>
        <td>
        	${listing[14]}
        </td> 
       </tr>
        <tr>
        <th>
          Likelihood to leave: SVM Kernel-Poly(Accuracy: 59%)
        </th>
        <td>
        	${listing[15]}
        </td> 
       </tr>
               <tr>
        <th>
          Likelihood to leave: Random Forest(Accuracy: 80%)
        </th>
        <td>
        	${listing[16]}
        </td> 
       </tr>
       
       
        <tr>
        <th>
          Likelihood to leave: Random Forest(Accuracy: 80%)
        </th>
        <td>
        	${listing[16]}
        </td> 
       </tr>
       
        <tr>
        <th>
          Weighted Mean: 
        </th>
        <td>
        	${listing[17]}
        </td> 
       </tr>

 </table>
 <ul>
<li> Gender: 0 for male 1 for female</li>
<li>Qualification: 1 nursery 2: ba in co curricular
3: ba+b.ed(professional)
4: msc</li>
<li>Subjects: 
0: academic
1: non academic
</li><li>Gender:
0: male
1: female</li><li>
Marital status:
1: married
0: unmarried</li>
<li>
Salary
#zero=[20,25,30,35]
	#first=[35,40,45,50]
	#second=[50,55,60]
	</li>
	<li>

Attendance:
1:60-70
2:70-80
3:80-90
4:90+
</li>
<br>
<br>

 
 </h3>
 <input type="hidden" name="pageName" value="New">
 <button style="background-color:green;">
 <a href="content/display.jsp" class="btn btn-success btn-lg" role="button" style="color:white;">To Find New Prospective Applicants</a>
  </button>
 </form>
</main>
  <!-- <script type="text/javascript">
  var s=${listing[12]};
  if(parseInt(s)>=70)
	  {
	  $(button).css("display","visible");
	  }
  console.log(s);
	  </script>-->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
</html>
