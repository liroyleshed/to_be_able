module ToBeAble::Ability
  def can(perform_action, on_resource)
    @registry   = ToBeAble::Registry.new
    @permission = ToBeAble::Permission.new
    @law        = ToBeAble::Law.new
  end

  def cant(perform_action, on_resource)
    @registry   = ToBeAble::Registry.new
    @permission = ToBeAble::Permission.new
    @law        = ToBeAble::Law.new
  end


  def can?(*args)
  end

  def cant?(*args)
    !can?
  end


  def is_able_to(perform_action, on_resource)
    can(perform_action, on_resource)
  end

  def isnt_able_to(perform_action, on_resource)
    cant(perform_action, on_resource)
  end

  def is_able_to?(*args)
    can?
  end

  def isnt_able_to?(*args)
    !is_able_to?
  end


  def permit!(action, for_resource)
    @permitted = true
  end

  UNPERMITTED_MESSAGE = "You are not permitted to access this zone."
  def unpermitted_message
    UNPERMITTED_MESSAGE
  end

  private
    def default_actions
      {
        read:   %i[index show],
        create: %i[new create],
        update: %i[edit update],
        delete: %i[destroy],
        manage: %i[index show new create edit update destroy],
        all:    %i[index show new create edit update destroy]
      }
    end
end
