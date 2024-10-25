Feature: Modify user

    Background:
        * def data = read('../data/newEmail.json')
        * url dom +"/"+ endUser + "/1"

    Scenario: Modify an existing user email
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'

        Given request data
        When method patch
        Then status 200
        And response.email == data.email
        And match responseHeaders['Content-Type'] == ["application/json; charset=utf-8"]
        * checkResponseTime(response)