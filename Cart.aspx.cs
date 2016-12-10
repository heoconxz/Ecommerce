using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void BuyButton_Click(object sender, EventArgs e)
    {
        string productFK = Request.Cookies["ProductID"].Value.ToString();
        string quantity = Request.Cookies[productFK].Value.ToString();
        string userId = "25a02ec7 - 0f3f - 40c0 - 84cc - 0aeefdd50bcf";

        // Have to reset parameters because can't change key value.
        while (OrderDataSource.InsertParameters.Count > 0)
            OrderDataSource.InsertParameters.RemoveAt(0);
        OrderDataSource.InsertParameters.Add("ProductFK", productFK);
        OrderDataSource.InsertParameters.Add("Quantity", quantity); 
        OrderDataSource.InsertParameters.Add("UserID", userId);
        OrderDataSource.Insert();
    }
}