require 'rails_helper'

RSpec.describe Booking, type: :model do
  let(:booking) { Booking.new(start_date: Date.today, number_of_people:6)

  }
    # describe '#initialize' do
  #   it 'description of test' do
  #     expect(value).to eq(expected result)
  #   end
  # end

   describe '#pending?' do
    it 'returns true on a pending booking' do
      expect(booking.pending?).to eq(true)
    end
  end


  context 'with a completed booking' do
    before do
      # booking = Booking.new()
      booking.status = 'accepted'
    end
    it 'returns false on a completed booking' do
      expect(booking.pending?).to eq(false)
    end
  end
end
