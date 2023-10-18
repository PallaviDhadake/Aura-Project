using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    iClass c = new iClass();
    public string currentYear, rootPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        currentYear = DateTime.Now.Year.ToString();
        rootPath = c.ReturnHttp();

        if (!IsPostBack)
        {
            btnSubmit.Attributes.Add("onclick", "this.disabled=true; this.value='Processing...';" + ClientScript.GetPostBackEventReference(btnSubmit, null) + ";");
        }
    }

    protected void UpdatePanel1_Load(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "grecaptcha.render('recaptcha', {'sitekey': '6LcNBIUUAAAAADbX-_n6UhdJhtAxQDgiypcyZqSN'});", true);

    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtName.Text == "" || txtCity.Text == "" || txtMobileNo.Text == "" || ddrBudget.SelectedIndex == 0 || ddrOccup.SelectedIndex==0|| ddrproperty.SelectedIndex==0|| ddrpurpose.SelectedIndex==0|| ddrRefer.SelectedIndex==0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * marked fields are mandatory');", true);
                return;
            }
            else if (c.ValidateMobile(txtMobileNo.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter  Valid Mobile No');", true);
                return;
            }
            //else if (c.EmailAddressCheck(txtEmail.Text) == false)
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter  Valid Email Address');", true);
            //    return;
            //}

            string EncodedResponse = Request.Form["g-Recaptcha-Response"];
            bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);

            if (!IsCaptchaValid)
            {
                //InValid Request
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Captcha Verification Failed');", true);
                return;
            }

            StringBuilder strMail = new StringBuilder();

            strMail.Append("Dear Sir, <br/>");
            strMail.Append("You have a new Enquiry at P - Square Constructions.com, <br/>");
            strMail.Append("Details are given below, <br/><br/>");
            strMail.Append("Name : <b>" + txtName.Text + "</b> <br/>");
            strMail.Append("Email  : <b>" + txtEmail.Text + "</b> <br/>");
            strMail.Append("City : <b>" + txtCity.Text + "</b> <br/>");
            strMail.Append("Mobile No : <b>" + txtMobileNo.Text + "</b> <br/>");
            strMail.Append("Occupation : <b>" + ddrOccup.SelectedItem.Text + "</b> <br/>");
            strMail.Append("Type Of Property : <b>" + ddrproperty.SelectedItem.Text + "</b><br>");
            strMail.Append("Budget : <b>" + ddrBudget.SelectedItem.Text + "</b><br>");
            strMail.Append("Reference : <b>" + ddrRefer.SelectedItem.Text + "</b><br>");
            strMail.Append("Buying Purpose : <b>" + ddrpurpose.SelectedItem.Text + "</b><br>");
            strMail.Append("Message : <b>" + txtmsg.Text + "</b>");

            //c.SendMail("info@intellect-systems.com", "Eibenstock Positron", "prajaktap204@gmail.com", strMail.ToString(), "New Feedback at PositronSolutions", "", true, "", "");
           
            //c.SendMail("info@intellect-systems.com", "Eibenstock Positron", "pallavidhadake20@gmail.com", strMail.ToString(), "New Feedback at PositronSolutions", "", true, "", "");

            c.SendMail("admin@psquareconstructions.com", "P-Square Constructions", "psquareconstructionssangli@gmail.com", strMail.ToString(), "New Enquiry at P-Square Constructions", "", true, "", "");

            // ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Thank you for your valuable enquiry. We will get back to you soon.');", true);

            Response.Redirect("thank-you.aspx");

            //txtName.Text = txtEmail.Text = txtCity.Text = txtMobileNo.Text = txtmsg.Text = "";
            //ddrRefer.SelectedIndex = ddrpurpose.SelectedIndex = ddrproperty.SelectedIndex = ddrOccup.SelectedIndex = ddrBudget.SelectedIndex = 0;

            
            //errMsg = c.ErrNotification(1, "Thank you for your Feedback..!! We'll get back to you soon..!!");

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSubmit_Click", ex.Message.ToString());
            return;
        }
    }
}