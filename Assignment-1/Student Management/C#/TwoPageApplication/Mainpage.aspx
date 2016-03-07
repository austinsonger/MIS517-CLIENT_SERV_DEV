<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="StudentManagementSystem.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Management System</title>
    <link href="Styles/Bootstap.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="~/Scripts/jquery-1.7.1.js"></script>
     <script type="text/javascript">
/*
    //Load the students in the List and displays when the documnet is loaded
    $(document).ready(function () {
        jQuery.support.cors = true;
        $.ajax({
            url: '/api/student',
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                WriteResponses(data);
            },
            error: function (x, y, z) {
                alert(x + '\n' + y + '\n' + z);
            }
        }); */

        //Displays in a Table
        function WriteResponses(students) {
            var strResult = "<table><th>First Name</th><th>Last Name</th><th>Student ID</th><th>Gender</th><th>Email</th><th>Phone</th><th>Major</th><th>Username</th>";
            $.each(students, function (index, student) {
                strResult += "<tr><td>" + student.firstname + "</td><td> " + student.lastname + "</td><td> " + student.id + "</td><td>" + student.gender + "</td><td>" + student.email + "</td><tr>" + student.phone + "</td><tr>" + student.major + "</td><tr>" + student.username + "</td></tr>";
            });
            strResult += "</table>";
            $("#divResult").html(strResult);
        }

    });

         /*
    //Get a Particular Student based on ID
    function GetStudent() {
        jQuery.support.cors = true;
        $.ajax({
            url: 'http://localhost:54216/api/student/' + document.getElementById('studentId').value,
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                WriteResponse(data);
            },
            error: function (x, y, z) {
                alert('The Student not found in the List for the given ID');
            }
        });  */

        function WriteResponse(student) {
            document.getElementById('firstname').innerHTML = "<h6>" + student.firstname + "</h3>";
            document.getElementById('lastname').innerHTML = "<h6>" + student.lastname + "</h3>";
            document.getElementById('id').innerHTML = "<h6>" + student.id + "</h3>";
            document.getElementById('gender').innerHTML = "<h6>" + student.gender + "</h3>";
            document.getElementById('email').innerHTML = "<h6>" + student.email + "</h3>";
            document.getElementById('phone').innerHTML = "<h6>" + student.phone + "</h3>";
            document.getElementById('major').innerHTML = "<h6>" + student.major + "</h3>";
            document.getElementById('username').innerHTML = "<h6>" + student.username + "</h3>";
        }
    

    //Adds a Student to the List
    function AddStudent() {
        var student = {
            firstname: document.getElementById('newStudentFirstName').value,
            lastname: document.getElementById('newStudentLastName').value,
            id: document.getElementById('newStudentId').value,
            gender: document.getElementById('newStudentGender').value,
            email: document.getElementById('newStudentEmail').value,
            phone: document.getElementById('newStudentPhone').value,
            major: document.getElementById('newStudentMajor').value,
            username: document.getElementById('newStudentUsername').value
        };
        /*
        $.ajax({
            url: 'http://localhost:54216/api/student/',
            type: 'POST',
            data: JSON.stringify(student),
            contentType: "application/json;charset=utf-8",
            success: function (data) {
                alert('Student added Successfully');
                GetAllStudents();
            },
            error: function () {
                alert('Student not Added');
            }
        });
    } */

    //Updates the student Details in the List
        function PutStudent() {
            var student = {
                firstname: document.getElementById('newStudentFirstName').value,
                lastname: document.getElementById('newStudentLastName').value,
                id: document.getElementById('newStudentId').value,
                gender: document.getElementById('newStudentGender').value,
                email: document.getElementById('newStudentEmail').value,
                phone: document.getElementById('newStudentPhone').value,
                major: document.getElementById('newStudentMajor').value,
                username: document.getElementById('newStudentUsername').value
            };
            /*
            $.ajax({
                url: 'http://localhost:54216/api/student/' + document.getElementById('newStudentId').value,
                type: 'PUT',
                data: JSON.stringify(student),
                contentType: "application/json;charset=utf-8",
                success: function (data) {
                    alert('Details Updated Successfully');
                    GetAllStudents();
                },
                error: function () {
                    alert('Unable to Update for the Given ID');
                }
            });
        }  
    
        function GetAllStudents() {
            jQuery.support.cors = true;
            $.ajax({
                url: 'http://localhost:54216/api/student',
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    WriteResponses(data);
                },
                error: function (x, y, z) {
                    alert(x + '\n' + y + '\n' + z);
                }
            });   */

            //Displays in a Table
            function WriteResponses(students) {
                var strResult = "<table><th>First Name</th><th>Last Name</th><th>Student ID</th><th>Gender</th><th>Email</th><th>Phone</th><th>Major</th><th>Username</th>";
                $.each(students, function (index, student) {
                    strResult += "<tr><td>" + student.firstname + "</td><td> " + student.lastname + "</td><td> " + student.id + "</td><td>" + student.gender + "</td><td>" + student.email + "</td><tr>" + student.phone + "</td><tr>" + student.major + "</td><tr>" + student.username + "</td></tr>";
                });
                strResult += "</table>";
                $("#divResult").html(strResult);
            }}


     
</script> 
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <div class="container">
<div class="row">

</div>
    </div>
    <div class="container">

      <div class="starter-template">
<form id="form1" runat="server">
    <br /></br>
<h3 style="color: #f00">List of students </h3>
<div id="divResult" style="margin-left: 15px"></div>
<div align="center">
    <h3 style="color: #f00">Get a Student </h3>
</div>
<div align="center" style="margin-left: 15px">
      
    <h3>Enter the Student ID:</h3>
    <input id="studentId" type="text" />
    <button id="GetStudent" onclick="GetStudent()">Get Student</button>

</></div>
    <br />
<div class="col-md-6">
<div style="margin-left: 15px">
    <table class="table">
        <tr>
            <td>
                <h6>First Name</h6>
            </td>
            <td><span id="firstname"></span></td>
        </tr>
        <tr>
            <td>
                <h6>Last Name</h6>
            </td>
            <td><span id="lastname"></span></td>
        </tr>
        <tr>
            <td>
                <h6>ID</h6>
            </td>
            <td><span id="id"></span></td>
        </tr>
        <tr>
            <td>
                <h6>Gender</h6>
            </td>
            <td><span id="gender"></span></td>
        </tr>
        <tr>
            <td>
                <h6>Email</h6>
            </td>
            <td><span id="email"></span></td>
        </tr>
        <tr>
            <td>
                <h6>Phone</h6>
            </td>
            <td><span id="phone"></span></td>
        </tr>
        <tr>
            <td>
                <h6>Major</h6>
            </td>
            <td><span id="major"></span></td>
        </tr>
        <tr>
            <td>
                <h6>Username</h6>
            </td>
            <td><span id="username"></span></td>
        </tr>
    </table>
</div></div>
<div class="col-md-6">
<div>
    <h1 style="color: #f00">Add or Update a Student </h1>
    <table style="margin-left: 15px">
        <tr>
            <td><span>First Name</span></td>
            <td>
                <input id="newStudentFirstName" type="text" /></td>
        </tr>
        <tr>
            <td><span>Last Name</span></td>
            <td>
                <input id="newStudentLastName" type="text" />
            </td>
        </tr>
        <tr>
            <td><span>ID</span></td>
            <td>
                <input id="newStudentId" type="number" /></td>
        </tr>
        <tr>
            <td><span>Gender</span></td>
            <td>
                <select id="newStudentGender">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select></td>
        </tr>
        <tr>
            <td><span>Email</span></td>
            <td>
                <input id="newStudentEmail" type="text" /></td>
        </tr>
        <tr>
            <td><span>Phone</span></td>
            <td>
                <input id="newStudentPhone" type="text" />
            </td>
        </tr>
        <tr>
            <td><span>Major</span></td>
            <td>
                <input id="newStudentMajor" type="text" />
            </td>
        </tr>
        <tr>
            <td><span>Username</span></td>
            <td>
                <input id="newStudentUsername" type="text" />
            </td>
        </tr>
        <tr>
            <td>
                <button id="postStudent" onclick="AddStudent()">Add New Student</button></td>
            <td>
                <button id="putStudent" onclick="PutStudent()">Update Student</button></td>
        </tr>
    </table>
</div></div>
    </form>

      </div>
    </div><!-- /.container -->        

   

</body>
</html>
