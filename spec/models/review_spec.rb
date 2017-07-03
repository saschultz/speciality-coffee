require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }

  it { should belong_to :product }

  it { is_expected.to callback(:validate_length).before(:save) }

  # it { should validate_length_of(:content_body).is_at_least(50).is_at_most(250) }

end
