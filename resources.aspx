<head>
        <link rel="StyleSheet" type="text/css" href="StyleSheet2.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   </head>

<html>
    <body>
        <form id="form1" runat="server">
    <style>
        
        .formclass 
        {
            padding:20px;
            margin:0px auto;
            background:#f00;
            width:200px;
        }
        h2
        {
            text-align:center;
        }
        .input
        {
            padding:4px;
            width:100%;
        }
        .facebook {
           position:fixed;
           margin-left:30px;
            width: 41px;
            height: 35px;
            text-align:right;
            top: 157px;
            left: 22px;
        }
        .twitter {
             position:fixed;
           margin-left:53px;
            width: 34px;
            height: 34px;
            text-align:right;
            top: 195px;
            left: 5px;
        }
        .google {
            position:fixed;
            margin-left:300px;
            width: 35px;
            height: 33px;
            text-align:right;
            top: 126px;
            left: -245px;
        }
        #myInput {
    background-image: url('/css/searchicon.png'); /* Add a search icon to input */
    background-position: 10px 12px; /* Position the search icon */
    background-repeat: no-repeat; /* Do not repeat the icon image */
    width: 100%; /* Full-width */
    font-size: 16px; /* Increase font-size */
    padding: 12px 20px 12px 40px; /* Add some padding */
    border: 1px solid #ddd; /* Add a grey border */
    margin-bottom: 12px; /* Add some space below the input */
}

#myTable {
    border-collapse: collapse; /* Collapse borders */
    width: 100%; /* Full-width */
    border: 1px solid #ddd; /* Add a grey border */
    font-size: 18px; /* Increase font-size */
}

#myTable th, #myTable td {
    text-align: left; /* Left-align text */
    padding: 12px; /* Add padding */
}

#myTable tr {
    /* Add a bottom border to all table rows */
    border-bottom: 1px solid #ddd; 
}

#myTable tr.header, #myTable tr:hover {
    /* Add a grey background color to the table header and on hover */
    background-color: #f1f1f1;
}
        

  </style>      
        



    

         <header class="jhn">
		<nav>
			<h1>Hardware Acceleration Club of KUET</h1>
			<ul id="nav">
				<li><a class="homered" href="http://localhost:10872/">HOME</a></li>
				<li><a class="homeblack" href="http://localhost:10872/about.aspx">ABOUT</a>
					<ul>
						<li><a href="http://localhost:10872/info.aspx">info</a></li>
						<li><a>members</a></li>
						<li><a href="http://localhost:10872/picture.aspx">innovation </a></li>
						<li><a href="http://localhost:10872/resources.aspx">resources</a></li>
					</ul>
				</li>
				<li><a class="homeblack" href="#">ONLINEORDER</a></li>
				<li><a class="homeblack" href="http://localhost:10872/loginpage.aspx">Login</a></li>
                <li><a class="homeblack" href="http://localhost:10872/feedback.aspx">FeedBack</a></li>
               
                
                 
			</ul>
              
          </nav>
         
    </header>
         <div class="divider"></div>
 </form>
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">

<table id="myTable">
  <tr class="header">
    <th style="width:40%;">Name</th>
    <th style="width:20%;">type</th>
      <th style="width:40%;">modified</th>
  </tr>
  <tr>
    <td><a href="https://lookaside.fbsbx.com/file/linefollower.pdf?token=AWxj6cs2GBuhid8VL7cfDTIB5J6WOgZQEHNPp_95ZWHPz9e5COuoJDFRdr-SH-8XYLAHt2AM5x3eILjvMfZoEccbP12-1UHIO9vYWM2d2-to3DPuaDRNKqDf0UtuDQyr-zM2vODdGCwWl3s_zbMvnxWkKZWsWt_B7AXMvO7Uv9Jxqg"></a>linefollower</td>
    <td>PDF</td>
      <td>Manash Mondal</td>
  </tr>
  <tr>
    <td>Video link of HACK</td>
    <td>Doc</td>
      <td>Mehrab</td>
  </tr>
  <tr>
    <td>Displaying clock on 2*16 LCD</td>
    <td>Doc</td>
      <td>Hasan Shamim Shaon</td>
  </tr>
  <tr>
    <td>RTC initialization</td>
    <td>Doc</td>
    <td>Krishna chandra Dash</td>
  </tr>
    <tr>
    <td>Code for digital voltmeter</td>
    <td>Doc</td>
    <td>Mehrab</td>
  </tr>
</table>


        <script>
            function myFunction() {
                // Declare variables 
                var input, filter, table, tr, td, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");

                // Loop through all table rows, and hide those who don't match the search query
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    if (td) {
                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
</script>
           
    </body>
</html>
