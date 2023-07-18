class ToBeAble::Controller
  def permit!
    @ability = ::Ability.new
  end
end
