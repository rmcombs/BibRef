class Quote < ActiveRecord::Base
  belongs_to :modern_references
  belongs_to :biblical_references
end
