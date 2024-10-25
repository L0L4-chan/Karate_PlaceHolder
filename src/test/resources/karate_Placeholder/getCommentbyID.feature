Feature: Retrieve comments

   Background:
    * url dom +"/"+ endPost +"/1/" + endComment

    Scenario: Retrieve a commment by ID 
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'  

        Given method get
        Then status 200
        And response.lenght == 5
        And match responseHeaders['Content-Type'] == ["application/json; charset=utf-8"]
            * checkResponseTime(response)