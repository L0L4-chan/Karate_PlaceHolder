Feature: Fail to delete a user

    Background:
        * url dom +"/"+ endUser + "1/"
    @focus
    Scenario: Fail to delete a user due to bad request
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'

        Given method delete
        Then status 404
        * print response
        * checkResponseTime(response)
