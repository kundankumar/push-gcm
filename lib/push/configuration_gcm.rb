module Push
  class ConfigurationGcm < Push::Configuration
    serialize :properties, Hash #:accessors => [:key]
    attr_accessible :app, :enabled, :connections, :key if defined?(ActiveModel::MassAssignmentSecurity)
    #validates_presence_of :key

    def name
      :gcm
    end
  end
end