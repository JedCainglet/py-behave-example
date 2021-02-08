Feature: showing off behave

  @tutorial_test
  @tutorial
  Scenario: run a simple test
     Given we have behave installed
      When we implement a test
      Then behave will test it for us!

  @tutorial_test
  Scenario: explaining behave
     Given we put the system in a known state 
     # before the user (or external system) starts interacting with the system (in the When steps)
     # Avoid talking about user interaction in givens
      When we take key actions the user (or external system) performs 
      # This is the interaction with your system which should (or perhaps should not) cause some state to change
      Then we observe outcomes

  @outline_example
  Scenario Outline: Blenders
   Given I put <thing> in a blender
    when I switch the blender on
    then it should transform into <other thing>

   Examples: Amphibians
     | thing         | other thing |
     | Red Tree Frog | mush        |

   Examples: Consumer Electronics
     | thing         | other thing |
     | iPhone        | toxic waste |
     | Galaxy Nexus  | toxic waste |

  @step_data
  Scenario: some scenario
   Given a sample text loaded into the frobulator
     """
     Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
     eiusmod tempor incididunt ut labore et dolore magna aliqua.
     """
    When we activate the frobulator
    Then we will find it similar to English

  @step_data
  Scenario: another some scenario
   Given a set of specific users
      | name      | department  |
      | Barry     | Beer Cans   |
      | Pudey     | Silly Walks |
      | Two-Lumps | Silly Walks |

    When we count the number of people in each department
    Then we will find two people in "Silly Walks"
     But we will find one person in "Beer Cans"

  @step_params
  Scenario: look up a book
    Given I search for a valid book
     Then the result page will include "success"

  Scenario: look up an invalid book
    Given I search for an invalid book
     Then the result page will include "failure"