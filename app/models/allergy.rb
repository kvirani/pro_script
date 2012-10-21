class Allergy < ActiveRecord::Base
  attr_accessible :description, :name

  Types = %w{
    penicillin
    macrolides
    tetracycline
    sulforamides
  }





end
