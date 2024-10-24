Feature: Create a new comment

   Background:
    * def data = read('../data/commentData.json')
    * url dom +"/"+ endPost

    Scenario: Create a new comment with all data 
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'  

        Given request data
        When method post
        Then status 201 
        And response.title == data.title
            