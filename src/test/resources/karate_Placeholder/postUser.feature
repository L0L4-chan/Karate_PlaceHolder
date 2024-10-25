Feature: Create a new user

   Background:
    * def data = read('../data/userData.json')
    * url dom +"/"+ endUser

    Scenario: Create a new user with all data 
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'  

        Given request data
        When method post
        Then status 201 
        And match response contains { name: '#notnull', email: '#notnull', id: '#notnull'  }
        And match responseHeaders['Content-Type'] == ["application/json; charset=utf-8"]
            * checkResponseTime(response)
            * def id = response.id
            * def coD = read('classpath:data/commentData.json')
            * set coD.id = id
            * set coD.userId = id
            * set coD.title = coD.title
            * set coD.body = coD.body
            * karate.write(coD, 'classpath:data/commentData.json')
            