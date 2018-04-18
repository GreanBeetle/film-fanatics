require 'rails_helper'

describe Film do
  it { should validate_presence_of :title }
  it { should belong_to :year }
end
