Feature: Test JSONPlaceholder API

Background:
    * url baseUrl

Scenario: Get all posts and verify response
    Given path 'posts'
    When method get
    Then status 200
    And match response[0] contains { id: '#number', title: '#string', body: '#string', userId: '#number' }

Scenario: Create a new post
    Given path 'posts'
    And request { title: 'foo', body: 'bar', userId: 1 }
    When method post
    Then status 201
    And match response == { id: '#number', title: 'foo', body: 'bar', userId: 1 }