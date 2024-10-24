Feature: Retrieve comments for user

   Background:
    * url dom +"/"+ endPost +"?userId" + 1
@focus 
    Scenario: Retrieve a commment by ID of a User
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'  

        Given method get
        Then status 200
        And response.lenght == 10