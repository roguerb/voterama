Feature: Rank Top Ideas
  A composite of all attending members
  priority lists

  Scenario Outline: Combining attendee lists
    Given lists "<list1>" and "<list2>" exist
    When combining the lists with the "simple" ranker
    Then the idea order should be "<combined>"

    Scenarios: Two Attendees with algorithm
      | list1 | list2 | combined  |
      | abcde | abcde | a,b,c,d,e |
      | abcde | edcba | cbdae     |
      | abcde | bdace | b,a,d,c,e |
#      | abcde | edcba | c,bd,ae   |
