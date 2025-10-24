require "test_helper"

class CharacterTest < ActiveSupport::TestCase

 test "baseline character creation" do
    character = Character.new(name: "little beepo")

    assert character.valid?
  end
  
  test "character that belongs to a party" do
    party = Party.create(code: "test0")
    character = Character.create(name: "little beepo", party_id: party.id)

    assert character.valid?
    assert party.characters.first.id == character.id
   end
end
