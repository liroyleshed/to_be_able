class ToBeAble::Law
  def  initialize(permitted: false, perform_action: action, on_resource: resource)
    @permitted = permitted
    @action    = action
    @resource  = resource
  end
end
