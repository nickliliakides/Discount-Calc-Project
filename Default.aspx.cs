using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    public void Page_Load(object sender, EventArgs e)
    {

        RestBtn.Visible = false;

    }

    protected void CalcBBtn_Click(object sender, EventArgs e)
    {
        double drAmount;
        double mnAmount;
        double dsAmount;
        double discount;
        double final;
        double finalPrice;
        double discountAmount;

        drAmount = (2.65 * Convert.ToInt32(DDLDR1.Text)) + (3.95 * Convert.ToInt32(DDLDR2.Text)) + (5.85 * Convert.ToInt32(DDLDR3.Text));
        mnAmount = (7.65 * Convert.ToInt32(DDLM1.Text)) + (11.95 * Convert.ToInt32(DDLM2.Text)) + (16.65 * Convert.ToInt32(DDLM3.Text));
        dsAmount = (4.95 * Convert.ToInt32(DDLDS1.Text)) + (6.25 * Convert.ToInt32(DDLDS2.Text));
        final = drAmount + mnAmount + dsAmount;


        switch (DWDDL.Text)
        {
            case "Monday":
                if (CBSD.Checked == false && CBND.Checked == false)
                {

                    discount = 0.7;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round(((drAmount * discount) + mnAmount + dsAmount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }
                }
                else if (CBSD.Checked == true && CBND.Checked == false)
                {
                    discount = 0.75;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }                else if (CBSD.Checked == false && CBND.Checked == true)
                {
                    discount = 0.80;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else
                {
                    FPL.Text = "You've choosen to apply 2 discounts at the same bill which is not possible.";
                }

                break;

            case "Tuesday":
                if (CBSD.Checked == false && CBND.Checked == false)
                {

                    discount = 0.8;

                    if (final >= 20 && drAmount > 0)
                    {
                        finalPrice = Math.Round((drAmount + (mnAmount * discount) + dsAmount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " +
                                   discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }
                }
                else if (CBSD.Checked == true && CBND.Checked == false)
                {
                    discount = 0.75;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " +
                                   discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else if (CBSD.Checked == false && CBND.Checked == true)
                {
                    discount = 0.80;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " +
                                   discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else
                {
                    FPL.Text = "You've choosen to apply 2 discounts at the same bill which is not possible.";
                }

                break;

            case "Wednesday":
                if (CBSD.Checked == false && CBND.Checked == false)
                {

                    discount = 0.8;

                    if (final >= 20 && drAmount > 0 && mnAmount > 0 && dsAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }
                }
                else if (CBSD.Checked == true && CBND.Checked == false)
                {
                    discount = 0.75;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else if (CBSD.Checked == false && CBND.Checked == true)
                {
                    discount = 0.80;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else
                {
                    FPL.Text = "You've choosen to apply 2 discounts at the same bill which is not possible.";
                }

                break;
            case "Thursday":
                if (CBSD.Checked == false && CBND.Checked == false)
                {

                    discount = 0.8;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round(((drAmount * discount) + mnAmount + dsAmount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }
                }
                else if (CBSD.Checked == true && CBND.Checked == false)
                {
                    discount = 0.75;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else if (CBSD.Checked == false && CBND.Checked == true)
                {
                    discount = 0.80;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else
                {
                    FPL.Text = "You've choosen to apply 2 discounts at the same bill which is not possible.";
                }

                break;
            case "Friday":
                if (CBSD.Checked == false && CBND.Checked == false)
                {

                    discount = 0.85;

                    if (final >= 20 && drAmount > 0 && dsAmount > 0 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((drAmount + ((mnAmount + dsAmount) * discount)), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }
                }
                else if (CBSD.Checked == true && CBND.Checked == false)
                {
                    discount = 0.75;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else if (CBSD.Checked == false && CBND.Checked == true)
                {
                    discount = 0.80;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else
                {
                    FPL.Text = "You've choosen to apply 2 discounts at the same bill which is not possible.";
                }

                break;

            case "Saturday":
                if (CBSD.Checked == false && CBND.Checked == false)
                {

                    discount = 0.9;

                    if (final >= 20 && drAmount > 0 && dsAmount > 0 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((drAmount + ((mnAmount + dsAmount) * discount)), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }
                }
                else if (CBSD.Checked == true && CBND.Checked == false)
                {
                    discount = 0.75;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else if (CBSD.Checked == false && CBND.Checked == true)
                {
                    discount = 0.80;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else
                {
                    FPL.Text = "You've choosen to apply 2 discounts at the same bill which is not possible.";
                }

                break;

            case "Sunday":
                if (CBSD.Checked == false && CBND.Checked == false)
                {

                    discount = 0.8;

                    if (final >= 20 && drAmount > 0 && dsAmount > 0)
                    {
                        finalPrice = Math.Round((drAmount + (mnAmount * discount) + dsAmount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }
                }
                else if (CBSD.Checked == true && CBND.Checked == false)
                {
                    discount = 0.75;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else if (CBSD.Checked == false && CBND.Checked == true)
                {
                    discount = 0.80;

                    if (final >= 20 && mnAmount > 0)
                    {
                        finalPrice = Math.Round((final * discount), 2);
                        discountAmount = Math.Round((final - finalPrice), 2);
                        FPL.Text = "Final Price: " + finalPrice.ToString("C2") + "<br />Discounted Amount: " + discountAmount.ToString("C2") + "<br />Initial Price: " + final.ToString("C2");
                    }
                    else
                    {
                        FPL.Text = "Final Price is: " + final.ToString("C2") + "<br />The discount requirments haven't been met.";
                    }

                }
                else
                {
                    FPL.Text = "You've choosen to apply 2 discounts at the same bill which is not possible.";
                }

                break;
            default:
                FPL.Text = "You haven't choosen a day of the week, please pick a day from the list.";
                break;
        }
        RestBtn.Visible = true;
    }

    protected void RestBtn_Click(object sender, EventArgs e)
    {
        DDLDR1.Text = "0";
        DDLDR2.Text = "0";
        DDLDR3.Text = "0";
        DDLM1.Text = "0";
        DDLM2.Text = "0";
        DDLM3.Text = "0";
        DDLDS1.Text = "0";
        DDLDS2.Text = "0";
        FPL.Text = "";
        CalcBBtn.Visible = true;

    }



    protected void DWDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (DWDDL.Text)
        {
            case "Monday":
                DailyOffer.Text = "Monday's offer is 30% off drinks, if meal has been ordered.";
                break;
            case "Tuesday":
                DailyOffer.Text = "Tuesday's offer is 20% off meals, if drink has been ordered.";
                break;
            case "Wednesday":
                DailyOffer.Text = "Wednesday's offer is 20% off bill, if drink,meal and dessert have been ordered.";
                break;
            case "Thursday":
                DailyOffer.Text = "Thursday's offer is 20% off drinks, if meal has been ordered.";
                break;
            case "Friday":
                DailyOffer.Text = "Friday's offer is 15% off food(meals, desserts), if drink,meal and dessert have been ordered.";
                break;
            case "Saturday":
                DailyOffer.Text = "Saturday's offer is 10% off food(meals, desserts), if drink,meal and dessert have been ordered.";
                break;
            case "Sunday":
                DailyOffer.Text = "The Sunday's offer is 20% off meals, if drink has been ordered.";
                break;
            default:
                DailyOffer.Text = "";
                break;

        }

        CalcBBtn.Visible = true;
        RestBtn.Visible = true;
        
    }
}
