<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrencyconversionUI.aspx.cs" Inherits="example_currency.CurrencyconversionUI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>

<html  style="background-attachment: scroll;">
<head id="Head1" runat="server">
    <title>Currency Calculator</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"type="text/javascript"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.6.2.js" type="text/javascript"></script>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="scripts/app.js"></script>
    <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
   
  <form id="form" runat="server" aut>
  
   <div class="container" data-ng-app="currencyApp" data-ng-controller="currencyController">    
      <div class="row">
        <div  onclick="header_change()"> <p id="heading" ><h5>1 Euro equals</h5> 
                                                             <h2>1.07 US Dollar</h2> </p>
        </div>                         
        <div >                                                             
        <table>
           <tr>
             <td>
                 <asp:TextBox ID="tbFromCurrency" CssClass="form-control" runat="server" 
                     name="number" data-ng-model="fromcurrval" is-number ontextchanged="tbFromCurrency_TextChanged" ></asp:TextBox>                                                                                                                 
             </td>
             <td style="padding-left:15px;">
               <asp:DropDownList ID="ddFromCurrency" runat="server" data-ng-model="fromcurrency" 
                     CssClass="form-control" data-ng-change="update()" 
                     onselectedindexchanged="ddFromCurrency_SelectedIndexChanged" >
                <asp:ListItem Value="EUR">EURO</asp:ListItem>
                <asp:ListItem Value="USD">US DOLLAR</asp:ListItem>
                <asp:ListItem Value="JPY">JAPANESE YEN</asp:ListItem>
                <asp:ListItem Value="BGN">BULGARIAN LEV</asp:ListItem>
                <asp:ListItem Value="CZK">CZECH REPUBLIC KORUNA</asp:ListItem>
                <asp:ListItem Value="DKK">DANISH KRONE</asp:ListItem>
                <asp:ListItem Value="GBP">BRITISH POUND STERLING</asp:ListItem>
                <asp:ListItem Value="HUF">HUNGARIAN FORINT</asp:ListItem>
                <asp:ListItem Value="LTL">LITHUANIAN LITAS</asp:ListItem>
                <asp:ListItem Value="LVL">LATVIAN LATS</asp:ListItem>
                <asp:ListItem Value="PLN">POLISH ZLOTY</asp:ListItem>
                <asp:ListItem Value="RON">ROMANIAN LEU</asp:ListItem>
                <asp:ListItem Value="SEK">SWEDISH KRONA</asp:ListItem>
                <asp:ListItem Value="CHF">SWISS FRANC</asp:ListItem>
                <asp:ListItem Value="NOK">NORWEGIAN KRONE</asp:ListItem>
                <asp:ListItem Value="HRK">CROATIAN KNA</asp:ListItem>
                <asp:ListItem Value="RUB">RUSSIAN RUBLE</asp:ListItem>
                <asp:ListItem Value="TRY">TURKISH LURA</asp:ListItem>
                <asp:ListItem Value="AUD">AUSTRALIAN DOLLAR</asp:ListItem>
                <asp:ListItem Value="BRL">BRAZILIAN REAL</asp:ListItem>
                <asp:ListItem Value="CAD">CANADIAN DOLLAR</asp:ListItem>
                <asp:ListItem Value="CNY">CHINESE YUAN</asp:ListItem>
                <asp:ListItem Value="HKD">HONG KONG DOLLAR</asp:ListItem>
                <asp:ListItem Value="IDR">INDONESIAN RUPIAH</asp:ListItem>
                <asp:ListItem Value="ILS">ISREALI NEW SHEQEL</asp:ListItem>
                <asp:ListItem Value="INR">INDIAN RUPEE</asp:ListItem>
                <asp:ListItem Value="KRW">SOUTH KOREAN WON</asp:ListItem>
                <asp:ListItem Value="MXN">MEXICAN PESO</asp:ListItem>
                <asp:ListItem Value="MYR">MALAYSIAN RINGITT</asp:ListItem>
                <asp:ListItem Value="NZD">NEW ZEALAND DOLLAR</asp:ListItem>
                <asp:ListItem Value="PHP">PHILIPPINE PESO</asp:ListItem>
                <asp:ListItem Value="SGD">SINGAPORE DOLLAR</asp:ListItem>
                <asp:ListItem Value="THB">THAI BAHT</asp:ListItem>
                <asp:ListItem Value="ZAR">SOUTH AFRICAN RAND</asp:ListItem>
                </asp:DropDownList>
          </td>
          </tr>
        </table>
      </div>
      </div>
          <div class="row top-margin ">
             <table>
                <tr>
                  <td>
                  <asp:TextBox ID="tbToCurrency" runat="server" CssClass="form-control" Text="{{outcurrvalue}}" ReadOnly="true" data-ng-model="outcurrvalue"></asp:TextBox>
                  </td>
                  <td >
                  <div style="padding-left:15px;">
                  <asp:DropDownList ID="ddToCurrency" runat="server" data-ng-model="tocurrency" 
                          CssClass="form-control" data-ng-change="update()" 
                          onselectedindexchanged="ddToCurrency_SelectedIndexChanged">
                      <asp:ListItem Value="EUR">EURO</asp:ListItem>
                      <asp:ListItem Value="USD">US DOLLAR</asp:ListItem>
                      <asp:ListItem Value="JPY">JAPANESE YEN</asp:ListItem>
                      <asp:ListItem Value="BGN">BULGARIAN LEV</asp:ListItem>
                      <asp:ListItem Value="CZK">CZECH REPUBLIC KORUNA</asp:ListItem>
                      <asp:ListItem Value="DKK">DANISH KRONE</asp:ListItem>
                      <asp:ListItem Value="GBP">BRITISH POUND STERLING</asp:ListItem>
                      <asp:ListItem Value="HUF">HUNGARIAN FORINT</asp:ListItem>
                      <asp:ListItem Value="LTL">LITHUANIAN LITAS</asp:ListItem>
                      <asp:ListItem Value="LVL">LATVIAN LATS</asp:ListItem>
                      <asp:ListItem Value="PLN">POLISH ZLOTY</asp:ListItem>
                      <asp:ListItem Value="RON">ROMANIAN LEU</asp:ListItem>
                      <asp:ListItem Value="SEK">SWEDISH KRONA</asp:ListItem>
                      <asp:ListItem Value="CHF">SWISS FRANC</asp:ListItem>
                      <asp:ListItem Value="NOK">NORWEGIAN KRONE</asp:ListItem>
                      <asp:ListItem Value="HRK">CROATIAN KNA</asp:ListItem>
                      <asp:ListItem Value="RUB">RUSSIAN RUBLE</asp:ListItem>
                      <asp:ListItem Value="TRY">TURKISH LURA</asp:ListItem>
                      <asp:ListItem Value="AUD">AUSTRALIAN DOLLAR</asp:ListItem>
                      <asp:ListItem Value="BRL">BRAZILIAN REAL</asp:ListItem>
                      <asp:ListItem Value="CAD">CANADIAN DOLLAR</asp:ListItem>
                      <asp:ListItem Value="CNY">CHINESE YUAN</asp:ListItem>
                      <asp:ListItem Value="HKD">HONG KONG DOLLAR</asp:ListItem>
                      <asp:ListItem Value="IDR">INDONESIAN RUPIAH</asp:ListItem>
                      <asp:ListItem Value="ILS">ISREALI NEW SHEQEL</asp:ListItem>
                      <asp:ListItem Value="INR">INDIAN RUPEE</asp:ListItem>
                      <asp:ListItem Value="KRW">SOUTH KOREAN WON</asp:ListItem>
                      <asp:ListItem Value="MXN">MEXICAN PESO</asp:ListItem>
                      <asp:ListItem Value="MYR">MALAYSIAN RINGITT</asp:ListItem>
                      <asp:ListItem Value="NZD">NEW ZEALAND DOLLAR</asp:ListItem>
                      <asp:ListItem Value="PHP">PHILIPPINE PESO</asp:ListItem>
                      <asp:ListItem Value="SGD">SINGAPORE DOLLAR</asp:ListItem>
                      <asp:ListItem Value="THB">THAI BAHT</asp:ListItem>
                      <asp:ListItem Value="ZAR">SOUTH AFRICAN RAND</asp:ListItem>
                  </asp:DropDownList>
                  </div>
                </td>
              </tr>        
          </table>                        
        </div>
   </div>   
</form> 
</body>
</html>
