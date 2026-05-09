using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace God
{
  public partial class Default : System.Web.UI.Page
  {
    SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // POOJA SAVE
    protected void btnSubmitPooja_Click(object sender, EventArgs e)
    {
      try
      {
        string poojaType = "";

        if (rb1.Checked)
          poojaType = "Birthday";
        else if (rb2.Checked)
          poojaType = "Anniversary";
        else if (rb3.Checked)
          poojaType = "Pitra Pooja";

        con.Open();

        SqlCommand cmd = new SqlCommand(
            "INSERT INTO PoojaDetails (PoojaType, PoojaDate) VALUES (@type, @date)", con);

        cmd.Parameters.AddWithValue("@type", poojaType);
        cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(txtDate.Text));

        int result = cmd.ExecuteNonQuery();
        con.Close();

        lblPoojaSuccess.Text = "Details Submitted  ";

        // 🔥 CALL JS TO HIDE MESSAGE
        ScriptManager.RegisterStartupScript(this, this.GetType(), "hideMsg", "hideMessage();", true);

        // 🔥 CLEAR FORM
        txtDate.Text = "";
        rb1.Checked = false;
        rb2.Checked = false;
        rb3.Checked = false;
      }
      catch (Exception ex)
      {
        lblPoojaSuccess.Text = "Error: " + ex.Message;
      }
    }

    // DEVOTEE SAVE
    protected void btnSubmitDevotee_Click(object sender, EventArgs e)
    {
      try
      {
        con.Open();

        SqlCommand cmd = new SqlCommand(
            "INSERT INTO DevoteeDetails VALUES (@name,@aadhar,@address,@pin,@phone,@taddress,@tpin,@tphone)", con);

        cmd.Parameters.AddWithValue("@name", txtName.Text);
        cmd.Parameters.AddWithValue("@aadhar", txtAadhar.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@pin", txtPincode.Text);
        cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
        cmd.Parameters.AddWithValue("@taddress", txtTempleAddress.Text);
        cmd.Parameters.AddWithValue("@tpin", txtTemplePincode.Text);
        cmd.Parameters.AddWithValue("@tphone", txtTemplePhone.Text);

        cmd.ExecuteNonQuery();
        con.Close();

        // ✅ SUCCESS MESSAGE
        lblDevoteeSuccess.Text = "Details Submitted Successfully";

        // 🔥 CLEAR ALL FIELDS
        txtName.Text = "";
        txtAadhar.Text = "";
        txtAddress.Text = "";
        txtPincode.Text = "";
        txtPhone.Text = "";
        txtTempleAddress.Text = "";
        txtTemplePincode.Text = "";
        txtTemplePhone.Text = "";

        // 🔥 HIDE MESSAGE AFTER 2 SEC
        ScriptManager.RegisterStartupScript(this, this.GetType(),
            "hideMsgDevotee", "hideDevoteeMessage();", true);
      }
      catch (Exception ex)
      {
        lblDevoteeSuccess.Text = "Error: " + ex.Message;
      }
    }
  }
  
}
