class ToBeAble::Law
  def  initialize(permitted: false, action: action, resource: resource)
    @permitted = permitted
    @action    = action
    @resource  = resource
  end
end
