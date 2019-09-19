gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/wizard'

class WizardTest < Minitest::Test
  def test_has_name
    wizard = Wizard.new("Eric")
    assert_equal "Eric", wizard.name
  end

  def test_can_have_different_name

    wizard = Wizard.new("Alex")
    assert_equal "Alex", wizard.name
  end

  def test_is_bearded_by_default

    wizard = Wizard.new("Ben")
    assert wizard.bearded?
  end

  def test_is_not_always_bearded

    wizard = Wizard.new("Valerie", false)
    refute wizard.bearded?
  end

  def test_has_root_powers

    wizard = Wizard.new("Sarah", false)
    assert_equal "sudo chown ~/bin", wizard.incantation("chown ~/bin")
  end

  def test_has_lots_of_root_powers

    wizard = Wizard.new("Rob", false)
    assert_equal "sudo rm -rf /home/mirandax", wizard.incantation("rm -rf /home/mirandax")
  end

  def test_starts_rested

    wizard = Wizard.new("Merlin")
    assert wizard.rested?

  end

  def test_can_cast_spells
    wizard = Wizard.new("Merlin")
    assert_equal "MAGIG MISSILE", wizard.cast

  end

  def test_gets_tired_after_casting_three_spells
    wizard = Wizard.new("Merlin")
    2.times do
      wizard.cast #spells = 2
    end
    assert wizard.rested? #Rested is true
    wizard.cast #spells = 3
    refute wizard.rested? # rested = false

  end

end
