class Drug < ActiveRecord::Base
  attr_accessible :name, :strengths

  serialize :strengths, Array

  Administrations = [
    'By mouth',
    'Inhalation',
    'Topical',
    'Rectal',
    'Into eye',
    'Injection'
  ]


end
