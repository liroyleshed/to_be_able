class ToBeAble::Law
  def  initialize(permitted: false, action, resource, &block)
    @permitted = permitted
  end
end
