# frozen_string_literal: true

module ToBeAble
  class Error < StandardError; end
end


require_relative "to_be_able/ability"
require_relative "to_be_able/permission"
require_relative "to_be_able/law"
require_relative "to_be_able/registry"
require_relative "to_be_able/gate_keeper"
require_relative "to_be_able/controller"
require_relative "to_be_able/version"
