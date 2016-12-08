using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    protected DataSet.ProductRow item;
    protected void Page_Load(object sender, EventArgs e)
    {
        //_code = GetUniqueIDRelativeTo();
        //_productName = Product.SearchById(_code).name;
        //_description = Product.SearchById(_code).description;
        int id = 1;
        if (!String.IsNullOrEmpty(Request.QueryString["ID"]))
            id = int.Parse(Request.QueryString["ID"]);
        DataSetTableAdapters.ProductTableAdapter ds = new DataSetTableAdapters.ProductTableAdapter();
        item = ds.GetDataByID(id)[0];
        Page.DataBind();
    }
}