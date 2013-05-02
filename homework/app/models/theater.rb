class Theater < ActiveRecord::Base

  # This model should have the following attributes:
  # Attribute Name   |  Attribute Type
  # ----------------------------------
  # name             |  String
  # address          |  String
  # phone_number     |  String
  attr_accessible :name, :address, :phone_number
end
