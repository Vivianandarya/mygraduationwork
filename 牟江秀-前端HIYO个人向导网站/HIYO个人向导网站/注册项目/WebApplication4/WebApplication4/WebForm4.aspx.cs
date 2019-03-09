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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string hiyoxdid = xdid.Text;
            string xdcity = city.Text;
            string xdfwid = fwid.Text;
            string xdluxian = luxian.Text;

            string xddate = date.Text;
            string hiyomoney = money.Text;
            string fwinfo = information.Text;



            string constr = WebConfigurationManager.ConnectionStrings["hiyoConnectionString"].ConnectionString;
            SqlConnection mycon = new SqlConnection(constr);
            //mycon.ConnectionString = constr;
            using (mycon)
            {
                mycon.Open();
                SqlCommand inscmd = new SqlCommand();
                string cmdstr = "insert into fwinformation(fwid,date,luxian,money,information,city,xdid) values(@xdfwid,@xddate,@xdluxian,@hiyomoney,@fwinfo,@xdcity,@hiyoxdid)";

                inscmd.CommandText = cmdstr;
                inscmd.Connection = mycon;
                inscmd.Parameters.Add(new SqlParameter("@xdfwid", xdfwid)); //为了给参数添加值
                inscmd.Parameters.Add(new SqlParameter("@xddate", xddate));//允许数据库中允许空的字段在这里不出现
                inscmd.Parameters.Add(new SqlParameter("@xdluxian", xdluxian));
                inscmd.Parameters.Add(new SqlParameter("@hiyomoney", hiyomoney));
                inscmd.Parameters.Add(new SqlParameter("@fwinfo", fwinfo));
                inscmd.Parameters.Add(new SqlParameter("@xdcity", xdcity));
                inscmd.Parameters.Add(new SqlParameter("@hiyoxdid", hiyoxdid));
                //所有添加数据库的以后都是这个过程
                inscmd.ExecuteNonQuery();
                //上述代码已经完成了添加的功能，每次只添加一条

                //提示用户添加成功 1.有label显示 2.弹出的对话框  JavaScript 这时候需要输出JavaScript

            }
            Label8.Text = "发布成功";
            Server.Transfer("delete.aspx",true);




        }

        }
    }
