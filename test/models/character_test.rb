require "test_helper"

class CharacterTest < ActiveSupport::TestCase

 test "baseline character creation" do
    party = Party.create(code: "test0")
    character = Character.create(name: "little beepo", party_id: party.id)

    assert character.valid?
    assert party.characters.first.id == character.id
   end
end
