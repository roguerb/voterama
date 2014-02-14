Feature: Suggest Top Ideas
  A composite of all attending members
  priority lists

  Scenario Outline: Combining attendee lists
    Given Lists "<list1>" and "<list2>" exist
    When Combining the lists
    Then The idea order should be "<combined>"

    Scenarios: Two Attendees with algorithm
      | list1 | list2 | combined  |
      | abcde | abcde | a,b,c,d,e |
      | abcde | edcba | cbdae     |
      | abcde | bdace | b,a,d,c,e |
#      | abcde | edcba | c,bd,ae   |
