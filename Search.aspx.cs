using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlDataSource sds = new SqlDataSource();
        
        sds.ConnectionString = ConfigurationManager.ConnectionStrings["myDbConnectionString1"].ToString();
        

        sds.SelectParameters.Add("ezafekari", TypeCode.String, this.TextBox1.Text);


    
        sds.SelectCommand = "SELECT * FROM [myTb] WHERE [ezafekari]=@ezafekari";
        
        DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);
        if (dv.Count == 0)
        {
            this.Label1.Text = "No Data Found";
            return;
        }
        else
        {
            GridView1.DataSource = sds;
            GridView1.DataBind();
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();

        sds.ConnectionString = ConfigurationManager.ConnectionStrings["myDbConnectionString1"].ToString();


        sds.SelectParameters.Add("name", TypeCode.String, this.TextBox2.Text);



        sds.SelectCommand = "SELECT * FROM [myTb] WHERE [name]=@name";

        DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);
        if (dv.Count == 0)
        {
            this.Label2.Text = "No Data Found";
            return;
        }
        else
        {
            GridView2.DataSource = sds;
            GridView2.DataBind();

        }

    }
}
