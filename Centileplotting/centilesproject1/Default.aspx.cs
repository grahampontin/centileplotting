using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;

namespace centilesproject1
{

    public partial class _Default : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            ///  (Calls whodataparser to read who data file - invalid for now)
            ///WHODataParser dataParser = new WHODataParser("d:/bmiboys02.txt");
            ///DataTable dataTable = dataParser.ParseFile();

            /// (attempt to convert into json with newtonsoft serialiazer - redundant)
            /// string whodata = JsonConvert.SerializeObject(dataTable);
            
            string monthOne;
            monthOne = valueAtOneMonth.Text;

            if (!IsPostBack)
            {



               /// need to find way of getting input data - this doesn't work at present
               /// trialdata.Text = trialdata.Text + "[(1, " + monthOne + ")]";
                trialdata.Text = "[(1, 14)]";
                cent3.Text = "[11.3,12.6,13.8,14.4,14.7,14.8,14.9,14.9,14.9,14.8,14.7,14.6,14.5,14.4,14.3,14.2,14.2,14.1,14,13.9,13.9,13.8,13.8,13.7,13.7];";


            }


            /// gridview code that displayed output of whodataparser - now redundant
            /// GridView1.DataSource = output;
            /// GridView1.DataBind();

        }

    }
}
