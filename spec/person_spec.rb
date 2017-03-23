require 'spec_helper'

describe Person do
  it '#new' do
    person = Person::Person.new('giovanni')

    expect(person).to_not be_nil
  end

  it '#to_s' do
    person = Person::Person.new('giovanni')

    result = person.to_s

    expect(result).to eq('giovanni')
  end

  it '#titlelize' do
    person = Person::Person.new('giovanni')

    person.titlelize

    expect(person.to_s).to eq('Giovanni')
  end

  it '#upcase' do
    person = Person::Person.new('giovanni')

    person.upcase

    expect(person.to_s).to eq('GIOVANNI')
  end

  it '#downcase' do
    person = Person::Person.new('giovanni')

    person.downcase

    expect(person.to_s).to eq('giovanni')
  end

  it '#reverse' do
    person = Person::Person.new('giovanni')

    person.reverse

    expect(person.to_s).to eq('innavoig')
  end

  it '#hyphenize' do
    person = Person::Person.new('giovanni')

    person.hyphenize

    expect(person.to_s).to eq('g-i-o-v-a-n-n-i')
  end

  it '#undo' do
    person = Person::Person.new('giovanni')

    person.titlelize.upcase.reverse.downcase.undo.undo.undo.undo

    expect(person.to_s).to eq('giovanni')
  end
end
