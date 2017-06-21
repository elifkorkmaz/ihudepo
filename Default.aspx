<%@ Page Language="C#" Inherits="jsonVeri.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
		
		<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
    

</head>
<body>
	<form id="form1" runat="server">

			<script>
             $(document).ready(function () {
                 var url = 'https://cdn.rawgit.com/angular-ui/ui-grid.info/gh-pages/data/500_complex.json';  
             $.getJSON(url, function (data)  

            {
				document.write("<table border='1 solid'><tr>"+
                " <th>NAME</th>" +
                 "<th>GENDER</th>" +
                 "<th>AGE</th>" +
                 "<th>COMPANY</th>"+
                 "<th>EMAIL</th></tr>");
				
                  for (var i = 0; i < data.length; i++) {  

                    document.write("<tr><td> " + data[i].name + " </td><td>" + data[i].gender + "</td><td> " + data[i].age + "</td><td> " + data[i].company + "</td><td> " +data[i].email + "</td></tr>" );
            }
				document.write("</table>");
				
    });

    });

  </script> 


		
	</form>
</body>
</html>
