<html>
<head>
<script language="Javascript">
function swapConfig(x) {
	  var radioName = document.getElementsByName(x.name);
	  for (i = 0; i < radioName.length; i++) {
	    document.getElementById(radioName[i].id.concat("Settings")).style.display = "none";
	  }
	  document.getElementById(x.id.concat("Settings")).style.display = "initial";
	}
</script>
</head>
<body>Show : 
<fieldset>
  <legend>Url and Domain Configuration</legend>
  <p>
    <label for="production">Production</label>
    <input type="radio" onchange="swapConfig(this)" name="urlOptions" id="production" checked="checked" />
    <label for="development">Development</label>
    <input type="radio" onchange="swapConfig(this)" name="urlOptions" id="development" />
  </p>
  <div id="productionSettings">
    <br/>Production Settings
    <p>
      <label for="p1">Production1</label>
      <input type="text" name="p1" value="/">
    </p>
  </div>
  <div id="developmentSettings" style="display:none">
    <br/>Development Settings
    <p>
      <label for="d1">Developent1</label>
      <input type="text" name="d1" value="/">
    </p>
  </div>
</fieldset>
</body>
</html>