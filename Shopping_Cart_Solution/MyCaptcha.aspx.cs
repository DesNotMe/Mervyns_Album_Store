using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

public partial class MyCaptcha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random random = new Random();
        Bitmap bitmap = new Bitmap(150, 90);
        Graphics graphics = Graphics.FromImage(bitmap);
        graphics.Clear(Color.White);
        graphics.DrawLine(Pens.Black, random.Next(0, 50), random.Next(10, 30), random.Next(0, 200), random.Next(0, 50));
        graphics.DrawRectangle(Pens.Blue, random.Next(0, 20), random.Next(0, 20), random.Next(50, 80), random.Next(0, 20));
        graphics.DrawLine(Pens.Blue, random.Next(0, 20), random.Next(10, 50), random.Next(100, 200), random.Next(0, 80));
        Brush disignBrush = default(Brush);
        //captcha background style  
        HatchStyle[] bkgStyle = new HatchStyle[]
        {
            HatchStyle.BackwardDiagonal, HatchStyle.Cross, HatchStyle.DashedDownwardDiagonal, HatchStyle.DashedHorizontal, HatchStyle.DashedUpwardDiagonal, HatchStyle.DashedVertical,
            HatchStyle.DiagonalBrick, HatchStyle.DiagonalCross, HatchStyle.Divot, HatchStyle.DottedDiamond, HatchStyle.DottedGrid, HatchStyle.ForwardDiagonal, HatchStyle.Horizontal,
            HatchStyle.HorizontalBrick, HatchStyle.LargeCheckerBoard, HatchStyle.LargeConfetti, HatchStyle.LargeGrid, HatchStyle.LightDownwardDiagonal, HatchStyle.LightHorizontal
        };
        //create captcha rectangular area for ui 
        RectangleF rectagleArea = new RectangleF(0, 0, 250, 250);
        disignBrush = new HatchBrush(bkgStyle[random.Next(bkgStyle.Length - 3)], Color.FromArgb((random.Next(100, 255)), (random.Next(100, 255)), (random.Next(100, 255))), Color.White);
        graphics.FillRectangle(disignBrush, rectagleArea);
        //generate captcha code with random code
        string captchaCode = string.Format("{0:X}", random.Next(1000000, 9999999));
        //add catcha code into session for use
        Session["sessionCaptcha"] = captchaCode.ToLower();
        Font objFont = new Font("Times New Roman", 25, FontStyle.Bold);
        //create image for captcha
        graphics.DrawString(captchaCode, objFont, Brushes.Black, 20, 20);
        //Save the image 
        bitmap.Save(Response.OutputStream, ImageFormat.Gif);
    }
}