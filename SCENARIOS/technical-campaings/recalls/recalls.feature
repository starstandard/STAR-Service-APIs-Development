Feature: Vehicle Campaigns
  description: Manage available vehicle campaigns offered by the OEM

Scenario: Get available campaigns for a Vehicle
  description: Retrieve all campaigns available for a Vehicle by providing the VIN
    Given a consuming system requires vehicle campaign details 
    When the consuming system requests the detail
    And the request operation is get
    And request path is /vehicles/{vehicle-id}/criterias/{vehicle-criteria-id}
    And request header parameters include header.accept-language,header.accept-encoding,header.accept,header.accept-charset
    And request body will be empty
    Then response options include 200:campaigns,400:bad-request,401:unauthorized,403:forbidden,404:not-found as application/json
