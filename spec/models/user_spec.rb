require 'rails_helper'

RSpec.describe Test, type: :model do
  context 'a new object' do
    subject { Test.new }

    it 'is an instance of Test' do
      expect(subject).to be_a(Test)
    end

    it 'has a nil owner' do
      expect(subject.owner).to be_nil
    end

    it 'is not valid' do
      expect(subject).not_to be_valid
    end

    it 'has 1 error on owner' do
      subject.valid?
      expect(subject.errors[:owner].size).to eq(1)
    end
  end
end

RSpec.describe Review, type: :model do
  context 'a new object' do
    subject { Review.new }

    it 'is an instance of Review' do
      expect(subject).to be_a(Review)
    end

    it 'has a nil test' do
      expect(subject.test).to be_nil
    end

    it 'has a nil user' do
      expect(subject.user).to be_nil
    end

    it 'is not valid' do
      expect(subject).not_to be_valid
    end

    it 'has 1 error on test' do
      subject.valid?
      expect(subject.errors[:test].size).to eq(1)
    end
    it 'has 1 error on user' do
      subject.valid?
      expect(subject.errors[:user].size).to eq(1)
    end
  end
end

RSpec.describe User, type: :model do
  context 'a new object' do
    subject { User.new }

    it 'is an instance of User' do
      expect(subject).to be_a(User)
    end

    it 'has a nil owner' do
      expect(subject.owner).to be_nil
    end

    it 'is not valid' do
      expect(subject).not_to be_valid
    end

    it 'has 1 error on owner' do
      subject.valid?
      expect(subject.errors[:owner].size).to eq(1)
    end
  end
end
