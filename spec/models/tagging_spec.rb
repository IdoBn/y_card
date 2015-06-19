require 'rails_helper'

RSpec.describe Tagging, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should belong_to(:company) }
  it { should belong_to(:tag) }
end
