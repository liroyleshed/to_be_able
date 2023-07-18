module ToBeAble::Ability
  def can(perform_action, on_resource)
    @registry   = ::Registry.new
    @permission = ::Permission.new
    @law        = ::Law.new
  end

  def cant(perform_action, on_resource)
    @registry   = ::Registry.new
    @permission = ::Permission.new
    @law        = ::Law.new
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
        read:   %w(index show).map(&:to_sym),
        create: %w(new create).map(&:to_sym),
        update: %w(edit update).map(&:to_sym),
        delete: %w(destroy).map(&:to_sym),
        manage: %w(index show new create edit update destroy).map(&:to_sym),
        all:    %w(index show new create edit update destroy).map(&:to_sym)
      }
    end
end
