require 'spec_helper'

describe Array, '#to_proc' do
  let(:expected_values) { [rand, rand, rand, rand] }

  let(:users) do
    expected_values.map do |value|
      double.tap do |user|
        allow(user).to receive_message_chain(:created_at, :utc).and_return(value)
      end
    end
  end

  it 'runs methods sequentially, in an order of array' do
    expect(users.map(&[:created_at, :utc])).to eq expected_values
  end
end
