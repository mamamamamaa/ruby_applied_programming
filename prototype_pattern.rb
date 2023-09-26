class Weapon
  attr_accessor :amount_of_ammo, :date_of_bought, :scope

  def initialize(amount_of_ammo, date_of_bought, scope)
    @amount_of_ammo = amount_of_ammo
    @date_of_bought = date_of_bought
    @scope = scope
  end

  def get_prototype
    @date_of_bought = deep_copy(@date_of_bought)
    @scope = deep_copy(@scope)
    @scope.name_of_scope = deep_copy(self)

    deep_copy(self)
  end

  private def deep_copy(object)
    Marshal.load(Marshal.dump(object))
  end
end

class Scope
  attr_accessor :name_of_scope

  def initialize(name_of_scope)
    @name_of_scope = name_of_scope
  end
end


prototype_weapon = Weapon.new(30, Time.now, Scope.new("Eotech"))
clone_weapon = prototype_weapon.get_prototype

puts(prototype_weapon == clone_weapon)
puts(prototype_weapon.amount_of_ammo == clone_weapon.amount_of_ammo)
puts(prototype_weapon.date_of_bought.equal?(clone_weapon.date_of_bought))
puts(prototype_weapon.scope.equal?(clone_weapon.scope))
