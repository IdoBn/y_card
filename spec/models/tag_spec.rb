require 'rails_helper'

RSpec.describe Tag, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it { should have_many(:companies) }
  it { should have_many(:taggings) }
end
