require "test_helper"

class PartyTest < ActiveSupport::TestCase

  test "valid party creation" do
    party = Party.new(code: 'party')
    assert party.valid?
    assert party.save
  end
  test "party cannot be created without a code" do
    party = Party.new
    assert party.valid? == false
    assert_not party.save
  end

  test "party codes can only have letters and numbers" do
    party = Party.new(code: '「hi :)」')
    assert party.valid? == false
    assert party.save == false
  end

    test "no duplicate party codes" do
    party = Party.new(code: 'original')
    assert party.valid? == true
    party.save

    new_party = Party.new(code: 'original')
    assert new_party.save == false
  end
end
