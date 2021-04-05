require 'rails_helper'

RSpec.describe Keynote, type: :model do
  it { should validate_presence_of :mode }
  it { should validate_presence_of :keynote }
  it { should validate_presence_of :image }
  it { should validate_presence_of :audio }

end
