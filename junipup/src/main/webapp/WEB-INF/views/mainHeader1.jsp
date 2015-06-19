<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,800,800italic,400italic|Adamina' rel='stylesheet' type='text/css'>
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
		<link href="css/menu1.css" rel="stylesheet" type="text/css">	
		<script type="text/javascript" src="js/custom1.js"></script>
		<!--[if IE 7]><link rel="stylesheet" href="path/to/font-awesome/css/font-awesome-ie7.min.css"><![endif]-->
		<title>Card Stack</title>
	</head>
	<body>
	<div align="center">
		<a href="#"><img src="images/logo.jpg" width="212px"></a>
	</div>
	<div class="navbar">
	<a class="brand" href="#"><img src="https://socialchomp.com/img/banner.logo.png"/></a>
	<!--MOBILE-->
	<div class="navbar-mobile hidden-desktop">	
		<ul class="	nav">
		<li class="mobile-dropdown"><i class="icon-reorder"></i>	
			<div class="mobile-menu">
				<div class="menu-wrapper">
					<ul class="mobile-nav">
						               <li><a href="/myProfile">Home</a></li>
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Add Profile<span class="icon-angle-down"></span></a>
			<ul class="dropdown-menu">
				<li><a href="/twitter/oauth">Twitter</a></li>
				<li><a href="/facebook/oauth">Facebook</a></li>
				<li><a href="/googleplus/oauth">Google Plus</a></li>
				<li><a href="/instagram/oauth">Instagram</a></li>
			</ul>
              </li>
            
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Create<span class="icon-angle-down"></span></a>
			<ul class="dropdown-menu">
				<li><a href="/createStream">Create Stream</a></li>
				<li><a href="/createAlbum">Create Album</a></li>
				<li><a href="/createGroup">Create Group</a></li>
			</ul>
		</li>
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">View<span class="icon-angle-down"></span></a>
			<ul class="dropdown-menu">
				<li><a href="/viewStreams">View Streams</a></li>
				<li><a href="/viewAlbums">View Albums</a></li>
				<li><a href="/viewGroups">View Groups</a></li>
			</ul>
		</li>
		<li class="item"><a href="/schedule">Schedule</a></li>
					</ul>
				</div>
			</div>
		</li>
		<li class="search">
				<form class="navbar-search" _lpchecked="1"><input type="search" class="search-query typeahead" data-provide="typeahead" placeholder="Search"></form>
				<a class="icon-search"></a>
		</li>
		<li class="admin mobile-dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-user"></i> Mark Campbell <span class="icon-angle-down"></span></a>
			<div class="mobile-admin">
				<div class="admin-wrapper">
					<ul class="mobile-nav">
						<li><a href="/myProfile">Profile</a></li>
						<li><a href="/createEmail">Create Mass Email</a></li>
						<li><a href="/adminDashboard">Admin Dashboard</a></li>
						<li><a href="/manageUsers">Manage Users</a></li>
						<li><a href="/manageEvents">Manage Streams</a></li>
						<li><a href="/manageAlbums">Manage Albums</a></li>
						<li><a href="/manageLocations">Manage Locations</a></li>
						<li><a href="/manageSchedules">Manage Schedules</a></li>
						<li><a href="/manageRoles">Manage Roles</a></li>
						<li><a href="/managePermissions">Manage Permissions</a></li>
						<li><a href="/managePermissionsRoles">Manage Permissions/Roles</a></li>
						<li><a href="/changepassword">Change Password</a></li>
						<li><a href="/logout">Log Out</a></li>
					</ul>
				</div>
			</div>
		</li>
		</ul>
	</div>
	<!--MOBILE-->
	<div class="navbar-inner visible-desktop">
		<ul class="nav">
               <li><a href="/myProfile">Home</a></li>
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Add Profile<span class="icon-angle-down"></span></a>
			<ul class="dropdown-menu">
				<li><a href="/twitter/oauth">Twitter</a></li>
				<li><a href="/facebook/oauth">Facebook</a></li>
				<li><a href="/googleplus/oauth">Google Plus</a></li>
				<li><a href="/instagram/oauth">Instagram</a></li>
			</ul>
              </li>
            
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Create<span class="icon-angle-down"></span></a>
			<ul class="dropdown-menu">
				<li><a href="/createStream">Create Stream</a></li>
				<li><a href="/createAlbum">Create Album</a></li>
				<li><a href="/createGroup">Create Group</a></li>
			</ul>
		</li>
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">View<span class="icon-angle-down"></span></a>
			<ul class="dropdown-menu">
				<li><a href="/viewStreams">View Streams</a></li>
				<li><a href="/viewAlbums">View Albums</a></li>
				<li><a href="/viewGroups">View Groups</a></li>
			</ul>
		</li>
		<li class="item"><a href="/schedule">Schedule</a></li>
		<li class="search">
				<form class="navbar-search" _lpchecked="1"><input type="search" class="search-query typeahead" data-provide="typeahead" placeholder="Search"></form>
				<a class="icon-search"></a>
		</li>
		<li class="admin">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-user"></i> Mark Campbell <span class="icon-angle-down"></span></a>
			<ul class="dropdown-menu">
				<li><a href="/myProfile">Profile</a></li>
				<li><a href="/createEmail">Create Mass Email</a></li>
				<li><a href="/adminDashboard">Admin Dashboard</a></li>
				<li><a href="/manageUsers">Manage Users</a></li>
				<li><a href="/manageEvents">Manage Streams</a></li>
				<li><a href="/manageAlbums">Manage Albums</a></li>
				<li><a href="/manageLocations">Manage Locations</a></li>
				<li><a href="/manageSchedules">Manage Schedules</a></li>
				<li><a href="/manageRoles">Manage Roles</a></li>
				<li><a href="/managePermissions">Manage Permissions</a></li>
				<li><a href="/managePermissionsRoles">Manage Permissions/Roles</a></li>
				<li><a href="/changepassword">Change Password</a></li>
				<li><a href="/logout">Log Out</a></li>
			</ul>
		</li>
	</ul>

		
	</div>
	</div>
    <p>Work In Progress</p>
	<!--jquery-->
	<script src="http://codeorigin.jquery.com/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="js/navigation.js" type="text/javascript"></script>
</body>
</html>