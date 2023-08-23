%dw 2.0

/*
 * This function builds the error message
 */
fun setErrorMessage(status, title, detail, href, checked) = do {
	{
	  "errors": {
	    "id": status,
	    "code": "ERR" ++ status,
	    "status": status,
	    "title": title,
	    "detail": detail,
	    "href": href,
	    "checked": checked
	  }
	}
}

