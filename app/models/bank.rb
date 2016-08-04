class Bank < Organization
  after_initialize :default_attributes

  private

    def default_attributes
      self.name ||= "The Bank"
    end
end

