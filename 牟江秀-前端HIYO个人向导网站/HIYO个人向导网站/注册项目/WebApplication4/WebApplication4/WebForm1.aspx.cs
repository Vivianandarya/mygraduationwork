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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string hiyoxdid = xdid.Text;
            string pword = password.Text;
            string xdname = name.Text;
            string xdsex = sex.SelectedValue;
            string xdpn = pnumber.Text;
            string identify = id.Text;
            string xdcity = city.Text;
            string constr = WebConfigurationManager.ConnectionStrings["hiyoConnectionString"].ConnectionString;
            SqlConnection mycon = new SqlConnection(constr);
            //mycon.ConnectionString = constr;
            using (mycon)
            {
                mycon.Open();
                SqlCommand inscmd = new SqlCommand();
                string cmdstr = "insert into guide(xdid,id,pnumber,name,sex,city,password) values(@hiyoxdid,@identify,@xdpn,@xdname,@xdsex,@xdcity,@pword)";
                inscmd.CommandText = cmdstr;
                inscmd.Connection = mycon;
                inscmd.Parameters.Add(new SqlParameter("@hiyoxdid", hiyoxdid)); //为了给参数添加值
                inscmd.Parameters.Add(new SqlParameter("@identify", identify));//允许数据库中允许空的字段在这里不出现
                inscmd.Parameters.Add(new SqlParameter("@xdpn", xdpn));
                inscmd.Parameters.Add(new SqlParameter("@xdname", xdname));
                inscmd.Parameters.Add(new SqlParameter("@xdsex", xdsex));
                inscmd.Parameters.Add(new SqlParameter("@xdcity", xdcity));
                inscmd.Parameters.Add(new SqlParameter("@pword", pword));
                //所有添加数据库的以后都是这个过程
                inscmd.ExecuteNonQuery();
                //上述代码已经完成了添加的功能，每次只添加一条

                //提示用户添加成功 1.有label显示 2.弹出的对话框  JavaScript 这时候需要输出JavaScript

            }
            
            Label6.Text = "注册成功";
           
            Server.Transfer("index.aspx", true);
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string hiyoykid = xdid.Text;
            string ykpword = password.Text;
            string ykname = name.Text;
            string yksex = sex.SelectedValue;
            string ykpn = pnumber.Text;
            string identify = id.Text;
            string ykcity = city.Text;



            string constr = WebConfigurationManager.ConnectionStrings["hiyoConnectionString"].ConnectionString;
            SqlConnection mycon = new SqlConnection(constr);
            //mycon.ConnectionString = constr;
            using (mycon)
            {
                mycon.Open();
                SqlCommand inscmd = new SqlCommand();
                string cmdstr = "insert into user (userid,id,pnumber,name,sex,city,password) values(@hiyoykid,@identify,@ykpn,@ykname,@yksex,@ykcity,@ykpword)";

                inscmd.CommandText = cmdstr;
                inscmd.Connection = mycon;
                inscmd.Parameters.Add(new SqlParameter("@hiyoykid", hiyoykid)); //为了给参数添加值
                inscmd.Parameters.Add(new SqlParameter("@identify", identify));//允许数据库中允许空的字段在这里不出现
                inscmd.Parameters.Add(new SqlParameter("@ykpn", ykpn));
                inscmd.Parameters.Add(new SqlParameter("@ykname", ykname));
                inscmd.Parameters.Add(new SqlParameter("@yksex", yksex));
                inscmd.Parameters.Add(new SqlParameter("@ykcity", ykcity));
                inscmd.Parameters.Add(new SqlParameter("@ykpword", ykpword));
                //所有添加数据库的以后都是这个过程
                inscmd.ExecuteNonQuery();
                //上述代码已经完成了添加的功能，每次只添加一条

                //提示用户添加成功 1.有label显示 2.弹出的对话框  JavaScript 这时候需要输出JavaScript

            }

            Label7.Text = "注册成功";

            Server.Transfer("index.aspx", true);
            
        }

        }

        

  


}
