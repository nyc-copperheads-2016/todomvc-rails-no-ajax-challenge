describe Todo do
  context "validations" do
    it { should validate_presence_of :title }
    it { should validate_uniqueness_of :title }
  end

  context "associations" do
    it { should have_many :tasks }
  end
end
