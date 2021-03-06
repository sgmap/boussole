# encoding: utf-8
# frozen_string_literal: true

RSpec.describe WorkingDuration, type: :model do
  it_should_behave_like :having_many_through, :target_publics
  it_should_behave_like :read_only, :name
  it_should_behave_like :unique, :name, :string
end
