1. What are some common HTTP status codes?
    200 OK - The request has succeeded.
    403 Forbidden - The server understood the request, but is refusing to fulfill it. Access to a resource is forbidden.
    404 Not Found - The server has not found anything mactching the request-URI. The requested resource is no longer available/not found.
    500 Internal Server Error - The server encountered an unexpected condition which prevented it from fulfilling the request. Server error catchall.
    503 - Service Unavailable - Your web server is unable to handle your HTTP request at the time. There are many reasons why this can occur, the most common are:
        - server crash
        - server maintenance
        - server overload
        - server maliciously being attacked
        - website has used up its alloteed bandwidth
        - server may be forbidden to return the request document
    504 - Gateway Timeout - The server accessing a secondary web server timed out. This could be caused by a DNS issue, network device may be down, or the other machine may be overly busy/unable to process the request.

2. What is the difference between a GET request and a POST request? When might each be used?
    GET - requests data from a specified source.
        - can be cached, remain in the browser history, can be bookmarked, have length restrictions, should only be used to retreive data, should not be used for passwords or other sensitive data
    POST - submits data to be processed to a specified source.
        - are never cached, do not remain in browser history, cannot be bookmarked, have no restriction on data length, used when sending passwords or other sensitive information

    GET should be used when submitting information that only involves database queries. POST should be used for actions that update a database or are sensitive, or when you want to hide information from the user (like how a form works, or hide fields).

3. What is a cookie? How does it relate to HTTP requests?
    A cookie is a small piece of data (plain text file) sent from a website and stored on the user's computer by the web browser. Cookies were designed to remember stateful information (like items in a shopping cart in an online store) or to record browsing activity (logins, page visits, etc).

    A web server specifies a cookie to be stored by sending an HTTP header called Set-Cookie. Cookies are for the browser's use only and cannot be retreived once they are set. 
    
