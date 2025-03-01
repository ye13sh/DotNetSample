<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChartsJS.aspx.cs" Inherits="Simple_Dashboard.ChartsJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JS Dashboard</title>

<style>
.highcharts-figure,
.highcharts-data-table table {
  min-width: 310px;
  max-width: 300px;
  margin: 1em auto;
  float:left;
  margin-left:120px;

}

#container {
  height: 300px;
}

.highcharts-data-table table {
  font-family: Verdana, sans-serif;
  border-collapse: collapse;
  border: 1px solid #ebebeb;
  margin: 10px auto;
  text-align: center;
  width: 100%;
  max-width: 300px;
}

.highcharts-data-table caption {
  padding: 1em 0;
  font-size: 1.2em;
  color: #555;
}

.highcharts-data-table th {
  font-weight: 600;
  padding: 0.5em;
}

.highcharts-data-table td,
.highcharts-data-table th,
.highcharts-data-table caption {
  padding: 0.5em;
}

.highcharts-data-table thead tr,
.highcharts-data-table tr:nth-child(even) {
  background: #f8f8f8;
}

.highcharts-data-table tr:hover {
  background: #f1f7ff;
}
.highcharts-background {
    border-width: 25px;
    border-color:black;
    color:aqua;

}
</style>
</head>

<body>
<script src="js/highcharts.js"></script>
<script src="js/highcharts_exporting.js"></script>
<%--<script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>--%>


<figure class="highcharts-figure">
    <div id="container1"></div>
    <p class="highcharts-description">
    </p>
</figure>
<figure class="highcharts-figure">
    <div id="container2"></div>
    <p class="highcharts-description">
    </p>
</figure>
<figure class="highcharts-figure">
    <div id="container5"></div>
    <p class="highcharts-description">
    </p>
</figure>
<figure class="highcharts-figure">
    <div id="container3"></div>
    <p class="highcharts-description">
    </p>
</figure>
<figure class="highcharts-figure">
    <div id="container6"></div>
    <p class="highcharts-description">
    </p>
</figure>
<figure class="highcharts-figure">
    <div id="container4"></div>
    <p class="highcharts-description">
    </p>
</figure>
    


<figure class="highcharts-figure">
    <div id="container7" style="height: 400px; width: 1170px; margin-left:0px;"></div>
    <p class="highcharts-description">
    </p>
</figure>
<figure class="highcharts-figure">
    <div id="container8" style="height: 400px; width: 1170px; margin-top:450px; margin-left:-430px;"></div>
    <p class="highcharts-description">
    </p>
</figure>




<script type="text/javascript">
Highcharts.chart('container1', {
    chart: {
      backgroundColor: '#FFFFF0',
      polar: true,
      type: 'column'
  },
  title: {
    text: 'Common Pool Organ Statistics'
  },
  subtitle: {
    text: 'Since year 2018'
  },
  xAxis: {
    categories: [
      'Organs Received',
      'Organs Utilized'
    ],
    crosshair: true
  },
  yAxis: {
    min: 0,
    title: {
      text: 'Organs'
    }
    },

  chartOptions: {
                borderWidth: 1,
                backgroundColor: '#000000',
                shadow: true
            },
  tooltip: {
    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
      '<td style="padding:0"><b>{point.y}</b></td></tr>',
    footerFormat: '</table>',
    shared: true,
    useHTML: true
  },
  plotOptions: {
    column: {
      pointPadding: 0.2,
      borderWidth: 0
    }
  },
  series: [{
    name: 'Liver',
    data: [<%= LiverR.Text %>, <%= LiverU.Text %>]

  }, {
    name: 'Kidney',
    data: [<%= KidneyR.Text %>, <%= KidneyU.Text %>]

  }, {
    name: 'Heart',
    data: [<%= HeartR.Text %>, <%= HeartU.Text %>]

  }, {
    name: 'Lungs',
    data: [<%= LungsR.Text %>, <%= LungsU.Text %>]

      },
  {
    name: 'Pancreas',
    data: [<%= PancreasR.Text %>, <%= PancreasU.Text %>]

  }]
});

</script>

<script type="text/javascript">
Highcharts.chart('container2', {
    chart: {
      backgroundColor: '#FFFFF0',
      polar: true,
    type: 'column'
  },
  title: {
    text: 'OTC Pool Organ Statistics'
  },
  subtitle: {
    text: 'Since year 2018'
  },
  xAxis: {
    categories: [
      'Organs Received',
      'Organs Utilized'
    ],
    crosshair: true
  },
  yAxis: {
    min: 0,
    title: {
      text: 'Organs'
    }
  },
  tooltip: {
    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
      '<td style="padding:0"><b>{point.y}</b></td></tr>',
    footerFormat: '</table>',
    shared: true,
    useHTML: true
  },
  plotOptions: {
    column: {
      pointPadding: 0.2,
      borderWidth: 0
    }
  },
  series: [{
    name: 'Liver',
    data: [<%= LiverRO.Text %>, <%= LiverUO.Text %>]

  }, {
    name: 'Kidney',
    data: [<%= KidneyRO.Text %>, <%= KidneyUO.Text %>]

  }, {
    name: 'Heart',
    data: [<%= HeartRO.Text %>, <%= HeartUO.Text %>]

  }, {
    name: 'Lungs',
    data: [<%= LungsRO.Text %>, <%= LungsUO.Text %>]

      },
  {
    name: 'Pancreas',
    data: [<%= PancreasRO.Text %>, <%= PancreasUO.Text %>]

  }]
});

</script>

<script type="text/javascript">
Highcharts.chart('container3', {
    chart: {
      backgroundColor: '#FFFFF0',
      polar: true,
    type: 'column'
  },
  title: {
    text: 'Registered Donor Organ Statistics'
  },
  subtitle: {
    text: 'Since year 2018'
  },
  xAxis: {
    categories: [
      'Donor Organs'
    ],
    crosshair: true
  },
  yAxis: {
    min: 0,
    title: {
      text: 'Donor Organs Count'
    }
  },
  tooltip: {
    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
      '<td style="padding:0"><b>{point.y}</b></td></tr>',
    footerFormat: '</table>',
    shared: true,
    useHTML: true
  },
  plotOptions: {
    column: {
      pointPadding: 0.2,
      borderWidth: 0
    }
  },
  series: [{
    name: 'Liver',
    data: [<%= LiverD.Text %>]

  }, {
    name: 'Kidney',
    data: [<%= KidneyD.Text %>]

  }, {
    name: 'Heart',
    data: [<%= HeartD.Text %>]

  }, {
    name: 'Lungs',
    data: [<%= LungsD.Text %>]

      },
  {
    name: 'Pancreas',
    data: [<%= PancreasD.Text %>]

  }]
});

</script>

<script type="text/javascript">
    Highcharts.chart('container4', {

        chart: {
            backgroundColor: '#FFFFF0',
            polar: true
        },
    title: {
        text: 'Recipients Organs and Blood Group'
    },

    subtitle: {
        text: 'Since year 2018'
    },

    yAxis: {
        title: {
            text: 'Recipient Count'
        }
    },

    xAxis: {
        categories: [
      'A', 'B', 'AB', 'O'
    ]
    },

    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            },
        }
    },

    series: [{
        name: 'Liver',
        data: [<%= LiverA.Text %>, <%= LiverB.Text %>, <%= LiverAB.Text %>, <%= LiverO.Text %>]
    }, {
        name: 'Kidney',
        data: [<%= KidneyA.Text %>, <%= KidneyB.Text %>, <%= KidneyAB.Text %>, <%= KidneyO.Text %>]
    }, {
        name: 'Heart',
        data: [<%= HeartA.Text %>, <%= HeartB.Text %>, <%= HeartAB.Text %>, <%= HeartO.Text %>]
    }, {
        name: 'Lungs',
        data: [<%= LungsA.Text %>, <%= LungsB.Text %>, <%= LungsAB.Text %>, <%= LungsO.Text %>]
    }, {
        name: 'Pancreas',
        data: [<%= PancreasA.Text %>, <%= PancreasB.Text %>, <%= PancreasAB.Text %>, <%= PancreasO.Text %>]
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
    }

});
</script>

<script type="text/javascript">
// Build the chart
Highcharts.chart('container5', {
    chart: {
        backgroundColor: '#FFFFF0',
        polar: true,
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Recipient Registered OrganWise'
    },
    subtitle: {
        text: 'Since year 2018'
    },
    accessibility: {
        point: {
            valueSuffix: ''
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: false
            },
            showInLegend: true
        }
    },
    series: [{
        name: 'Organs',
        colorByPoint: true,
        data: [{
            name: 'Liver',
            y: <%= LiverT.Text %>,
            sliced: true,
            selected: true
        }, {
            name: 'Kidney',
            y: <%= KidneyT.Text %>
        }, {
            name: 'Heart',
            y: <%= HeartT.Text %>
        }, {
            name: 'Lungs',
            y: <%= LungsT.Text %>
        }, {
            name: 'Pancreas',
            y: <%= PancreasT.Text %>
        }]
    }]
});
		</script>

<script type="text/javascript">
// Build the chart
Highcharts.chart('container6', {
    chart: {
        backgroundColor: '#FFFFF0',
        polar: true,
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Recipient Registered BloodGroup Wise'
    },
    subtitle: {
        text: 'Since year 2018'
    },
    accessibility: {
        point: {
            valueSuffix: ''
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: false
            },
            showInLegend: true
        }
    },
    series: [{
        name: 'Blood Group',
        colorByPoint: true,
        data: [{
            name: 'A',
            y: <%= A1.Text %>,
            sliced: true,
            selected: true
        }, {
            name: 'B',
            y: <%= B1.Text %>
        }, {
            name: 'AB',
            y: <%= AB1.Text %>
        }, {
            name: 'O',
            y: <%= O1.Text %>
        }]
    }]
});
</script>

<script type="text/javascript">
Highcharts.chart('container7', {
    chart: {
      backgroundColor: '#FFFFF0',
      polar: true,
    type: 'column'
  },
  title: {
    text: 'Recipient Organ Statistics'
  },
  xAxis: {
    categories: [
      'Total',
      'This Year',
      'This Month',
      'Today'
    ],
    crosshair: true
  },
  yAxis: {
    min: 0,
    title: {
      text: 'Recipient Organs Count'
    }
  },
  tooltip: {
    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
      '<td style="padding:0"><b>{point.y}</b></td></tr>',
    footerFormat: '</table>',
    shared: true,
    useHTML: true
  },
  plotOptions: {
    column: {
      pointPadding: 0.2,
      borderWidth: 0
    }
  },
  series: [{
    name: 'Liver',
    data: [<%= LiverTot.Text %>, <%= LiverTY.Text %>, <%= LiverTM.Text %>, <%= LiverTod.Text %>]

  }, {
    name: 'Kidney',
    data: [<%= KidneyTot.Text %>, <%= KidneyTY.Text %>, <%= KidneyTM.Text %>, <%= KidneyTod.Text %>]

  }, {
    name: 'Heart',
    data: [<%= HeartTot.Text %>, <%= HeartTY.Text %>, <%= HeartTM.Text %>, <%= HeartTod.Text %>]

  }, {
    name: 'Lungs',
    data: [<%= LungsTot.Text %>, <%= LungsTY.Text %>, <%= LungsTM.Text %>, <%= LungsTod.Text %>]

      },
  {
    name: 'Pancreas',
    data: [<%= PancreasTot.Text %>, <%= PancreasTY.Text %>, <%= PancreasTM.Text %>, <%= PancreasTod.Text %>]

        }]

});

</script>

<script type="text/javascript">
    Highcharts.chart('container8', {
        chart: {
            backgroundColor: '#FFFFF0',
            polar: true
        },
    title: {
        text: 'Donor Organ Statistics'
    },
    xAxis: {
        categories: ['Total', 'This Year', 'This Month', 'Today']
    },
    labels: {
        items: [{
            html: 'Donor Organs Count',
            style: {
                left: '50px',
                top: '18px',
                color: ( // theme
                    Highcharts.defaultOptions.title.style &&
                    Highcharts.defaultOptions.title.style.color
                ) || 'black'
            }
        }]
    },
    series: [{
        type: 'column',
        name: 'Liver',
        data: [<%= LiverTDTot.Text %>, <%= LiverTDTY.Text %>, <%= LiverTDTM.Text %>, <%= LiverTDTod.Text %>]
    }, {
        type: 'column',
        name: 'Kidney',
        data: [<%= KidneyTDTot.Text %>, <%= KidneyTDTY.Text %>, <%= KidneyTDTM.Text %>, <%= KidneyTDTod.Text %>]
    }, {
        type: 'column',
        name: 'Heart',
        data: [<%= HeartTDTot.Text %>, <%= HeartTDTY.Text %>, <%= HeartTDTM.Text %>, <%= HeartTDTod.Text %>]
        },
    {
        type: 'column',
        name: 'Lungs',
        data: [<%= LungsTDTot.Text %>, <%= LungsTDTY.Text %>, <%= LungsTDTM.Text %>, <%= LungsTDTod.Text %>]
        },
    {
        type: 'column',
        name: 'Pancreas',
        data: [<%= PancreasTDTot.Text %>, <%= PancreasTDTY.Text %>, <%= PancreasTDTM.Text %>, <%= PancreasTDTod.Text %>]
    },
        {
        type: 'spline',
        name: 'Average',
        data: [<%= LiverAvg.Text %>, <%= LungsAvg.Text %>, <%= HeartAvg.Text %>, <%= KidneyAvg.Text %>],
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[5],
            fillColor: 'white'
        }
    }, {
        type: 'pie',
        name: 'Total',
        data: [{
            name: 'Liver',
            y: <%= LiverTDTot.Text %>,
            color: Highcharts.getOptions().colors[0] // Jane's color
        }, {
            name: 'Kidney',
            y: <%= KidneyTDTot.Text %>,
            color: Highcharts.getOptions().colors[1] // John's color
        }, {
            name: 'Heart',
            y: <%= HeartTDTot.Text %>,
            color: Highcharts.getOptions().colors[2] // Joe's color
                },
            {
            name: 'Lungs',
            y: <%= LungsTDTot.Text %>,
            color: Highcharts.getOptions().colors[3] // John's color
                },
            {
            name: 'Pancreas',
            y: <%= PancreasTDTot.Text %>,
            color: Highcharts.getOptions().colors[4] // John's color
                }],
        center: [900, 80],
        size: 100,
        showInLegend: false,
        dataLabels: {
            enabled: false
        }
    }]
});

		</script>
     
<asp:Label ID="LiverR" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyR" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartR" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsR" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasR" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverU" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyU" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartU" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsU" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasU" runat="server" Text="Label" Visible="false" ></asp:Label>

<asp:Label ID="LiverRO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyRO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartRO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsRO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasRO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverUO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyUO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartUO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsUO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasUO" runat="server" Text="Label" Visible="false" ></asp:Label>

<asp:Label ID="LiverD" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyD" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartD" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsD" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasD" runat="server" Text="Label" Visible="false" ></asp:Label>

<asp:Label ID="LiverA" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverAB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyA" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyAB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartA" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartAB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsA" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsAB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsO" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasA" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasAB" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasO" runat="server" Text="Label" Visible="false" ></asp:Label>

<asp:Label ID="LiverT" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyT" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartT" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsT" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasT" runat="server" Text="Label" Visible="false" ></asp:Label>

<asp:Label ID="A1" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="B1" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="AB1" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="O1" runat="server" Text="Label" Visible="false" ></asp:Label>

<%--Recipient Details--%>
<asp:Label ID="LiverTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverTY" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTY" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTY" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTY" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasTY" runat="server" Text="Label" Visible="false" ></asp:Label>

<%--Donor Details--%>
<asp:Label ID="LiverTDTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverTDTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverTDTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LiverTDTY" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTDTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTDTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTDTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTDTY" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTDTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTDTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTDTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTDTY" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTDTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTDTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTDTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTDTY" runat="server" Text="Label" Visible="false" ></asp:Label>  
<asp:Label ID="PancreasTDTot" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasTDTod" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasTDTM" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasTDTY" runat="server" Text="Label" Visible="false" ></asp:Label>

<asp:Label ID="LiverAvg" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyAvg" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartAvg" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsAvg" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasAvg" runat="server" Text="Label" Visible="false" ></asp:Label>

<asp:Label ID="LiverTl" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="KidneyTl" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="HeartTl" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="LungsTl" runat="server" Text="Label" Visible="false" ></asp:Label>
<asp:Label ID="PancreasTl" runat="server" Text="Label" Visible="false" ></asp:Label>
    






</body>
</html>

