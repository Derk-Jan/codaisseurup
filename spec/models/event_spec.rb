require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
      it "is invalid without a home type" do
         event =  event.new(home_type: "")
         event.valid?
        expect( event.errors).to have_key(:home_type)
      end

      it "is invalid with a listing name longer than 50 characters" do
         event =  event.new(listing_name: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ")
         event.valid?
        expect( event.errors).to have_key(:listing_name)
      end

      it "is valid without a price" do
         event =  event.new(price: "")
         event.valid?
        expect( event.errors).not_to have_key(: event)
      end

        describe "#free?" do
    let(:free_event)profiles { create :free true }
    let(:not_free_event)profiles { create :free false }

    it "returns true if the events is for free" do
      expect( free_event.free?).to eq(true)
      expect(not_free_event.free?).to eq(false)
    end

    describe ".order_by_price" do
    let!(: event1) { create : event, price: 100 }
    let!(: event2) { create : event, price: 200 }
    let!(: event3) { create : event, price: 300 }

    it "returns a sorted array of events by prices" do
      expect( event.order_by_price).to eq [ event1,  event2,  event3]
    end
  end

  describe "association with user" do
    let(:user) { create :event }

    it "belongs to a user" do
      event = user.event.new(name: "Fred")

      expect(event1.user).to eq(user)
    end
  end
end
