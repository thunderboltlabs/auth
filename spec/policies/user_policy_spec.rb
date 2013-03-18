require_relative '../spec_helper'

describe "Pundit.policy(current_user, user)" do
  let(:current_user) { create(:user) }
  let(:policy) { Pundit.policy(current_user, user) }

  context "for another user" do
    let(:user) { create(:user) }
    it { expect(policy.show?).to be_false }
  end

  context "for themselves" do
    let(:user) { User.find(current_user) }
    it { expect(policy.show?).to be_true }
  end
end
