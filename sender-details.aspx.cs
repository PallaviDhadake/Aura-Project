using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sender_details : System.Web.UI.Page
{
    iClass c = new iClass();
    public string proceedMsg, verifyMsg, errMsg, brochure;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            proceedData.Visible = true;
           

            if  (Session["userMob"] == null || Session["verifyCode"] == null)
            {
                //proceedData.Visible = true;
            }

            //Request.QueryString["id"] = "";

            //proceedData.Visible = false;
            //otpVerify.Visible = false;
            //success.Visible = true;



        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string finalOtp = new Random().Next(1000, 9999).ToString();

            if (txtName.Text == "" || txtMobile.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * fields are compulsory');", true);
                return;
            }

            else if (c.ValidateMobile(txtMobile.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Mobile No');", true);
                return;
            }

            Session["userMob"] = txtMobile.Text;
            //Session["userEmail"] = txtEmail.Text;
            Session["verifyCode"] = finalOtp;

            string msgData = "Your OTP is " + Session["verifyCode"].ToString() + " for user verification.\nP-Square Constructions";

            c.SendSMS(msgData, Session["userMob"].ToString());


            //proceedMsg = c.ErrNotification(2, "OTP Send Your Entered Mobile Number");
            //return;



            //ScriptManager.RegisterStartupScript(btnSubmit.Page, btnSubmit.[GetType()], "text", "CloseMe()", true);

            //ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "CloseMe()", true);

            // ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Verified Sucessfully');", true);

            otpVerify.Visible = true;
            proceedData.Visible = false;

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSubmit_Click", ex.Message.ToString());
            return;
        }

    }

    protected void btnVerify_Click(object sender, EventArgs e)
    {
        try
        {

            success.Visible = true;
            otpVerify.Visible = false;


            if (Session["userMob"] == null || Session["verifyCode"] == null)
            {
                //Response.Redirect(Master.rootPath + "registration", false);
            }

            if (txtVerify.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Verification Code');", true);
                return;
                //verifyMsg = c.ErrNotification(2, "Enter Verification Code");
                //return;
            }
            else if (txtVerify.Text != Session["verifyCode"].ToString())
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Wrong Verification Code Entered');", true);
                return;
                //verifyMsg = c.ErrNotification(2, "Wrong Verification Code Entered");
                //return;
            }
            else
            {

                if (Request.QueryString["plan"] != null)
                {
                    switch (Request.QueryString["plan"])
                    {
                        case "2-BHK-Luxurious-Flats":
                            brochure = "2-BHK-Luxurious-Flats.pdf";
                            break;

                        case "3-BHK-Luxurious-Flats":
                            brochure = "3-BHK-Luxurious-Flats.pdf";
                            break;

                        case "3-BHK-Sky-Villas":
                            brochure = "3-BHK-Sky-Villas.pdf";
                            break;

                        case "4-BHK-Sky-Villas":
                            brochure = "4-BHK-Sky-Villas.pdf";
                            break;

                        case "Commercial-Shops":
                            brochure = "Commercial-Shops.pdf";
                            break;

                        case "Penthouses":
                            brochure = "Penthouses.pdf";
                            break;

                        case "Premium-Bungalows":
                            brochure = "Premium-Bungalows.pdf";
                            break;

                    }
                }
                else
                {

                }


                success.Visible = true;
                otpVerify.Visible = false;
            }

            
           

            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "timeFunction();", true);


        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSubmit_Click", ex.Message.ToString());
            return;
        }

        
    }
    
    protected void btnResend_Click(object sender, EventArgs e)
    {
        try
        {
            string finalOtp = new Random().Next(1000, 9999).ToString();
            Session["verifyCode"] = finalOtp;

            string msgData = "Your OTP is " + Session["verifyCode"].ToString() + " for user verification.\nP-Square Constructions";

            c.SendSMS(msgData, Session["userMob"].ToString());

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Verification Code is Re-sent to your mobile number');", true);
                return;

           
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSubmit_Click", ex.Message.ToString());
            return;
        }
    }


    protected void btnCancel_Click(object sender, EventArgs e)
    {
       
        Session["userMob"] = null;
        Session["verifyCode"] = null;

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "closePopupForm();", true);

    }
}
