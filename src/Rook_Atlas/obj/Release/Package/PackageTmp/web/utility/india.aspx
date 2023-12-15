<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="india.aspx.cs" Inherits="Rook_Atlas.web.utility.india" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<title>SILICON</title>
</head>

<body>
<style>
body{
    margin:0;
}

* {
    box-sizing: border-box;
}

body {
    display: flex;
    width: 100%;
    height: 100vh;
    justify-content: center;
    align-items: center;
    background: #eee;
}

div {
    width: 400px;
    height: 270px;
    background: white;
    border-top: 90px solid #ff8000;
    border-bottom: 90px solid #008000;
    position: relative;
}


div::before, div::after {
    position: absolute;
    content: '';
    border-radius: 50%;
    left: 0;
    margin-left: auto;
    right: 0;
    margin-right: auto;
    top: 0;
    margin-top: auto;
    bottom: 0;
    margin-bottom: auto;
}

div::before {
    width: 60px;
    height: 60px;
    border: 3px solid #0000ff;
}
  -ms-transform: rotate(60deg);


div::after {
    width: 20px;
    height: 20px;
    background: #0000ff;
}

li {
  display: block;
  width: 58px;
  height: 10px;
  border-width: 4px;
  border-style: solid;
  border-color: #ddd transparent #aaaaaa;
  position: absolute;
  left: 0;
  margin-left: auto;
  right: 0;
  margin-right:auto;
  top: 0;
  margin-top: auto;
  bottom: 0;
  margin-bottom: auto;
}
li:nth-child(2) {
  -moz-transform: rotate(30deg);
  -ms-transform: rotate(30deg);
  -webkit-transform: rotate(30deg);
  transform: rotate(30deg);
  border-color: #0000ff transparent #0000ff;
}
li:nth-child(3) {
  -moz-transform: rotate(60deg);
  -ms-transform: rotate(60deg);
  -webkit-transform: rotate(60deg);
  transform: rotate(60deg);
  border-color: #0000ff transparent #0000ff;
}
li:nth-child(4) {
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  -webkit-transform: rotate(90deg);
  transform: rotate(90deg);
  border-color: #0000ff transparent #0000ff;
}
li:nth-child(5) {
  -moz-transform: rotate(120deg);
  -ms-transform: rotate(120deg);
  -webkit-transform: rotate(120deg);
  transform: rotate(120deg);
  border-color: #0000ff transparent #0000ff;
}
li:nth-child(6) {
  -moz-transform: rotate(150deg);
  -ms-transform: rotate(150deg);
  -webkit-transform: rotate(150deg);
  transform: rotate(150deg);
  border-color: #0000ff transparent #0000ff;
}
li:nth-child(7) {
  -moz-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  -webkit-transform: rotate(180deg);
  transform: rotate(180deg);
  border-color: #0000ff transparent #0000ff;
}
li:nth-child(8) {
  -moz-transform: rotate(210deg);
  -ms-transform: rotate(210deg);
  -webkit-transform: rotate(210deg);
  transform: rotate(210deg);
  border-color: #0000ff transparent #0000ff;
}
</style>
	<div>
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        <section style="font-family:Calibri;
                font-size:22px;
                text-align:center;
                margin-top:55%; 
                color:#221e1e; 
                display:block;">
        </section>
        </div>  
</body>
</html>