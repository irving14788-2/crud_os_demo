%dw 2.0

import * from dw::util::Values

var initialPayload = {
    "jsonTemplate": "{\n  \"id\": \"1\",\n  \"billFromNam\": \"bf1\",\n  \"billFromAddress1\": \"bfa1\",\n  \"billFromCityName\": \"city demo\",\n  \"billFromProvStateCode\": \"state demo\",\n  \"billFromPostalCode\": \"postal demo\",\n  \"billFromCountryCode\": \"country demo\"\n}"
}


var errorEmptyTemplate = {
	  "errors": {
	    "id": 404,
	    "code": "ERR404",
	    "status": 404,
	    "title": "Template Not Exists",
	    "detail": "Template Not Exists",
	    "href": "",
	    "checked": true
	  }
	}
	
var errorWrongTemplate = {
	  "errors": {
	    "id": 406,
	    "code": "ERR406",
	    "status": 406,
	    "title": "Not Accepted",
	    "detail": "Invocation of static Method 'runInvoiceReport(java.lang.String,java.lang.String,java.lang.String)' from Class 'thymeleaf.markanthony.Invoice' with arguments [org.mule.runtime.core.internal.streaming.bytes.ManagedCursorStreamProvider arg0, java.lang.String arg1, java.lang.String arg2] resulted in an error.\nExpected arguments are [java.lang.String template, java.lang.String json, java.lang.String outputType].\nCause: org.thymeleaf.exceptions.TemplateInputException - An error happened during template parsing (template: \"<!DOCTYPE html>\n<html xmlns:th='http://www.thymeleaf.org'>\n<head>\n    <meta charset='utf-8' />\n    <title>Deduction</title>\n\t <style>\n\t\t\t.invoice-box {\n\t\t\t\tmax-width: 800px;\n\t\t\t\tmargin: auto;\n\t\t\t\tpadding: 10px;\n\t\t\t\tborder: 1px solid #eee;\n\t\t\t\tbox-shadow: 0 0 10px rgba(0, 0, 0, 0.15);\n\t\t\t\tfont-size: 15px;\n\t\t\t\tline-height: 24px;\n\t\t\t\tfont-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;\n\t\t\t\tcolor: #555;\n\t\t\t}\n\t\t\t\n\t\t\t.invoice-box table tr.summary td {\n\t\t\t    padding: 0px;\n\t\t\t\tpadding-bottom: 0px;\n\t\t\t\tpadding-top: 0px;\n\t\t\t\t/* border: 1px solid blue; \n\t\t\t\twidth: 50%;*/\n\t\t\t}\n\t\t\t\n\t\t\t.invoice-box table tr.summary table td {\n\t\t\t    padding: 0px;\n\t\t\t\tpadding-bottom: 0px;\n\t\t\t\tpadding-top: 0px;\n\t\t\t\t/* border: 1px solid green; */\n\t\t\t\t/* width: 50%; */\n\t\t\t}\n\t\t\t\n\t\t\t.invoice-box table tr.summary table td.title {\n\t\t\t\ttext-align: left;\n\t\t\t\t/* border: 1px solid purple; */\n\t\t\t\twidth: 100%;\n\t\t\t\tfont-weight: bold;\n\t\t\t\tpadding-right: 10px;\n\t\t\t\tfont-size: 13px;\n\t\t\t}\n\n\t\t\t.invoice-box table tr.summary table td.value {\n\t\t\t\ttext-align: left;\n\t\t\t\t/* border: 1px solid purple; */\n\t\t\t\twidth: 100%;\n\t\t\t\tfont-weight: normal;\n\t\t\t\tfont-size: 13px;\n\t\t\t}\n\t\t\t\n\t\t\t.invoice-box table tr.summary table td.text {\n\t\t\t\ttext-align: left;\n\t\t\t\t/* border: 1px solid purple; */\n\t\t\t\twidth: 100%;\n\t\t\t\tfont-weight: normal;\n\t\t\t\tfont-size: 15px;\n\t\t\t}\n\t\n\t </style>\n</head>\n  <body>\n  <div class='invoice-box'>\n    <table cellpadding='0' cellspacing='0'>\n        <tr>\n            <strong>AR Deduction INVOICE</strong>\n            <br/>\n            <br/>\n        </tr>\n\t\t<tr class='summary'>\n\t\t\t<td colspan='1'>\n\t\t\t<table>\n                    <tr>\n                        <td class='title'>Billed-By:</td>\n                        <td class='value'><span th:text='\${invoic.companyName}' /></td>\n\t\t\t\t\t\t<td class='title'>AR Payment Deduction By:</td>\n                        <td class='value'><span th:text='\${invoice.companySort}' /></td>\n                    </tr>\n                    <tr>\n                        <td class='title'>MAG Supplier Code:</td>\n                        <td class='value'><span th:text='\${invoice.supplierCode}' /></td>\n\t\t\t\t\t\t<td class='title'>Cheque/Invoice Number:</td>\n                        <td class='value'><span th:text='\${invoice.invoiceNumber}' /></td>\n                    </tr>\n                    <tr>\n                        <td class='title'>Date:</td>\n                        <td class='value'><span th:text='\${invoice.invoiceDate}' /></td>\n\t\t\t\t\t\t<td class='title'>Amount:</td>\n                        <td class='value'><span th:text='\${invoice.deductionAmount}' /></td>\n                    </tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t\t<tr class='summary'>\n\t\t<td colspan='1' class='text'>\n\t\tCustomer direct deduction invoice for GL coding and approval\n\t\t<br/><br/>\n\t\tThe attached invoice has been deducted by the customer in their payment to MAG.\n\t\t<br/>\n\t\tPlease review, code and approve.\n\t\t<br/>\n\t\tNo payment will be issued.\n\t\t</td>\n\t\t</tr>\n\t</table>\n\t</div>\n  </body>\n</html>\")",
	    "href": "https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html",
	    "checked": true
	  }
	}