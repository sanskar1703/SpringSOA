public class HTTPCallOut {
    public static void createHttpCallout() {
       
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');
        request.setMethod('GET');
        
        Http http = new Http();
        
        HttpResponse response = http.send(request);
        
        if (response.getStatusCode() == 200) {
            
            system.debug('HTTP Response Body: ' + response.getBody());
        } else {
            system.debug('HTTP Request failed with status code: ' + response.getStatusCode());
        }
    }
}