require "monkey_patcher_patcher/version"

module MonkeyPatcherPatcher

  def self.included(klass)
    klass.extend(ClassMethods)
  end

  module ClassMethods
    def method_added(method_name)
      return if @_monkey_patcher_at_work

      @_monkey_patcher_patcher_methods ||= []
      if @_monkey_patcher_patcher_methods.include?("#{method_name}")
        monkey_patcher_alias_method_name = "_monkey_patcher_patcher_alias_#{method_name}"

        class_eval do
          @_monkey_patcher_at_work = true
          alias_method method_name.to_sym, monkey_patcher_alias_method_name.to_sym
          @_monkey_patcher_at_work = false
        end
      end
    end

    def monkey_patcher_patcher(*method_names)
      @_monkey_patcher_patcher_methods ||= []      
      @_monkey_patcher_patcher_method_aliases ||= {}

      method_names.each do |method_name|
        @_monkey_patcher_patcher_methods << "#{method_name}"
        monkey_patcher_alias_method_name = "_monkey_patcher_patcher_alias_#{method_name}"

        class_eval do
          alias_method monkey_patcher_alias_method_name.to_sym, method_name.to_sym
        end
      end
    end
  end
end
