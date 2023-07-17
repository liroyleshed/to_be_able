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


  def can?
  end

  def cant?
    !can?
  end


  def is_able_to(perform_action, on_resource)
    can(perform_action, on_resource)
  end

  def isnt_able_to(perform_action, on_resource)
    cant(perform_action, on_resource)
  end

  def is_able_to?
  end

  def isnt_able_to?
    !is_able_to?
  end


  def permit!(action, for_resource)
  end

  UNPERMITTED_MESSAGE = "You do not have access to this zone."
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
        manage: %w(index show new create edit update destroy).map(&:to_sym)
      }
    end
end
