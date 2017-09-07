

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DiscountCalculator</title>
    <link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/myStyle.css" rel="stylesheet" />
    <style type="text/css">
        body {
    color:white;

}

.BgImg {
    background-image:url('../Img/dessert-menu-2508848_1920.jpg');
    background-size:cover;
    background-position:center;
    background-attachment:fixed;
}

.container {

    height:100vh;   
}

h1,h2 {
    font-family: 'Anton', sans-serif;
    
            
} 

.jumbotron.top {

    padding: 10px 0 10px 0;
    margin: 20px auto 20px auto;
    text-align:center;
    width: 90%;
    background-color: rgba(59,57,70, 0.7);
    border-radius:12px; 
}
    
.jumbotron.main {

    padding: 20px 0 20px 80px;
    margin: 20px auto 20px auto;
    text-align:left;
    width: 90%;
    background-color: rgba(59,57,70, 0.7);
    border-radius:12px;
}

.final {
    width:auto;
}

.jumbotron.bottom {

    padding:10px 0 10px 0;
    margin:20px auto 20px auto;
    text-align:center;
    width:90%;
    background-color:rgba(59,57,70, 0.7);
    border-radius:12px;
}

.text-left {
    
    font-size:18px;
}

.text-center {

    text-align:center !important;
    font-size:16px;
}

.lastReq {
    text-align:center;
    font-size:16px !important;
}
        
.logo {

    text-align:center;  
    padding:40px 60px 20px 0px !important;
   

}



</style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body class="BgImg">
    <form id="DiscountCalculator" runat="server">   
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="container" id="main">
           <div class="col-md-12">
           <div class="row jumbotron top" id="main-content">
              <div class="col-md-9">
                <h1>Discount Calculator</h1>
                <h2>Calculate the final discounted bill</h2>
                <asp:Label ID="Label1" runat="server" Text="Day Of The Week" Font-Size="X-Large"  />
                            <asp:DropDownList ID="DWDDL" runat="server" ForeColor="Black" Font-Size="Large" OnSelectedIndexChanged="DWDDL_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Monday</asp:ListItem>
                            <asp:ListItem>Tuesday</asp:ListItem>
                            <asp:ListItem>Wednesday</asp:ListItem>
                            <asp:ListItem>Thursday</asp:ListItem>
                            <asp:ListItem>Friday</asp:ListItem>
                            <asp:ListItem>Saturday</asp:ListItem>
                            <asp:ListItem>Sunday</asp:ListItem>
                            </asp:DropDownList>  
                            <br />
                            <asp:Label ID="DailyOffer" runat="server" Width="500px" Font-Size="Large"></asp:Label>
              </div>
               <div class="col-md-3">
                  <p class="logo"><img src="Img/logo.png" /></p> 
               </div>
            </div>          
                <div class="jumbotron main">
                    <div class="row">
                        <div class="col-md-7 text-right">                   
                              <span class="text-left"><strong>Drinks Category A => Soft Drinks: £2.65</strong></span>
                        </div> 
                        <div class="col-md-3 text-left">
                            Quantity:
                            <asp:DropDownList ID="DDLDR1" runat="server" ForeColor="Black" Font-Size="Large">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>                                        
                            </asp:DropDownList>
                        </div>
                       </div>
                       <div class="row">
                        <div class="col-md-7 text-right">                   
                              <span class="text-left"><strong>Drinks Category B => Beers, Ciders: £3.95</strong></span>
                        </div> 
                        <div class="col-md-3 text-left">
                            Quantity:
                            <asp:DropDownList ID="DDLDR2" runat="server" ForeColor="Black" Font-Size="Large">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>                                        
                            </asp:DropDownList>
                        </div> 
                      </div>
                        <div class="row">
                        <div class="col-md-7 text-right">                   
                              <span class="text-left"><strong>Drinks Category C => Wine, Spirits: £5.95</strong></span>
                        </div> 
                        <div class="col-md-3 text-left">
                            Quantity:
                            <asp:DropDownList ID="DDLDR3" runat="server" ForeColor="Black" Font-Size="Large">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>                                        
                            </asp:DropDownList>
                        </div>
                       </div>
                        <div class="row">
                        <div class="col-md-7 text-right">                   
                              <span class="text-left"><strong>Meals Category A => Starters: £7.65</strong></span>
                        </div> 
                        <div class="col-md-3 text-left">
                            Quantity:
                            <asp:DropDownList ID="DDLM1" runat="server" ForeColor="Black" Font-Size="Large">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>                                        
                            </asp:DropDownList>
                        </div> 
                        </div>
                        <div class="row">
                        <div class="col-md-7 text-right">                   
                              <span class="text-left"><strong>Meals Category B => Mains : £11.95</strong></span>
                        </div> 
                        <div class="col-md-3 text-left">
                            Quantity:
                            <asp:DropDownList ID="DDLM2" runat="server" ForeColor="Black" Font-Size="Large">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>                                        
                            </asp:DropDownList>
                        </div> 
                        </div>
                        <div class="row">
                        <div class="col-md-7 text-right">                   
                              <span class="text-left"><strong>Meals Category C => Set Menus: £16.65</strong></span>
                        </div> 
                        <div class="col-md-3 text-left">
                            Quantity:
                            <asp:DropDownList ID="DDLM3" runat="server" ForeColor="Black" Font-Size="Large">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>                                        
                            </asp:DropDownList>
                        </div> 
                        </div>
                        <div class="row">
                        <div class="col-md-7 text-right">                   
                              <span class="text-left"><strong>Desserts Category A => Ice Creams: £4.95</strong></span>
                        </div> 
                        <div class="col-md-3 text-left">
                            Quantity:
                            <asp:DropDownList ID="DDLDS1" runat="server" ForeColor="Black" Font-Size="Large">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>                                        
                            </asp:DropDownList>
                        </div> 
                        </div>
                        <div class="row">
                        <div class="col-md-7 text-right">                   
                              <span class="text-left"><strong>Desserts Category B => Cakes, Tarts: £6.25</strong></span>
                        </div> 
                        <div class="col-md-3 text-left">
                            Quantity:
                            <asp:DropDownList ID="DDLDS2" runat="server" ForeColor="Black" Font-Size="Large">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>                                        
                            </asp:DropDownList>
                        </div>                                 
                       </div>
                        <div class="row">
                            <div class="col-md-11 text-center">
                                <br /><asp:CheckBox CssClass="text-center" ID="CBSD" runat="server" Text="NUS Card Student Discount 25% off bill" Font-Size="Larger" /><br />
                            <asp:CheckBox CssClass="text-center"  ID="CBND" runat="server" Text="NHS/Policeman/Fireman Discount 20% off bill" Font-Size="Larger" />
                            <p class="lastReq">Only one discount can be applied on the bill and the minimun discounted amount required is £20.00</p>
                            </div>
                      </div>
                </div>
           <div class="jumbotron bottom">
            <div class="row">
                <div class="col-md-12">
              
                   
                    </div>
                <br />
                        <p class="btn1">
                            <asp:Button CssClass="btn btn-danger" ID="CalcBBtn" runat="server" Text="Calculate Bill" OnClick="CalcBBtn_Click" BackColor="#e63c2f" Width="150px" Height="40px" Font-Size="Large" Font-Bold="True" />
                        </p>
                        <p>
                            <asp:Button CssClass="btn btn-danger" ID="RestBtn" runat="server" Text="Reset/New Bill" OnClick="RestBtn_Click" BackColor="#e63c2f" Width="150px" Height="40px" Font-Size="Large" Font-Bold="True" />
                        </p>
                     <asp:Label ID="FPL" runat="server"  Font-Bold="True" Font-Size="XX-Large"  Height="160px" Width="450px"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            
    </form>
</body>
</html>

