%dw 2.0
import * from dw::util::Values

		
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