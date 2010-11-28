<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="True"
    CodeBehind="Default.aspx.cs" Inherits="centilesproject1._Default" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
      
<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><title>Boys BMI Data Age 0 -2</title><!--[if IE]><script language="javascript" type="text/javascript" src="excanvas.js"></script><![endif]--><script language="javascript" type="text/javascript" src="scripts/jqplot/jquery-1.4.2.min.js"></script><script language="javascript" type="text/javascript" src="scripts/jqplot/jquery.jqplot.min.js"></script><script language="javascript" type="text/javascript" src="scripts/jqplot/jqplot.cursor.min.js"></script><link rel="stylesheet" type="text/css" href="scripts/jqplot/jquery.jqplot.css" /><script type="text/javascript" language="javascript">

<!--[if IE]><script language="javascript" type="text/javascript" src="excanvas.js"></script><![endif]-->
<script language="javascript" type="text/javascript" src="scripts/jqplot/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="scripts/jqplot/jquery.jqplot.min.js"></script>
<script language="javascript" type="text/javascript" src="scripts/jqplot/jqplot.cursor.min.js"></script>

<script type="text/javascript" language="javascript">
  $(document).ready(function(){
      $.jqplot.config.enablePlugins = true;

trial2 = <asp:Literal ID="trialdata" runat="server"></asp:Literal>;
cent3  = <asp:Literal ID="cent3" runat="server"></asp:Literal>;
cent50 = [13.4,14.9,16.3,16.9,17.2,17.3,17.3,17.3,17.3,17.2,17,16.9,16.8,16.7,16.6,16.4,16.3,16.2,16.1,16.1,16,15.9,15.8,15.8,15.7];
cent97 = [16.1,17.6,19.2,19.8,20.1,20.2,20.3,20.3,20.2,20.1,19.9,19.8,19.6,19.5,19.3,19.2,19.1,18.9,18.8,18.7,18.6,18.6,18.5,18.4,18.3];
xticks = [0,3,6,9,12,15,18,21,24,27];
yticks = [10,11,12,13,14,15,16,17,18,19,20,21,22];

  plot1 =  $.jqplot('chart1', [trial2, cent3, cent50, cent97], {
      	title:'Boys BMI 0-2',
        grid: {background:'#f3f3f3', gridLineColor:'#accf9b'},
	legend:{show:true},
      	series:[
        {label:'trialdata'},
        {label:'3rd Centile'},
        {label:'50th Centile'},
        {label:'97th Centile'}
      ],
	axes:{
	  xaxis:{ticks:xticks, tickOptions:{formatString:'%d'}},
	  autoscale: true,
	  label: 'Age (months)', 
	  yaxis:{ticks:yticks, tickOptions:{formatString:'%d'}},
	  autoscale: true,
	  label: 'BMI'
	}
    });

  });


</script>
    
</head>
<body>
    1 month Value<br />
    <asp:TextBox ID="valueAtOneMonth" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Refresh" CommandName="Update"   />
    <br />



<div id="chart1" style="height:400px;width:600px; "></div>    


  </body>
</html>
 
   
</asp:Content>

