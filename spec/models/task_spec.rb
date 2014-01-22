require 'spec_helper'
describe Task do
  context "validations" do
    it { should validate_presence_of :body }
  end
  context "associations" do
    it { should belong_to :todo }
  end
end
