# spec/features/list_ events_spec.rb
require 'rails_helper'

describe "Current user viewing the list of events" do
  before { login_as user }

  let(:user1) { create :user, email: "current1@user.com" }
  let(:another_user2) { create :user, email: "another@user2.com" }

  let!(:event) { create :event, listing_name: "Event Name 1", user: user1 }
  let!(:event2) { create :event2, listing_name: "Event Name 3", user: user1 }
  let!(:event3) { create :event3, listing_name: "Another users event", user: another_user2 }

  it "shows all his  events" do
    visit events_url

    expect(page).to have_text("Event Name 1")
    expect(page).to have_text("Event Name 2")
  end

  it "does not show other users event" do
    visit events_url

    expect(page).not_to have_text("Another users event")
  end
end
