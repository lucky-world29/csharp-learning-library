using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms_Practice
{
    public partial class ListControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RadioButtonList1.Items.Add("Bhubaneswar");
            RadioButtonList1.Items.Add("Delhi");
            RadioButtonList1.Items.Add(new ListItem("Chennai","city3"));
            RadioButtonList1.Items.Add(new ListItem("Ohayo", "city4"));
            RadioButtonList1.Items.Add(new ListItem("Singapur", "city5"));
            RadioButtonList1.Items.Add(new ListItem("Nepal", "city6"));

            //ListItem li1 = new ListItem("Red", "Color1");
            //ListItem li2 = new ListItem("Green", "Color2");
            //ListItem li3 = new ListItem("Yellow", "Color3");

            //  ListItem[] colors = new ListItem[3] { li1, li2, li3 };

            // CheckBoxList1.Items.AddRange(colors);

            CheckBoxList1.Items.AddRange(new ListItem[]{
                new ListItem("Red","color1"),
                new ListItem("Green","color2"),
                new ListItem("Yellow","color3"),
                new ListItem("Brown","color4")
            });
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}