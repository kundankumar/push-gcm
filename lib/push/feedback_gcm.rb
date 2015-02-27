module Push
  class FeedbackGcm < Push::Feedback
    serialize :properties, :accessors => [:update_to]
    attr_accessible :app, :device, :follow_up, :failed_at, :update_to if defined?(ActiveModel::MassAssignmentSecurity)

    validates_inclusion_of :follow_up, :in => %w(delete update), :message => "%{value} is not a valid follow-up"
  end
end