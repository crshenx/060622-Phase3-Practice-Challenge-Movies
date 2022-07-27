class Movie < ActiveRecord::Base
   has_many :roles
   has_many :actors, through: :roles

   def all_credits
    roles.map {|r| "#{r.character_name} Played by #{r.actor.name}"}
   end

   def cast_role(actor, character_name, salary)
    Role.create(actor: actor, character_name: character_name, salary: salary, movie: self)
   end

   def fire_actor actor
    role = Role.find actor
    role.destroy
   end

end