Feature: 

   Background:
    * url dom +"/"+ endPost + "/1/"
@focus 
    Scenario: Delete a comment using the comment id
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'  

        Given method delete
        Then status 200
        * print response
       