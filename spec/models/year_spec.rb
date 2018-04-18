require 'rails_helper'

describe Year do
  it { should validate_presence_of :year }
  it { should have_many :films }
end
