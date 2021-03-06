require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :origin }
  it { should validate_presence_of :notes }

  it { should have_many :reviews}
  
end
