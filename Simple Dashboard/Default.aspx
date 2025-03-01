<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Simple_Dashboard.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JS Dashboard</title>
<%--    <script type="text/javascript" src="js/TweenLite.min.js"></script>--%>
    <script type="text/javascript" src="js/TweenMax.min.js"></script>
    <%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>--%>
   <%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>--%>
 <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
       <script src="js/highcharts.js" type="text/javascript"></script>
    <%--<script src="http://code.highcharts.com/highcharts.js"></script>--%>
<%--    <script src="https://code.highcharts.com/10.2.0/highcharts.js"></script>--%>
<%--<script src="http://code.highcharts.com/modules/exporting.js"></script>--%>

<style>
body{
	margin:0;
	background-color: #FFF;/*#369*/
	overflow:auto;
}

#a11{
    background:#FFF;
}
/*#btn1{
	height:300px;
	width:300px;
	left:1200px;
    /*background:#F60;*/
    /*margin-left:10px;    font-size:14px;	line-height:15px;	padding-left:10px;*/        
/*}*/
#btn2{
	/*background:#C30;cursor:pointer;font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;text-align:left;*/
	height:300px;
	width:300px;
	left:1200px;
	/*margin-left:10px;	font-size:25px;color:#FFF;	line-height:300px;	padding-left:10px;        */
}
#btn3{
	/*background:#F60;border-color:#F60;position:relative;cursor:pointer;font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;text-align:left;*/
	height:300px;
	width:300px;
	left:1200px;
	/*margin-left:10px;color:#FFF;	font-size:25px;	line-height:300px;	padding-left:10px;        */
}
#btn4{
	/*background:#C3C;border-color:#F60;position:relative;cursor:pointer;font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;text-align:left;*/
	height:300px;
	width:300px;
	margin-top:30px;
	left:1200px;
	/*color:#FFF;	margin-left:10px;	font-size:25px;	line-height:300px;	padding-left:10px;        */
}
#btn5{
	/*background:#F36; border-color:#F60;position:relative;cursor:pointer;font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;text-align:left;*/
	height:300px;
	width:300px;
	margin-top:30px;
	left:1200px;
	/*color:#FFF;	margin-left:10px;	font-size:25px;	line-height:300px;	padding-left:10px;        */
}
#btn6{
	/*background:#6C0;position:relative;cursor:pointer;font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;text-align:left;*/
	height:300px;
	width:300px;
	margin-top:30px;
	left:1200px;
	/*color:#FFF;	margin-left:10px;	font-size:25px;	line-height:300px;	padding-left:10px;        */
}

#btn7{
	/*background:#6C0;position:relative;cursor:pointer;font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;text-align:left;*/
	height:300px;
	width:900px;
	margin-top:30px;
	left:1200px;
	/*color:#FFF;	margin-left:10px;	font-size:25px;	line-height:300px;	padding-left:10px;        */
}

#btn8{
	/*background:#6C0;position:relative;cursor:pointer;font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;text-align:left;*/
	height:300px;
	width:900px;
	margin-top:30px;
	left:1200px;
	/*color:#FFF;	margin-left:10px;	font-size:25px;	line-height:300px;	padding-left:10px;        */
}

#content{
	background:#FFF; /*369*/
	height:880px;
	width:950px;
	position:relative;
	top:1200px;
	z-index:0;
}

#backbutton{
	position:relative;
	left:760px;
	cursor:pointer;
}

#caption{
	position:relative;
	top:-60px;
	
	color:#FFF;
	font-size:25px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

#pagecaption{
	position:relative;
	top:-60px;
	
	color:#FFF;
	font-size:25px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
h3{
    font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 70%;
  margin-left:180px;
  margin-top:280px;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 70%;
  margin-left:180px;
}

td, th {
  border: 1px solid #dddddd;
  text-align:left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

</style>

</head>

<body><%-- link="#FFFFFF"--%>
    <form id="form1" runat="server">

        <div style="width:100%; height:80px; overflow:hidden; margin: 0 auto; background-color:#333">

          <div style="width:750px; height:80px; margin: 0 auto; overflow:hidden; position:relative">
		
                <div id="caption" style="height:44px; margin-top:20px;float:left; margin-left:12px; position:absolute"> Jeevasarthakathe Dashboard </div>
        
                <div id="backbutton" style="height:44px; width:44px; margin-top:15px; float:left; position:absolute"> <img src="imgs/backbtn.png" width="44" height="44" /> </div>
        
               <div id="pagecaption" style="height:44px; margin-top:20px;float:left; margin-left:12px; position:absolute"> Caption </div>
          </div>

        </div>

        <!--buttons-->
        <div style="width:1000px; height:700px; overflow:visible; margin: 0 auto; position:relative; margin-top:35px;">

	        <a>            
                <div id="btn1" style="float:left;background:#FFF;position:relative;cursor:pointer;color:#FFF;font-family:Lucida Sans Unicode, Lucida Grande, sans-serif;text-align:left;">
                    <highchart:ColumnChart ID="hcColumnChart2" runat="server" Width="300" Height="300" />   
                </div>
	        </a>

            <a>
                <div id="btn2" style="float:left;background:#FFF;position:relative;cursor:pointer;color: #FFF;font-family:Lucida Sans Unicode, Lucida Grande, sans-serif;text-align:left;"> 
                    <highchart:ColumnChart ID="hcColumnChart" runat="server" Width="300" Height="300" />
                </div> 
            </a>

            <a>
                <div id="btn3" style="float:left;background:#FFF;border-color:#F60;position:relative;cursor:pointer;font-family:Lucida Sans Unicode, Lucida Grande, sans-serif;text-align:left;">
                    <highchart:PieChart ID="hcPieChart" runat="server" Width="300" Height="300" />         
                </div>    
            </a>
            
            <a>            
                <div id="btn4" style="float:left;background:#FFF;position:relative;cursor:pointer;color:#FFF;font-family:Lucida Sans Unicode, Lucida Grande, sans-serif;text-align:left;">
                    <highchart:ColumnChart ID="ColumnChart1" runat="server" Width="300" Height="300" /> 
                </div> 
            </a>
            <a>
                <div id="btn5" style="float:left;background:#FFF;border-color:#F60;position:relative;cursor:pointer;font-family:Lucida Sans Unicode, Lucida Grande, sans-serif;text-align:left;">
                    <highchart:PieChart ID="PieChart1" runat="server" Width="300" Height="300" />
                </div> 
                
            </a>
            <a>
                <div id="btn6" style="float:left;background:#FFF;border-color:#F60;position:relative;cursor:pointer;font-family:Lucida Sans Unicode, Lucida Grande, sans-serif;text-align:left;"><%-- <p> We on Map </p>--%> 
                    <highchart:linechart id="hcLineChartTheme" runat="server" Width="300" Height="300" />
                </div> 
            </a>
            <a>            
                <div id="btn7" style="float:left;background:#FFF;position:relative;cursor:pointer;color:#FFF;font-family:Lucida Sans Unicode, Lucida Grande, sans-serif;text-align:left;">
                    <highchart:ColumnChart ID="hcColumnChartR" runat="server" Width="945" Height="300" /> 
                </div> 
            </a>
            <a>            
                <div id="btn8" style="float:left;background:#FFF;position:relative;cursor:pointer;color:#FFF;font-family:Lucida Sans Unicode, Lucida Grande, sans-serif;text-align:left;">
                    <highchart:ColumnChart ID="hcColumnChartD" runat="server" Width="945" Height="300" /> 
                </div> 
            </a>
     </div>

        <br />
        <br />


        <!--footer-->
        <div style="width:100%; height:60px; overflow:hidden; margin: 0 auto; background-color:#333; margin-top:30px;">
            <div style="width:750px; height:80px; margin: 0 auto;">
            	<p style="text-align:center; color:#FFF; font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif; font-size:x-small">
			&copy; 2020 All rights reserved.
		</p>
            </div>
        </div>

    </form>

<script type="text/javascript">
    $(document).ready(function () {
        TweenLite.to($("#caption"), 2, { css: { top: 0 }, delay: 1, ease: Power2.easeOut });
        TweenLite.to($("#btn1"), 2, { css: { left: 0 }, delay: 2, ease: Power2.easeOut });
        TweenLite.to($("#btn2"), 2, { css: { left: 20 }, delay: 2.5, ease: Power2.easeOut });
        TweenLite.to($("#btn3"), 2, { css: { left: 40 }, delay: 3, ease: Power2.easeOut });
        TweenLite.to($("#btn4"), 2, { css: { left: 0 }, delay: 3.5, ease: Power2.easeOut });
        TweenLite.to($("#btn5"), 2, { css: { left: 20 }, delay: 4, ease: Power2.easeOut });
        TweenLite.to($("#btn6"), 2, { css: { left: 40 }, delay: 4.5, ease: Power2.easeOut });
        TweenLite.to($("#btn7"), 2, { css: { left: 0 }, delay: 5, ease: Power2.easeOut });
        TweenLite.to($("#btn8"), 2, { css: { left: 0 }, delay: 5.5, ease: Power2.easeOut });

    });

</script>	

</body>
</html>

