class ToBeAble::Law
  def  initialize(permitted: false, action: perform_action, resource: on_resource)
    @permitted = permitted
    @action    = perform_action
    @resource  = on_resource
  end
end
