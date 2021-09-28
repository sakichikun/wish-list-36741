class State < ActiveHash::Base
  self.data = [
    { id: 1, name: 'WANT'},
    { id: 2, name: 'SOON'},
    { id: 3, name: 'DONE'}
  ]
end