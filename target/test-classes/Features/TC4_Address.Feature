@Address
Feature: Address Module Api Automation

  Scenario Outline: verify add user address to the applictaion through ApI
    Given User add header and bearer authorization for accessing Adduseraddress endpoints
    When User add request body for add new address"<first_name>","<last_name>","<mobile>","<apartment>","<state>","<city>","<country>","<zipcode>","<address>","<addresstype>"
    And User add "POST"request for add user address endpoint
    Then User verify the statuscode is 200
    Then User verify the adduseraddress response message matches"Address added successfully"

    Examples: 
      | First_name | last_name | mobile     | apartment | state | city | country | Zipcode | address     | addresstype |
      | Riswana    | begam     | 6383387015 | RRR       |    33 | 3378 |     101 |  600008 | CHENNAI OMR | HOME        |

  Scenario Outline: verify update USeraddress tothe application through API
    Given User add header and bearer authorization for accessing Updateuseraddress 
    When User add request body for add update address"<first_name>","<last_name>","<mobile>","<apartment>","<state>","<city>","<country>","<zipcode>","<address>","<addresstype>"
    And User add "PUt"request for add update address endpoint
    Then User verify the statuscode is 200
    Then User verify the updateadduseraddress response message matches"Address updated successfully"

    Examples: 
      | First_name | last_name | mobile     | apartment | state | city | country | Zipcode | address     | addresstype |
      | Riswana    | begam     | 6383387015 | RRR       |    33 | 3378 |     101 |  600008 | CHENNAI OMR | HOME        |

  Scenario Outline: verify get USeradddress tothe application through API
    Given User add header and bearer authorization for accessing address endpoint
    And User add "GET"request for add update address endpoint
    Then User verify the statuscode is 200
    Then User verify the updateadduseraddress response message matchesverify the getuser Address response message matches"ok"
    
   Scenario Outline: verify delete USeradddress tothe application through API
    Given User add header and bearer authorization for accessing deleteaddress endpoints
    And User add "DELETE"request for add update address endpoint
    Then User verify the statuscode is 200
    Then User verify the updateadduseraddress response message matches " Address deleted successfully"
    Examples:
    |address_id|
    |39873|
      
