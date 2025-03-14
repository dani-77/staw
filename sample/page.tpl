<!doctype html>
<html>
<head> 
	<title>{{.Title}} | {{.SiteTitle}}</title>
	<link rel="stylesheet" type="text/css" href="/style.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8"> 
</head> 
<link rel="icon" type="image/png" href="/favicon.png"/>
<body>
	<div id="menu">
{{if eq .Site "d77void.sourceforge.io"}}
		<a class="thisSite" href="//d77void.sourceforge.io/">Home</a>
{{else}}
		<a href="//d77void.sourceforge.io/">Home</a>
{{end}}
{{if eq .Site "dani-77.github.io"}}
		<a class="thisSite" href="//dani-77.github.io/">Personal Page</a>
{{else}}
		<a href="//dani-77.github.io/">Personal Page</a>
{{end}}
	</div>
	<div id="header"><span class="siteTitle">{{.SiteTitle}}</span></div>

	<div id="content">
	{{if .Items}}
	<div id="nav">
		<ul>
			{{range .Items}}
			{{template "submenu" .}}
			{{end}}
			<li><a href="" class="empty"></a></li>
	</div>
	{{end}}
	<div id="main">
	{{.HtmlContent}}
	</div>

	</div>
	<div id="footer">
	<small><a href="https://github.com/garbeam/staw">staw powered</a> &copy; 2025</small>

	</div>
	</div>
</body>
</html>

{{/* recursive (sub-)menu */}}
{{define "submenu"}}
	{{if .Sel}}
		{{if .Items}}
		<li><a href="/{{.Path}}" class="thisPath">{{.Name}}</a>
		{{else}}
		<li><a href="/{{.Path}}" class="thisPage">{{.Name}}</a>
		{{end}}
	{{else}}
	<li><a href="/{{.Path}}" class="normal">{{.Name}}</a>
	{{end}}
		{{if .Items}}
			<ul>
				{{range .Items}}
				{{template "submenu" .}}
				{{end}}
			</ul>
		{{end}}
	</li>

{{end}}
