%dw 2.0
import * from dw::util::Values


		
var errorTemplateNotExists = {
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
	
var errorOSTemplate = {
	  "errors": {
	    "id": 500,
	    "code": "ERR500",
	    "status": 500,
	    "title": "Internal Error",
	    "detail": "",
	    "href": "",
	    "checked": true
	  }
	}