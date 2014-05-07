using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["get"] != null && Request.QueryString["get"] == "locations")
        {
            GetAvailableLocations((String)Request.QueryString["start_location"]);
        }
        Response.End();
    }
    private void GetAvailableLocations(String startLocation)
    {
        String [] data = startLocation.Split(',');
        double latitude = Double.Parse(data[0]);
        double longitude = Double.Parse(data[1]);
        double[] bounds = GetBounds(latitude, longitude, Double.Parse(Request.QueryString["radius"]));
        //get locations within bounds

    }
    private double[] GetBounds(double latitude, double longitude, double radius)
    {
        int earthRadius = 6371;
        double angularRadius = radius / earthRadius;
        //get max, min latitudes
        double latitudeMin = latitude - angularRadius;
        double latitudeMax = latitude + angularRadius;
        
        double latitudeTangent = Math.Asin(Math.Sin(latitude) / Math.Cos(angularRadius));
        double longitudeDelta = Math.Asin(Math.Asin(angularRadius) / Math.Cos(latitude));
        //get max, min longitudes
        double longitudeMin = longitude - longitudeDelta;
        double longitudeMax = longitude + longitudeDelta;

        //180th meridians
        double meridianLongMin = 0;
        double meridianLongMax = 0;
        /*double meridianLatMin = 0;
        double meridianLatMax = 0;*/
        if (latitudeMax > Math.PI / 2)
        {
            longitudeMin = -Math.PI;
            latitudeMax = Math.PI / 2;
            longitudeMax = Math.PI;
        }
        else if (latitudeMin < Math.PI / 2)
        {
            latitudeMin = -Math.PI / 2;
            longitudeMin = Math.PI;
            longitudeMax = Math.PI;
        }
        else if (longitudeMin < -Math.PI)
        {
            longitudeMin = longitudeMin + (2 * Math.PI);
            longitudeMax = Math.PI;
            meridianLongMin = -Math.PI;
            meridianLongMax = longitudeMax;
        }
        else if (longitudeMax > Math.PI)
        {
            longitudeMax = Math.PI;
            meridianLongMin = -Math.PI;
            meridianLongMax = longitudeMax - 2 * Math.PI;
        }
        double [] data = new double [6];
        data[0] = latitudeMin;
        data[1] = latitudeMax;
        data[2] = longitudeMin;
        data[3] = longitudeMax;
        data[5] = meridianLongMin;
        data[4] = meridianLongMax;

        return data;
    }
}
public class Data
{
    public List<Item> Items { get; set; }
}
public class Item
{
    public String address { get; set; }
    public double latitude { get; set; }
    public double longitude { get; set; }
    public double rate { get; set; }
    public double distance { get; set; }
}