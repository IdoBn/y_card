require 'rails_helper'

RSpec.describe Company, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it { should have_many(:tags) }
  it { should have_many(:taggings) }
end
