def app (environ, start_response):
	status = '200 OK'
	response_headers = [('Content-type','text/plain')]
	start_response(status, response_headers)
	body = [bytes(i + '\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]
	return body
