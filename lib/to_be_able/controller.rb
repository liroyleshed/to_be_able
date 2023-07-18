class ToBeAble::Controller
  def permit!
    @ability = ::Ability.new # should we turn the ability module into a class?
  end
end
