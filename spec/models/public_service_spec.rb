# encoding: utf-8
# frozen_string_literal: true

RSpec.describe PublicService, type: :model do
  it { is_expected.to have_many(:service_offerings) }
  it { is_expected.to have_many(:measures) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:postal_address) }
end