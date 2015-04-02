Feature: Search for Movies

  Scenario: Search by title
    Given the following movies are available:
      | Title                 |
      | Batman Begins         |
      | The Dark Knight       |
      | The Dark Knight Rises |
    When I search for a movie titled "Dark Knight"
    Then the search results include the following movies:
      | Title                 |
      | The Dark Knight       |
      | The Dark Knight Rises |

  Scenario: Search by year released
    Given the following movies are available:
      | Title                 | Year Released |
      | Batman Begins         | 2005          |
      | The Dark Knight       | 2008          |
      | The Dark Knight Rises | 2012          |
    When I search for movies released in "2005"
    Then the search results include the following movies:
      | Title                 |
      | Batman Begins         |

  Scenario: Search by director
    Given the following movies are available:
      | Title                 | Director          | Box Office    |
      | Batman Begins         | Christopher Nolan | 374.2 million |
      | The Dark Knight       | Christopher Nolan | 1.005 billion |
      | The Dark Knight Rises | Christopher Nolan | 1.084 billion |
    When I search for movies directed by "Christopher Nolan"
    Then the search results include the following movies:
      | Title                 |
      | Batman Begins         |
      | The Dark Knight       |
      | The Dark Knight Rises |