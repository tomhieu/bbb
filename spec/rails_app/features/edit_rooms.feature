Feature: Edit webconference rooms
  To change the information of a webconference rooms
  One needs to be able to edit and update the room

  Scenario: Edit data in a BigBlueButton room
    Given an anonymous user
      And a server
      And a room
    When he goes to the edit room page
      And change the room name to "Anything different"
      And click in the button to save the room
    Then he should be at the show room URL
      And the room name should be "Anything different"

  Scenario: Try to edit data in a BigBlueButton room with incorrect values
    Given an anonymous user
      And a server
      And a room
    When he goes to the edit room page
      And change the room name to ""
      And click in the button to save the room
    Then he should be at the update room URL
      And see the edit room page
      And see 2 errors in the field "bigbluebutton_room[name]"
      And the room name should NOT be "Anything different"

