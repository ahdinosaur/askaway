class QuestionPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope.visible_to_public
    end
  end

  [:trending, :new, :new_questions, :create].each do |action|
    define_method("#{action}?") do
      true
    end
  end
end
