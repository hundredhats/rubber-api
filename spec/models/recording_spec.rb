require 'rails_helper'

RSpec.describe Recording, type: :model do
  describe 'validations' do
    let(:valid_recording) { FactoryBot.build(:recording) }

    it 'is valid' do
      expect(valid_recording.valid?).to be
    end

    # little metaprogramming fun
    [:name, :url].each do |attr|
      let(:"missing_#{attr}") { FactoryBot.build(:recording, :"#{attr}" => nil) }
      it "requires #{attr}" do
        expect(send(:"missing_#{attr}").valid?).to_not be
      end
    end
  end
end
