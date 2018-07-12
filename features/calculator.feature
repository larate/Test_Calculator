Feature: In order to avoid silly mistakes as a math genius
  I want to build a calulator

  @smoke1
  Scenario Outline: calculator test1
    Given I have entered "<num_1>" and "<num_2>" into the calculator
    When I press the operation "<button>"
    Then The result should be "<output>" on the screen
    Examples:
      | num_1 | num_2 | button | output |
      | 5     | 15    | +      | 20     |

