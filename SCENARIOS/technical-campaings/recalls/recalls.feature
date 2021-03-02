Feature: Vehicle Recalls
  description: Manage available vehicle recalls offered by the OEM

Scenario: Get available recalls for a Vehicle
  description: Retrieve all recalls available for a Vehicle by providing the VIN
    Given a consuming system requires vehicle recall details 
    When the consuming system requests the detail
    And the request operation is get
    And request path is /vehicles/{vehicle-id}/criterias/{vehicle-criteria-id}
    And request header parameters include header.accept-language,header.accept-encoding,header.accept,header.accept-charset
    And request body will be empty
    Then response options include 200:recalls,400:bad-request,401:unauthorized,403:forbidden,404:not-found as application/json
