using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetConnectionString()
    {
   

        return System.Configuration.ConfigurationManager.ConnectionStrings["myDbConnectionString1"].ConnectionString;
 
    }




    private void execution(string name, string username, string password, string emailid)
    {
  
        SqlConnection conn = new SqlConnection(GetConnectionString());

        string sql = "INSERT INTO myTb (name, username, password, emailid) VALUES "
        + " (@name, @username, @password, @emailid)";
     
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
      
            SqlParameter[] pram = new SqlParameter[4];
       
            pram[0] = new SqlParameter("@name", SqlDbType.VarChar, 50);
            pram[1] = new SqlParameter("@username", SqlDbType.VarChar, 50);
            pram[2] = new SqlParameter("@password", SqlDbType.VarChar, 50);
            pram[3] = new SqlParameter("@emailid", SqlDbType.Char, 10);
      
            pram[0].Value = name;
            pram[1].Value = username;
            pram[2].Value = password;
            pram[3].Value = emailid;
        
            for (int i = 0; i < pram.Length; i++)
            {
                cmd.Parameters.Add(pram[i]);
            }
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex_msg)
        {
           
            string msg = "Error occured while inserting";
            msg += ex_msg.Message;
            throw new Exception(msg);
        }
        finally
        {
            
            conn.Close();
        }

    }


   

    protected void create_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = ConfigurationManager.ConnectionStrings["myDbConnectionString1"].ToString();

        sds.SelectParameters.Add("name", TypeCode.String, this.name.Text);
        sds.SelectParameters.Add("username", TypeCode.String, this.username.Text);
        sds.SelectParameters.Add("password", TypeCode.String, this.password.Text);
        sds.SelectParameters.Add("emailid", TypeCode.String, this.emailid.Text);
        sds.SelectParameters.Add("tahsilat", TypeCode.String, this.tahsilat.Text);
       


        sds.SelectCommand = "SELECT * FROM [myTb] WHERE [username] = @username";

        DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);

        if (dv.Count != 0)
        {

            this.lblinfo.Text = "ثبت نام با موفقيت انجام نشد";
            return;
        }
        else
        {   
       
            execution(name.Text,username.Text,password.Text,emailid.Text);
         
            this.lblinfo.Text = "ثبت نام با موفقيت انجام شد";
            this.name.Text = "";
            this.username.Text = "";
            this.password.Text = "";
            this.emailid.Text = "";
            this.tahsilat.Text = "";
        }
    }
}
