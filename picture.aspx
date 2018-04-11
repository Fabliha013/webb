<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
    background-color: #808080;
}

/* The grid: Four equal columns that floats next to each other */
.column {
    float: left;
    width: 15%;
    padding: 130px;
}

/* Style the images inside the grid */
.column img {
    opacity: 0.8; 
    cursor: pointer; 
    width:240px;
    height:240px;
}

.column img:hover {
    opacity: 1;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* The expanding image container */
.container {
    position: relative;
    display:none;
   
}

/* Expanding image text */
#imgtext {
    position: absolute;
    bottom: 15px;
    left: 15px;
    color: red;
    font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
    position: absolute;
    top: 10px;
    right: 15px;
    color: white;
    font-size: 35px;
    cursor: pointer;
}
</style>
<div style="text-align:center">
  <h2>Remote Health Monitor</h2>
  <p>Click on the images below:</p>
</div>
<!-- The grid: four columns -->
<div class="row">
  <div class="column">
   <img src="img/205333_3372923237698_1814144014_n.jpg" alt="picture1" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="img/380762_3372933597957_1314018746_n.jpg" alt="picture2" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="img/483268_3372926637783_144175187_n.jpg"  alt="picture3" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="img/600020_3372929357851_1231697583_n.jpg" alt="picture4" onclick="myFunction(this);">
  </div>
</div>

<!-- The expanding image container -->
<div class="container">
  <!-- Close the image -->
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>

  <!-- Expanded image -->
  <img id="expandedImg" style="width:100%">

  <!-- Image text -->
  <div id="imgtext"></div>
</div>
<script>
    function myFunction(imgs) {
        var expandImg = document.getElementById("expandedImg");
        var imgText = document.getElementById("imgtext");
        expandImg.src = imgs.src;
        imgText.innerHTML = imgs.alt;
        expandImg.parentElement.style.display = "block";
    }
</script>

