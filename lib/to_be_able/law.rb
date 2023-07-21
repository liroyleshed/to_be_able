class ToBeAble::Law
  def initialize(permitted: false, action:, resource:)
    @permitted = permitted
    @action    = action
    @resource  = resource
  end
end
