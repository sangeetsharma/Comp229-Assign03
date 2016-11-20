using System;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindList();
            }
        }

        protected void BindList()
        {
            //SqlConnection connection = new SqlConnection("Server=LAPTOP-AFOILVTO;Database=Comp229Assign03;Integrated Security=True");
            SqlConnection connection = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True");
            SqlCommand comm = new SqlCommand("SELECT * FROM Students", connection);

            

            try
            {
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();

                

                Stu_List.DataSource = reader;
                Stu_List.DataBind();

                reader.Close();




            }
            finally
            {
                connection.Close();
            }
        }


        
       
            


    }
}