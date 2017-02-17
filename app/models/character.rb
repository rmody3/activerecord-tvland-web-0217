class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
     "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(hash)
    show = Show.find_or_create_by(hash)
    self.show_id=show.id
    self
  end

  def build_network(hash)
    network = Network.find_or_create_by(hash)
    self.show.network_id = network.id
  end





end
