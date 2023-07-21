class ToBeAble::Law
  def  initialize(permitted: false, action: perform_action, resource: on_resource)
    @permitted      = permitted
    @perform_action = perform_action
    @on_resource    = on_resource
  end
end
