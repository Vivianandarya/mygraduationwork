using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void yklog_Click(object sender, EventArgs e)
        {
            string uname = username.Text;
            string pwd = password.Text;
            string constr = WebConfigurationManager.ConnectionStrings["hiyoConnectionString"].ConnectionString;
            SqlConnection myCon = new SqlConnection(constr);
          
            myCon.Open();

            string cmdstr = "select * from [user] where userid='"+uname+"'";
            // and password='"+pwd+" '";
            SqlCommand cmd = new SqlCommand(cmdstr, myCon);
            SqlDataReader reader = cmd.ExecuteReader(); //对于结果的处理根据reader来判断
            //GridView1.DataSource = reader;
            //GridView1.DataBind();
            if (reader.Read())
            {
                if (pwd == reader.GetString(1))
                {
                    Label1.Text = "登陆成功";
                    Server.Transfer("index.aspx",true);

                }
                else
                {
                    Label1.Text = "密码错误";
                }


            }
            else
            {
                Label1.Text = "用户名错误";

            }

            // = myCon.State.ToString();


            myCon.Close();
        }

        protected void guidelog_Click(object sender, EventArgs e)
        {
              string uname = username.Text;
            string pwd = password.Text;
            string constr = WebConfigurationManager.ConnectionStrings["hiyoConnectionString"].ConnectionString;
            SqlConnection myCon = new SqlConnection(constr);
          
            myCon.Open();

            string cmdstr = "select * from [user] where userid='"+uname+"'";
            // and password='"+pwd+" '";
            SqlCommand cmd = new SqlCommand(cmdstr, myCon);
            SqlDataReader reader = cmd.ExecuteReader(); //对于结果的处理根据reader来判断
            //GridView1.DataSource = reader;
            //GridView1.DataBind();
            if (reader.Read())
            {
                if (pwd == reader.GetString(1))
                {
                    Label1.Text = "登陆成功";
                    Server.Transfer("WebForm4.aspx", true);
                }
                else
                {
                    Label1.Text = "密码错误";
                }


            }
            else
            {
                Label1.Text = "用户名错误";

            }

            // = myCon.State.ToString();


            myCon.Close();
        }
        

        }
     }
 
  