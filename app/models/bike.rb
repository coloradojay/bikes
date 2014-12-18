class Bike
	include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :speed, type: Float
 end