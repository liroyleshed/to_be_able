class ToBeAble::Law
  def  initialize(permitted: false, action, resource, &block)
    @permitted = permitted
    @action    = action
    @resource  = resource
    @block     = block
  end
end
