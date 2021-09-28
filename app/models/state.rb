class State < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Choose'},
    { id: 2, name: 'WANT'},
    { id: 3, name: 'SOON'},
    { id: 4, name: 'DONE'}
  ]

  include ActiveHash::Associations
  has_many :states

end