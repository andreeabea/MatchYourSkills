<!DOCTYPE html>

<html>
<head>
</head>
<body>

	<form action="/add" method="POST">
		<div class="container">
			<h1>Create Person</h1>
			<p>Please complete the form below</p>
			<hr>

			<label for="name"><b>Name</b></label> <input type="text"
				placeholder="Enter Name" name="name" required> <label
				for="email"><b>Email</b></label> <input type="email"
				placeholder="Enter Email" name="email" required>
				for="description"><b>Email</b></label> <input type="description"
                placeholder="Describe yourself: " name="description" required>
			<hr>

			<button type="submit" class="registerbtn">Create</button>

		</div>
	</form>

</body>
</html>