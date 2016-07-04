# encoding: utf-8
# frozen_string_literal: true

class Housing < ActiveRecord::Base
  def siao?
    duration == 'Ce soir' &&
      resources < 300
  end

  def crous?
    duration == '<= 1 an' &&
      status == 'Étudiant·e'
  end

  def pain_d_avoine?
    duration != 'Ce soir' &&
      status != 'Étudiant·e' &&
      resources >= 300
  end

  def apl?
    duration != 'Ce soir'
  end

  def cle?
    status == 'Étudiant·e'
  end

  # TODO: Change true/false for truthy/falsy matchers
  def locapass?
    return true if status == 'Salarié·e'
    return true if status.in?(['En alternance', 'Sans activité']) && age <= 30
    false
  end

  def visale?
    duration == '> 1 an' && status == 'Salarié·e'
  end
end
