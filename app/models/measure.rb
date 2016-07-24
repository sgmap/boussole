# encoding: utf-8
# frozen_string_literal: true
# == Schema Information
#
# Table name: measures
#
#  id                :integer          not null, primary key
#  title             :string
#  description       :string
#  url               :string
#  public_service_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_measures_on_public_service_id  (public_service_id)
#
# Foreign Keys
#
#  fk_rails_22911d55d8  (public_service_id => public_services.id)
#

class Measure < ActiveRecord::Base
  belongs_to :public_service

  validates :title,
            :description,
            :url,
            presence: true
end