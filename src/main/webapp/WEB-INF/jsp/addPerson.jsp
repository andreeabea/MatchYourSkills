<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<form action="/addp" method="POST">
		<div class="container">
			<h1>Person register</h1>
			<p>Please complete the form below</p>
			<hr>

			<label for="name"><b>Name</b></label> <input type="text"
				placeholder="Enter Name" name="name" required></br>
			<label for="email"><b>Email</b></label> <input type="email"
				placeholder="Enter Email" name="email" required></br>
			<label for="description"><b>Description</b></label> <input type="description"
                placeholder="Describe yourself" name="description" required></br>
            <label for="image"><b>Image</b></label>
            <div style="height:0px;overflow:hidden"><input type="file" id="fileInput" name="fileInput" />
            </div><button type="button" onclick="chooseFile();">Choose file</button>
            <script>
               function chooseFile() {
                  document.getElementById("fileInput").click();
               }
            </script>

            <label for="phone"><b>Phone number</b></label> <input
                        type="phone" pattern="+[0-9]{11}"
                        placeholder="Enter Telephone Number (e.g. +40123456789)"
                        name="phone" required>
			<hr>

			<button type="submit" class="registerbtn">Create</button>

		</div>
	</form>

</body>
</html>