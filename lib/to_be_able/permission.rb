class ToBeAble::Permission
  attr_reader :law

  def initialize(law)
    @law = law
  end
end

class ToBeAble::Permission::Permitted < ToBeAble::Permission
end


class ToBeAble::Permission::Unpermitted < ToBeAble::Permission
end
