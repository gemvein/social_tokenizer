Feature: Social Tokenizer
  In order to extract the social tokens from strings
  As a website
  I want to be given a Hash of social tokens, organized by type.

  Background:
    Given the String:
    """
    This contains a >message, a ^group, a :carbon, a @mention, and a #tag.
    """
  Scenario: Extract the social tokens from a string
    When I run the social_tokenizer method
    Then the result should be a Hash with 5 key-value pairs
    And each of its keys should be a symbol denoting the type of social token
    And each of its values should be an Array of the corresponding social tokens
    And the result should include:
      |message    |message |
      |group      |group   |
      |carbon     |carbon  |
      |mention    |mention |
      |tag        |tag     |

  Scenario Outline: Format the social tokens from a string
    When formatting the String as <format>
    Then I should receive the String:
      """
      <body>
      """
    Examples:
      |format|body|
      |html|This contains a <a href="/messages/<message>">&gt;message</a>, a <a href="/groups/<group>">^group</a>, a <a href="/users/<carbon>">:carbon</a>, a <a href="/users/<mention>">@mention</a>, and a <a href="/tags/<tag>">#tag</a>|
      |text|This contains a message, a group, a carbon, a mention, and a tag|