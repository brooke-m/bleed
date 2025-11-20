require "test_helper"

class CharacterTest < ActiveSupport::TestCase

   test "baseline character creation" do
      character = Character.create(name: "little beepo")

      assert character.valid?
   end

   test "character is part of a party" do
       party =  Party.create(code: 'party')
       character = Character.create(name: "little beepo", party_id: party.id)

       assert character.valid?
       assert party.characters.first == character
   end
end
