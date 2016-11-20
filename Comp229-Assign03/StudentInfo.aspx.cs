using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        string studentid;
        SqlConnection conn = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True");
        
        //SqlConnection conn = new SqlConnection("Server=LAPTOP-AFOILVTO;Database=Comp229Assign03;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            studentid = Request.QueryString["studentid"];
            if (!IsPostBack)
            {
                bindData();
            }
        }
        private void bindData()
        {
            //throw new NotImplementedException();

            try
            {
                conn.Open();
                //From student table
                SqlCommand studentsCmd = new SqlCommand("SELECT * FROM Students WHERE StudentID = " + studentid, conn);
                SqlDataReader datReader = studentsCmd.ExecuteReader();
                datReader.Read();
                SID.Text = datReader["studentID"].ToString();
                LName.Text = datReader["LastName"].ToString();
                FName.Text = datReader["FirstMidName"].ToString();
                EDate.Text = datReader["EnrollmentDate"].ToString();
                datReader.Close();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}