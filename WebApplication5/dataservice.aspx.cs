using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class dataservice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null) return;
            string json = (new StreamReader(Request.InputStream)).ReadToEnd();
            JObject jReq = JObject.Parse(json);
            if (jReq.GetValue("type").ToString() == "getpatients")
            {
                string xx = Session["name"].ToString();
                string yy = Session["dept_name"].ToString();
                Response.ClearContent();
                Response.ContentType = "application/json";
                //context.Response.Write((new System.Web.Script.Serialization.JavaScriptSerializer()).Serialize(names));
                JArray jArr = JArray.Parse(get_patients_name(yy));
                JObject jObj = new JObject();
                jObj.Add(new JProperty("patients", jArr));
                jObj.Add(new JProperty("name", xx));
                jObj.Add(new JProperty("dept_name", yy));
                //System.Diagnostics.Debug.WriteLine(jObj.ToString());
                Response.Write(jObj.ToString());
            }
            if (jReq.GetValue("type").ToString() == "insert")
            {
                JToken tmptk = jReq.GetValue("data");
                JObject tmp = tmptk as JObject;
                if (tmp != null)
                {

                }
                //System.Diagnostics.Debug.WriteLine(System.Text.RegularExpressions.Regex.Replace("123.456789", @"(^\d{1,}\.\d{2})\d{1,}$", "$1").ToString());
            }
            return;
        }

        public string get_patients_name(string dept_name)
        {
            string names = null;
            using (OracleConnection myConn = new OracleConnection("Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=10.10.4.3)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME = orcl)));User ID=system;Password=manager"))
            {
                OracleDataAdapter dataAdapter = new OracleDataAdapter();
                OracleCommand myCmd = new OracleCommand("", myConn);
                myCmd.CommandText = "select pat_master_index.name,bed_rec.bed_label,PAT_MASTER_INDEX.Inp_no,pat_master_index.sex,floor(MONTHS_BETWEEN(sysdate,pat_master_index.date_of_birth)/12) as age, to_char(PATS_IN_HOSPITAL.ADMISSION_DATE_TIME, 'YYYY-MM-DD') as admission_date,dept_dict.dept_name,pat_visit.charge_type,pats_in_hospital.diagnosis from pat_visit,bed_rec,dept_dict,dual, PATS_IN_HOSPITAL left join pat_master_index on PATS_IN_HOSPITAL.Patient_Id = pat_master_index.patient_id where pats_in_hospital.patient_id = pat_visit.patient_id  and pats_in_hospital.visit_id = pat_visit.visit_id and PATS_IN_HOSPITAL.WARD_CODE = bed_rec.WARD_CODE and PATS_IN_HOSPITAL.bed_no = bed_rec.bed_no and dept_dict.dept_code = PATS_IN_HOSPITAL.dept_code and dept_dict.dept_name = :q order by bed_rec.bed_no";
                myCmd.Parameters.Add("q", OracleType.NVarChar);
                myCmd.Parameters["q"].Value = System.Text.RegularExpressions.Regex.Replace(dept_name, "护理站", ""); ;
                dataAdapter.SelectCommand = myCmd;
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds);
                //List<string> lnames = new List<string>();
                //foreach (DataRow x in ds.Tables[0].Rows)
                //{
                //    lnames.Add(x[0].ToString() + "_" + x[1].ToString() + "_" + x[2].ToString() + "_" + x[3].ToString() + "_" + x[4].ToString() + "_" + x[5].ToString() + "_" + x[6].ToString() + "_" + x[7].ToString());
                //}
                //names = JsonConvert.SerializeObject(ds.Tables[0]); 
                //names = "[\n\"" + string.Join("\",\n\"", lnames.ToArray()) + "\"\n]";
                //names = lnames.ToArray();
                names = JsonConvert.SerializeObject(ds.Tables[0], new DataTableConverter());
            }
            return names;
        }


    }
}