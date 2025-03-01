using System;
using System.Collections.Generic;
using Highchart.Core;
using Highchart.Core.Data.Chart;
using Highchart.Core.PlotOptions;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Simple_Dashboard
{
    public partial class ChartsJS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lbldate.Text = "Todays (" + DateTime.Now.ToShortDateString() + ") District Wise Form-F Count";


            #region Column chart1
            ///----------------------
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["JSConnection"].ConnectionString);
            SqlCommand cmd1 = new SqlCommand("GetOrganCnt_CenterWise_CommPool_Stat", con1);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@CenterId", SqlDbType.NVarChar).Value = "1";
            con1.Open();
            cmd1.CommandTimeout = 600;
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            con1.Close();
             LiverR.Text = ds1.Tables[0].Rows[0][2].ToString();
             KidneyR.Text = ds1.Tables[0].Rows[1][2].ToString();
             HeartR.Text = ds1.Tables[0].Rows[2][2].ToString();
             LungsR.Text = ds1.Tables[0].Rows[3][2].ToString();
             PancreasR.Text = ds1.Tables[0].Rows[4][2].ToString();

             LiverU.Text = ds1.Tables[0].Rows[0][3].ToString();
             KidneyU.Text = ds1.Tables[0].Rows[1][3].ToString();
             HeartU.Text = ds1.Tables[0].Rows[2][3].ToString();
             LungsU.Text = ds1.Tables[0].Rows[3][3].ToString();
             PancreasU.Text = ds1.Tables[0].Rows[4][3].ToString();

            //hcColumnChart2.Title = new Title("Common Pool Organ Statistics");
            //hcColumnChart2.SubTitle = new SubTitle("Since year 2018");

            //// Axis
            //hcColumnChart2.YAxis.Add(new YAxisItem { title = new Title("Organs") });
            //hcColumnChart2.XAxis.Add(new XAxisItem
            //{
            //    categories = new[] { "Organs Received","Organs Utilized"
            //                                                            //"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" 
            //                                                            }
            //});
            //// Data
            //var series = new List<Serie>();
            //series = new List<Serie>();
            //series.Add(new Serie
            //{
            //    name = "Liver",
            //    data = new Object[] { Convert.ToInt32(LiverR), Convert.ToInt32(LiverU)
            //                                                            //, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Kidney",
            //    data = new Object[] { Convert.ToInt32(KidneyR), Convert.ToInt32(KidneyU)
            //                                                            //, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Heart",
            //    data = new object[] { Convert.ToInt32(HeartR), Convert.ToInt32(HeartU)
            //                                                            //, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Lungs",
            //    data = new object[] { Convert.ToInt32(LungsR), Convert.ToInt32(LungsU)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Pancreas",
            //    data = new object[] { Convert.ToInt32(PancreasR), Convert.ToInt32(PancreasU)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //hcColumnChart2.PlotOptions = new PlotOptionsColumn { borderColor = "#dedede", borderRadius = 4 };
            //hcColumnChart2.Tooltip = new ToolTip("'<b>'+ this.series.name +'</b><br/>' + this.x + ': '+ this.y +''");

            //// Bind
            //hcColumnChart2.DataSource = series;
            //hcColumnChart2.DataBind();
            #endregion

            #region Column chart2
            ///----------------------
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["JSConnection"].ConnectionString);
            SqlCommand cmd2 = new SqlCommand("GetOrganCnt_CenterWise_OTCPool_Stat", con2);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.Add("@CenterId", SqlDbType.NVarChar).Value = "1";
            con2.Open();
            cmd2.CommandTimeout = 600;
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            con2.Close();
             LiverRO.Text = ds2.Tables[0].Rows[0][2].ToString();
             KidneyRO.Text = ds2.Tables[0].Rows[1][2].ToString();
             HeartRO.Text = ds2.Tables[0].Rows[2][2].ToString();
             LungsRO.Text = ds2.Tables[0].Rows[3][2].ToString();
             PancreasRO.Text = ds2.Tables[0].Rows[4][2].ToString();

             LiverUO.Text = ds2.Tables[0].Rows[0][3].ToString();
             KidneyUO.Text = ds2.Tables[0].Rows[1][3].ToString();
             HeartUO.Text = ds2.Tables[0].Rows[2][3].ToString();
             LungsUO.Text = ds2.Tables[0].Rows[3][3].ToString();
             PancreasUO.Text = ds2.Tables[0].Rows[4][3].ToString();

            //hcColumnChart.Title = new Title("OTC Pool Organ Statistics");
            //hcColumnChart.SubTitle = new SubTitle("Since year 2018");

            //// Axis
            //hcColumnChart.YAxis.Add(new YAxisItem { title = new Title("Organs") });
            //hcColumnChart.XAxis.Add(new XAxisItem
            //{
            //    categories = new[] { "Organs Received","Organs Utilized"
            //                                                            //"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" 
            //                                                            }
            //});
            //// Data
            ////var series = new List<Serie>();
            //series = new List<Serie>();
            //series.Add(new Serie
            //{
            //    name = "Liver",
            //    data = new Object[] { Convert.ToInt32(LiverRO), Convert.ToInt32(LiverUO)
            //                                                            //, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Kidney",
            //    data = new Object[] { Convert.ToInt32(KidneyRO), Convert.ToInt32(KidneyUO)
            //                                                            //, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Heart",
            //    data = new object[] { Convert.ToInt32(HeartRO), Convert.ToInt32(HeartUO)
            //                                                            //, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Lungs",
            //    data = new object[] { Convert.ToInt32(LungsRO), Convert.ToInt32(LungsUO)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Pancreas",
            //    data = new object[] { Convert.ToInt32(PancreasRO), Convert.ToInt32(PancreasUO)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //hcColumnChart.PlotOptions = new PlotOptionsColumn { borderColor = "#dedede", borderRadius = 4 };
            //hcColumnChart.Tooltip = new ToolTip("'<b>'+ this.series.name +'</b><br/>' + this.x + ': '+ this.y +''");

            //// Bind
            //hcColumnChart.DataSource = series;
            //hcColumnChart.DataBind();
            #endregion

            #region Column chart3
            ///----------------------
            SqlConnection con6 = new SqlConnection(ConfigurationManager.ConnectionStrings["JSConnection"].ConnectionString);
            SqlCommand cmd6 = new SqlCommand("DonorOrgan_Count_Stats", con6);
            cmd6.CommandType = CommandType.StoredProcedure;
            con6.Open();
            cmd6.CommandTimeout = 600;
            SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
            DataSet ds6 = new DataSet();
            da6.Fill(ds6);
            con6.Close();
             LiverD.Text = ds6.Tables[0].Rows[0][1].ToString();
             KidneyD.Text = ds6.Tables[0].Rows[1][1].ToString();
             HeartD.Text = ds6.Tables[0].Rows[2][1].ToString();
             LungsD.Text = ds6.Tables[0].Rows[3][1].ToString();
             PancreasD.Text = ds6.Tables[0].Rows[4][1].ToString();

            //ColumnChart1.Title = new Title("Registered Donor Organ Statistics");
            //ColumnChart1.SubTitle = new SubTitle("Since year 2018");

            //// Axis
            //ColumnChart1.YAxis.Add(new YAxisItem { title = new Title("Donor Organs Count") });
            //ColumnChart1.XAxis.Add(new XAxisItem
            //{
            //    categories = new[] { "Donor Organs"
            //                                                            //"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" 
            //                                                            }
            //});
            //// Data
            ////var series = new List<Serie>();
            //series = new List<Serie>();
            //series.Add(new Serie
            //{
            //    name = "Liver",
            //    data = new Object[] { Convert.ToInt32(LiverD)
            //                                                            //, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Kidney",
            //    data = new Object[] { Convert.ToInt32(KidneyD)
            //                                                            //, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Heart",
            //    data = new object[] { Convert.ToInt32(HeartD)
            //                                                            //, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Lungs",
            //    data = new object[] { Convert.ToInt32(LungsD)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Pancreas",
            //    data = new object[] { Convert.ToInt32(PancreasD)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //ColumnChart1.PlotOptions = new PlotOptionsColumn { borderColor = "#dedede", borderRadius = 4 };
            //ColumnChart1.Tooltip = new ToolTip("'<b>'+ this.series.name +'</b><br/>' + this.x + ': '+ this.y +''");

            //// Bind
            //ColumnChart1.DataSource = series;
            //ColumnChart1.DataBind();
            #endregion

            #region Line chart - theme
            SqlConnection con5 = new SqlConnection(ConfigurationManager.ConnectionStrings["JSConnection"].ConnectionString);
            SqlCommand cmd5 = new SqlCommand("Stat_Organ_vs_BlGrp_Wise_Rcpnts_chart", con5);
            cmd5.CommandType = CommandType.StoredProcedure;
            cmd5.Parameters.Add("@CenterId", SqlDbType.NVarChar).Value = "ALL";
            con5.Open();
            cmd5.CommandTimeout = 600;
            SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
            DataSet ds5 = new DataSet();
            da5.Fill(ds5);
            con5.Close();

             LiverA.Text = ds5.Tables[0].Rows[0][2].ToString();
             LiverB.Text = ds5.Tables[0].Rows[0][3].ToString();
             LiverAB.Text = ds5.Tables[0].Rows[0][4].ToString();
             LiverO.Text = ds5.Tables[0].Rows[0][5].ToString();
             KidneyA.Text = ds5.Tables[0].Rows[1][2].ToString();
             KidneyB.Text = ds5.Tables[0].Rows[1][3].ToString();
             KidneyAB.Text = ds5.Tables[0].Rows[1][4].ToString();
             KidneyO.Text = ds5.Tables[0].Rows[1][5].ToString();
             HeartA.Text = ds5.Tables[0].Rows[2][2].ToString();
             HeartB.Text = ds5.Tables[0].Rows[2][3].ToString();
             HeartAB.Text = ds5.Tables[0].Rows[2][4].ToString();
             HeartO.Text = ds5.Tables[0].Rows[2][5].ToString();
             LungsA.Text = ds5.Tables[0].Rows[3][2].ToString();
             LungsB.Text = ds5.Tables[0].Rows[3][3].ToString();
             LungsAB.Text = ds5.Tables[0].Rows[3][4].ToString();
             LungsO.Text = ds5.Tables[0].Rows[3][5].ToString();
             PancreasA.Text = ds5.Tables[0].Rows[4][2].ToString();
             PancreasB.Text = ds5.Tables[0].Rows[4][3].ToString();
             PancreasAB.Text = ds5.Tables[0].Rows[4][4].ToString();
             PancreasO.Text = ds5.Tables[0].Rows[4][5].ToString();

            //hcLineChartTheme.Title = new Title("Recipients Organs and Blood Group");
            //hcLineChartTheme.SubTitle = new SubTitle("Since year 2018");

            ////Defining Axis
            //hcLineChartTheme.YAxis.Add(new YAxisItem { title = new Title("Recipient Count") });
            //hcLineChartTheme.XAxis.Add(new XAxisItem { categories = new[] { "A", "B", "AB", "O" } });

            ////New data collection
            ////var series = new Collection<Serie>();
            //series = new List<Serie>();
            //series.Add(new Serie { data = new object[] { Convert.ToInt32(LiverA), Convert.ToInt32(LiverB), Convert.ToInt32(LiverAB), Convert.ToInt32(LiverO) }, name = "Liver" });
            //series.Add(new Serie { data = new object[] { Convert.ToInt32(KidneyA), Convert.ToInt32(KidneyB), Convert.ToInt32(KidneyAB), Convert.ToInt32(KidneyO) }, name = "Kidney" });
            //series.Add(new Serie { data = new object[] { Convert.ToInt32(HeartA), Convert.ToInt32(HeartB), Convert.ToInt32(HeartAB), Convert.ToInt32(HeartO) }, name = "Heart" });
            //series.Add(new Serie { data = new object[] { Convert.ToInt32(LungsA), Convert.ToInt32(LungsB), Convert.ToInt32(LungsAB), Convert.ToInt32(LungsO) }, name = "Lungs" });
            //series.Add(new Serie { data = new object[] { Convert.ToInt32(PancreasA), PancreasB, Convert.ToInt32(PancreasAB), Convert.ToInt32(PancreasO) }, name = "Pancreas" });
            ////series.Add(new Serie { data = new object[] { 125, 471, 247, 120, 397, 451 }, name = "Sports" });

            //hcLineChartTheme.Theme = "gray";
            //hcLineChartTheme.Legend = new Legend { align = Align.center, layout = Layout.horizontal, verticalAlign = VerticalAlign.bottom, borderWidth = 0 };
            ////hcLineChartTheme.Appearance = new Appearance { marginBottom = 30, marginRight = 130, borderRadius = 15 };

            ////bind data to chart
            //hcLineChartTheme.DataSource = series;
            //hcLineChartTheme.DataBind();
            #endregion

            #region Pie chart
            SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["JSConnection"].ConnectionString);
            SqlCommand cmd3 = new SqlCommand("Stat_Organ_vs_BlGrp_Wise_Rcpnts_chart", con3);
            cmd3.CommandType = CommandType.StoredProcedure;
            cmd3.Parameters.Add("@CenterId", SqlDbType.NVarChar).Value = "ALL";
            con3.Open();
            cmd3.CommandTimeout = 600;
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            con3.Close();
             LiverT.Text = ds3.Tables[0].Rows[0][6].ToString();
             KidneyT.Text = ds3.Tables[0].Rows[1][6].ToString();
             HeartT.Text = ds3.Tables[0].Rows[2][6].ToString();
             LungsT.Text = ds3.Tables[0].Rows[3][6].ToString();
             PancreasT.Text = ds3.Tables[0].Rows[4][6].ToString();

            //hcPieChart.Title = new Title("Recipient Registered OrganWise");
            //hcPieChart.SubTitle = new SubTitle("Since year 2018");
            ////Data
            ////var series = new List<Serie>();
            //series = new List<Serie>();
            //series.Add(new Serie
            //{
            //    size = 130,
            //    data = new object[] {
            //                new object[] { "Liver", Convert.ToInt32(LiverT) },
            //                new object[] { "Kidney", Convert.ToInt32(KidneyT) },
            //                new object[] { "Heart", Convert.ToInt32(HeartT) },
            //                new object[] { "Lungs", Convert.ToInt32(LungsT) },
            //                new object[] { "Pancreas", Convert.ToInt32(PancreasT) }

            //            }
            //});

            //hcPieChart.PlotOptions = new PlotOptionsPie
            //{
            //    allowPointSelect = true,
            //    cursor = "pointer",
            //    dataLabels = new DataLabels { enabled = true }
            //};

            //hcPieChart.Tooltip = new ToolTip("'<b>'+ this.point.name +'</b>: '+ this.y +''");
            //hcPieChart.Theme = "pink-floral";

            //// Bind
            //hcPieChart.DataSource = series;
            //hcPieChart.DataBind();
            #endregion

            #region Pie chart2
            SqlConnection con4 = new SqlConnection(ConfigurationManager.ConnectionStrings["JSConnection"].ConnectionString);
            SqlCommand cmd4 = new SqlCommand("Stat_Organ_vs_BlGrp_Wise_Rcpnts_chart", con4);
            cmd4.CommandType = CommandType.StoredProcedure;
            cmd4.Parameters.Add("@CenterId", SqlDbType.NVarChar).Value = "ALL";
            con4.Open();
            cmd4.CommandTimeout = 600;
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataSet ds4 = new DataSet();
            da4.Fill(ds4);
            con4.Close();

            // Change to Rows[5][i] in live
             A1.Text = ds4.Tables[0].Rows[4][2].ToString();
             B1.Text = ds4.Tables[0].Rows[4][3].ToString();
             AB1.Text = ds4.Tables[0].Rows[4][4].ToString();
             O1.Text = ds4.Tables[0].Rows[4][5].ToString();


            //PieChart1.Title = new Title("Recipient Registered BloodGroup Wise");
            //PieChart1.SubTitle = new SubTitle("Since year 2018");
            ////Data
            //series = new List<Serie>();
            //series.Add(new Serie
            //{
            //    size = 130,
            //    data = new object[] {
            //                new object[] { "A", Convert.ToInt32(A1) },
            //                new object[] { "B", Convert.ToInt32(B1) },
            //                new object[] { "AB", Convert.ToInt32(AB1) },
            //                new object[] { "O", Convert.ToInt32(O1) }

            //            }
            //});

            //PieChart1.PlotOptions = new PlotOptionsPie
            //{
            //    allowPointSelect = true,
            //    cursor = "pointer",
            //    dataLabels = new DataLabels { enabled = true }
            //};

            //PieChart1.Tooltip = new ToolTip("'<b>'+ this.point.name +'</b>: '+ this.y +''");
            //PieChart1.Theme = "pink-floral";

            //// Bind
            //PieChart1.DataSource = series;
            //PieChart1.DataBind();
            #endregion

            #region Column chart Recipient
            ///----------------------
            SqlConnection con7 = new SqlConnection(ConfigurationManager.ConnectionStrings["JSConnection"].ConnectionString);
            SqlCommand cmd7 = new SqlCommand("Stat_Organ_vs_BlGrp_Wise_Rcpnts_Daily_chart", con7);
            cmd7.CommandType = CommandType.StoredProcedure;
            con7.Open();
            cmd7.CommandTimeout = 600;
            SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
            DataSet ds7 = new DataSet();
            da7.Fill(ds7);
            con7.Close();
             LiverTot.Text = ds7.Tables[0].Rows[0][0].ToString();
             LiverTod.Text = ds7.Tables[0].Rows[0][1].ToString();
             LiverTM.Text = ds7.Tables[0].Rows[0][2].ToString();
             LiverTY.Text = ds7.Tables[0].Rows[0][3].ToString();
             KidneyTot.Text = ds7.Tables[0].Rows[0][4].ToString();
             KidneyTod.Text = ds7.Tables[0].Rows[0][5].ToString();
             KidneyTM.Text = ds7.Tables[0].Rows[0][6].ToString();
             KidneyTY.Text = ds7.Tables[0].Rows[0][7].ToString();
             HeartTot.Text = ds7.Tables[0].Rows[0][8].ToString();
             HeartTod.Text = ds7.Tables[0].Rows[0][9].ToString();
             HeartTM.Text = ds7.Tables[0].Rows[0][10].ToString();
             HeartTY.Text = ds7.Tables[0].Rows[0][11].ToString();
             LungsTot.Text = ds7.Tables[0].Rows[0][12].ToString();
             LungsTod.Text = ds7.Tables[0].Rows[0][13].ToString();
             LungsTM.Text = ds7.Tables[0].Rows[0][14].ToString();
             LungsTY.Text = ds7.Tables[0].Rows[0][15].ToString();
             PancreasTot.Text = ds7.Tables[0].Rows[0][16].ToString();
             PancreasTod.Text = ds7.Tables[0].Rows[0][17].ToString();
             PancreasTM.Text = ds7.Tables[0].Rows[0][18].ToString();
             PancreasTY.Text = ds7.Tables[0].Rows[0][19].ToString();

            //hcColumnChartR.Title = new Title("Recipient Organ Statistics");
            ////hcColumnChartR.SubTitle = new SubTitle("");

            //// Axis
            //hcColumnChartR.YAxis.Add(new YAxisItem { title = new Title("Recipient Organs Count") });
            //hcColumnChartR.XAxis.Add(new XAxisItem
            //{
            //    categories = new[] { "Total","This Year","This Month", "Today"
            //                                                            //"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" 
            //                                                            }
            //});
            //// Data

            //series = new List<Serie>();
            //series.Add(new Serie
            //{
            //    name = "Heart",
            //    data = new Object[] { Convert.ToInt32(HeartTot), Convert.ToInt32(HeartTY),  Convert.ToInt32(HeartTM), Convert.ToInt32(HeartTod)
            //                                                            //, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Kidney",
            //    data = new Object[] { Convert.ToInt32(KidneyTot), Convert.ToInt32(KidneyTY),  Convert.ToInt32(KidneyTM), Convert.ToInt32(KidneyTod)
            //                                                            //, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Heart",
            //    data = new object[] { Convert.ToInt32(HeartTot), Convert.ToInt32(HeartTY),  Convert.ToInt32(HeartTM), Convert.ToInt32(HeartTod)
            //                                                            //, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Lungs",
            //    data = new object[] { Convert.ToInt32(LungsTot), Convert.ToInt32(LungsTY),  Convert.ToInt32(LungsTM), Convert.ToInt32(LungsTod)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Pancreas",
            //    data = new object[] { Convert.ToInt32(PancreasTot), Convert.ToInt32(PancreasTY),  Convert.ToInt32(PancreasTM), Convert.ToInt32(PancreasTod)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //hcColumnChartR.PlotOptions = new PlotOptionsColumn { borderColor = "#dedede", borderRadius = 4 };
            //hcColumnChartR.Tooltip = new ToolTip("'<b>'+ this.series.name +'</b><br/>' + this.x + ': '+ this.y +''");

            //// Bind
            //hcColumnChartR.DataSource = series;
            //hcColumnChartR.DataBind();
            #endregion

            #region Column chart Donor
            ///----------------------
            ///Total
            SqlConnection con8 = new SqlConnection(ConfigurationManager.ConnectionStrings["JSConnection"].ConnectionString);
            SqlCommand cmd8 = new SqlCommand("Stat_Organ_Donor_Daily_chart", con8);
            cmd8.CommandType = CommandType.StoredProcedure;
            con8.Open();
            cmd8.CommandTimeout = 600;
            SqlDataAdapter da8 = new SqlDataAdapter(cmd8);
            DataSet ds8 = new DataSet();
            da8.Fill(ds8);
            con8.Close();
             LiverTDTot.Text = ds8.Tables[0].Rows[0][0].ToString();
             LiverTDTod.Text = ds8.Tables[0].Rows[0][1].ToString();
             LiverTDTM.Text = ds8.Tables[0].Rows[0][2].ToString();
             LiverTDTY.Text = ds8.Tables[0].Rows[0][3].ToString();
             KidneyTDTot.Text = ds8.Tables[0].Rows[0][4].ToString();
             KidneyTDTod.Text = ds8.Tables[0].Rows[0][5].ToString();
             KidneyTDTM.Text = ds8.Tables[0].Rows[0][6].ToString();
             KidneyTDTY.Text = ds8.Tables[0].Rows[0][7].ToString();
             HeartTDTot.Text = ds8.Tables[0].Rows[0][8].ToString();
             HeartTDTod.Text = ds8.Tables[0].Rows[0][9].ToString();
             HeartTDTM.Text = ds8.Tables[0].Rows[0][10].ToString();
             HeartTDTY.Text = ds8.Tables[0].Rows[0][11].ToString();
             LungsTDTot.Text = ds8.Tables[0].Rows[0][12].ToString();
             LungsTDTod.Text = ds8.Tables[0].Rows[0][13].ToString();
             LungsTDTM.Text = ds8.Tables[0].Rows[0][14].ToString();
             LungsTDTY.Text = ds8.Tables[0].Rows[0][15].ToString();
             PancreasTDTot.Text = ds8.Tables[0].Rows[0][16].ToString();
             PancreasTDTod.Text = ds8.Tables[0].Rows[0][17].ToString();
             PancreasTDTM.Text = ds8.Tables[0].Rows[0][18].ToString();
             PancreasTDTY.Text = ds8.Tables[0].Rows[0][19].ToString();

            int totLiver = (Convert.ToInt32(LiverTDTot.Text) + Convert.ToInt32(LiverTDTod.Text) + Convert.ToInt32(LiverTDTM.Text) + Convert.ToInt32(LiverTDTY.Text));
            int totKidney = (Convert.ToInt32(KidneyTDTot.Text) + Convert.ToInt32(KidneyTDTod.Text) + Convert.ToInt32(KidneyTDTM.Text) + Convert.ToInt32(KidneyTDTY.Text));
            int totHeart = (Convert.ToInt32(HeartTDTot.Text) + Convert.ToInt32(HeartTDTod.Text) + Convert.ToInt32(HeartTDTM.Text) + Convert.ToInt32(HeartTDTY.Text));
            int totLungs = (Convert.ToInt32(LungsTDTot.Text) + Convert.ToInt32(LungsTDTod.Text) + Convert.ToInt32(LungsTDTM.Text) + Convert.ToInt32(LungsTDTY.Text));
            int totPancreas = (Convert.ToInt32(PancreasTDTot.Text) + Convert.ToInt32(PancreasTDTod.Text) + Convert.ToInt32(PancreasTDTM.Text) + Convert.ToInt32(PancreasTDTY.Text));

            int atotal = (Convert.ToInt32(LiverTDTot.Text) + Convert.ToInt32(KidneyTDTot.Text) + Convert.ToInt32(HeartTDTot.Text) + Convert.ToInt32(LungsTDTot.Text) + Convert.ToInt32(PancreasTDTot.Text));
            int atoday = (Convert.ToInt32(LiverTDTod.Text) + Convert.ToInt32(KidneyTDTod.Text) + Convert.ToInt32(HeartTDTod.Text) + Convert.ToInt32(LungsTDTod.Text) + Convert.ToInt32(PancreasTDTod.Text));
            int amonth = (Convert.ToInt32(LiverTDTM.Text) + Convert.ToInt32(KidneyTDTM.Text) + Convert.ToInt32(HeartTDTM.Text) + Convert.ToInt32(LungsTDTM.Text) + Convert.ToInt32(PancreasTDTM.Text));
            int ayear = (Convert.ToInt32(LiverTDTY.Text) + Convert.ToInt32(KidneyTDTY.Text) + Convert.ToInt32(HeartTDTY.Text) + Convert.ToInt32(LungsTDTY.Text) + Convert.ToInt32(PancreasTDTY.Text));

            int avgLiver = (atotal) / 4;
            int avgKidney = (atoday) / 4;
            int avgHeart = (amonth) / 4;
            int avgLungs = (ayear) / 4;

            LiverTl.Text = totLiver.ToString();
            KidneyTl.Text = totKidney.ToString();
            HeartTl.Text = totHeart.ToString();
            LungsTl.Text = totLungs.ToString();
            PancreasTl.Text = totPancreas.ToString();

            LiverAvg.Text = avgLiver.ToString();
            KidneyAvg.Text = avgKidney.ToString();
            HeartAvg.Text = avgHeart.ToString();
            LungsAvg.Text = avgLungs.ToString();
            //PancreasAvg.Text = avgPancreas.ToString();
            //hcColumnChartD.Title = new Title("Donor Organ Statistics");
            ////hcColumnChartD.SubTitle = new SubTitle("Since year 2018");

            //// Axis
            //hcColumnChartD.YAxis.Add(new YAxisItem { title = new Title("Donor Organs Count") });
            //hcColumnChartD.XAxis.Add(new XAxisItem
            //{
            //    categories = new[] { "Total","This Year","This Month","Today"
            //                                                            //"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" 
            //                                                            }
            //});
            //// Data
            ////var series = new List<Serie>();
            //series = new List<Serie>();
            //series.Add(new Serie
            //{
            //    name = "Heart",
            //    data = new Object[] { Convert.ToInt32(LiverTDTot), Convert.ToInt32(LiverTDTY), Convert.ToInt32(LiverTDTM), Convert.ToInt32(LiverTDTod)
            //                                                            //, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Kidney",
            //    data = new Object[] { Convert.ToInt32(KidneyTDTot), Convert.ToInt32(KidneyTDTY), Convert.ToInt32(KidneyTDTM), Convert.ToInt32(KidneyTDTod)
            //                                                            //, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Heart",
            //    data = new object[] { Convert.ToInt32(HeartTDTot), Convert.ToInt32(HeartTDTY), Convert.ToInt32(HeartTDTM), Convert.ToInt32(HeartTDTod)
            //                                                            //, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Lungs",
            //    data = new object[] { Convert.ToInt32(LungsTDTot), Convert.ToInt32(LungsTDTY), Convert.ToInt32(LungsTDTM), Convert.ToInt32(LungsTDTod)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //series.Add(new Serie
            //{
            //    name = "Pancreas",
            //    data = new object[] { Convert.ToInt32(PancreasTDTot), Convert.ToInt32(PancreasTDTY), Convert.ToInt32(PancreasTDTM), Convert.ToInt32(PancreasTDTod)
            //                                                            //, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1 
            //                                                            }
            //});
            //hcColumnChartD.PlotOptions = new PlotOptionsColumn { borderColor = "#dedede", borderRadius = 4 };
            //hcColumnChartD.Tooltip = new ToolTip("'<b>'+ this.series.name +'</b><br/>' + this.x + ': '+ this.y +''");

            //// Bind
            //hcColumnChartD.DataSource = series;
            //hcColumnChartD.DataBind();
            #endregion


        }
    }
}

