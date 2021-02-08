Feature: showing off behave

  Scenario: run a simple test
     Given we have behave installed
      When we implement a test
      Then behave will test it for us!

  Scenario: explaining behave
     Given we put the system in a known state 
     # before the user (or external system) starts interacting with the system (in the When steps)
     # Avoid talking about user interaction in givens
      When we take key actions the user (or external system) performs 
      # This is the interaction with your system which should (or perhaps should not) cause some state to change
      Then we observe outcomes

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