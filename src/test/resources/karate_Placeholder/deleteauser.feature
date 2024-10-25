Feature: Delete a user

   Background:
    * url dom +"/"+ endUser + "/1/"
@focus 
    Scenario: Delete user
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'  

        Given method delete
        Then status 200
        And match responseHeaders['Content-Type'] == ["application/json; charset=utf-8"]
            * checkResponseTime(response)
            * print response
       