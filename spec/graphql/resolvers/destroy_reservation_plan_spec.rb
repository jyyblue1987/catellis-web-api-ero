require 'rails_helper'

RSpec.describe Resolvers::DestroyReservationPlan, type: :feature do
  def service_instance
    described_class.new
  end

  it "destroys an existing reservation plan" do
    reservation_plan = create(:reservation_plan)
    user = create(:user, :restaurant_employee, restaurant: reservation_plan.restaurant)

    args = {
      id: reservation_plan.id
    }
    ctx = {
      current_user: user
    }

    result = service_instance.call({}, args, ctx)

    expect(result).to be_deleted
  end
end
