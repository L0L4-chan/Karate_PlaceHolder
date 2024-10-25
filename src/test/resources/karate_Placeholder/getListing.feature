Feature: Request list of comments

   Background:
    * url dom +"/"+ endPost

    Scenario: Retrieve the list of all the commments 
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'  

        Given method get
        Then status 200
        And response.lenght != null
        And match responseHeaders['Content-Type'] == ["application/json; charset=utf-8"]
            * checkResponseTime(response)