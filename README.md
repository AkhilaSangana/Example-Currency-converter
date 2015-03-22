<h2>Example-Currency-converter</h2>

Main Idea of this Example-Currency-Converter project is to use AngularJs effectively to get the required currency conversion. 
 Here are the three important points you need to know before we get into to the entire description of the project
  * <b>AngularJs</b> .Http service(app.JS) which enables your angularJs application to communicate with the server side technology 
    by firing Ajax calls to server.
  * The <b>Bootstrap UI</b>(CurrencyconversionUI.apx) for the Responsive design for getting the required input-currency value,
    input-country from which you need convert it to perticular country currency value.
  * The <b>WebAPI Controller</b>(CurrencyController.cs) which is required to query the Currency-feed.Xml file which is an open
    source currency feed from European Central Bank consists of the current equivalent euro value for popular 33 currencies 
    of the world & updated once everyday.
<h3>Understanding server side code in the project</h3>
 The core functionality for getting the exchanged currency value for the input currency value should be done on the server
 side webApi method(ConvertCurrency).I have provided comments in the code for better understanding, briefly i will provide overview.
  *ConvertCurrency takes 3 parameterised arguments, required for generating Exchanged currency value.
  *We fetch the currency feed xml file and loads into the Xml Document object as follows. 
       <pre> string currencyurl=<a>"Http://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml";</a>
      XDocument xmlDoc=XDocument.load(currencyurl);</pre>
      *finally return the Exchanged currency value by writing required code, using all input currency values and country 
      codes to get currect output as follows(part of code).
  <pre>//if input currency code Equals to "Euro"
   if(incurrcode.Equals("Euro"))
   { 
     rate = outcurrcodetoeuro;
     Double currval = Convert.ToDouble(rate)@Convert.ToDouble(incurrvalue);
     Outcurrvalue = currvalue;
  }</pre>
<h3> Understanding AngularJS Controller code in the project</h3>
    Before going to that let me quickly explain AngularJs <b> .Http Service</b> is provided by angularJs and is meant for making
 Ajax communication with the server to get exchanged currency value, It takes on configuration object with the details of
 the request and returns two methods <b>success</b>and <b>error</b>.
 Syntax for making .Http calls to server is given below.
 <pre>$http({method:'GET' , url :'/some url'}).Success(function(data, status, headers,config){
 //this callback will be called asynchronously when the response is available.
 })
 .error(function(data, status , headers, config){
 //called Assynchronously if an error occurs or server returns response with error status.
 });</pre>
    We create an AngularJs Controller javascript file(app.js)code for validating the currency value and firing ajax 
calls to web Api method for fetching converted currency value.
Before calling the service, the input currency value should be validated to allow users to enter only the decimal 
numbers alone.Also whenever the value of the input textbox changes ,for all valid entries ,$Http service must be 
called to fire ajax calls to server side method and the user interface must be updated with the results.
To achieve this I created a custom angular Directive <b>IS Number</b> and it is added as an attribute to the
TextBox as follows.

  <pre>asp:TextBox ID="tbFromCurrency" runat="server" name="number" data-ng-model="fromcurrvalue" IS Number</pre>

  The <b>IS Number</b> directive uses the $scope.watch method for looking at any changes in the textbox value and validating 
it for decimal or numeric value.If the value entered is not valid, it does not display it , instead displays the previously 
entered correct value.
We also used the <b>ng-model-change</b> angularJS Directive to update the output currency values whenever the value 
in any of the dropdownlist changes,hence update method is created which again calls 'currencyservice' service to
fetch results

  <h3>Bootstrap UI for Responsive Design</h3>

     Using Bootstrap CSS classes the required UI will be created.
  <h3>Run the application in Visual Studio</h3>

       * Download the required files like javascript,controller.cs,aspx files Etc.
       * Attach the project files to the visual studio solution explorer.
       * build the project for any compilation errors.
       *Run the project by clicking ctrl+f5 to see the required output. 


 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
