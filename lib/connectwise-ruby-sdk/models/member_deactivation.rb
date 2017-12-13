
require 'date'

module ConnectWise

  class MemberDeactivation
    # The List of Activities Assigned to the Member
    attr_accessor :sales_activity

    attr_accessor :service_team

    # A list of customers for which the member holds a team role
    attr_accessor :company_team

    # The Workflows to which the member is assigned
    attr_accessor :workflow

    attr_accessor :status_workflow

    # The Service (Ticket) Templates on which the Member is the assignedTo resource
    attr_accessor :service_template

    # A list of the member's currently assigned Opportunities
    attr_accessor :opportunity

    # A list of Sales Teams to which the member is assigned
    attr_accessor :sales_team

    # A list of Projects that the member is the project manager
    attr_accessor :project_manager

    # A list of knowledge base articles that the member is the approver
    attr_accessor :knowledge_baseb_article

    attr_accessor :my_company_president_role

    attr_accessor :my_company_coo_role

    attr_accessor :my_company_controller_role

    attr_accessor :my_company_dispatch_role

    attr_accessor :my_company_service_manager_role

    attr_accessor :my_company_duty_manager_role

    attr_accessor :department_manager

    attr_accessor :dispatch_member

    attr_accessor :service_manager

    attr_accessor :duty_manager

    attr_accessor :delete_open_time_sheets_flag


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sales_activity' => :'salesActivity',
        :'service_team' => :'serviceTeam',
        :'company_team' => :'companyTeam',
        :'workflow' => :'workflow',
        :'status_workflow' => :'statusWorkflow',
        :'service_template' => :'serviceTemplate',
        :'opportunity' => :'opportunity',
        :'sales_team' => :'salesTeam',
        :'project_manager' => :'projectManager',
        :'knowledge_baseb_article' => :'knowledgeBasebArticle',
        :'my_company_president_role' => :'myCompanyPresidentRole',
        :'my_company_coo_role' => :'myCompanyCOORole',
        :'my_company_controller_role' => :'myCompanyControllerRole',
        :'my_company_dispatch_role' => :'myCompanyDispatchRole',
        :'my_company_service_manager_role' => :'myCompanyServiceManagerRole',
        :'my_company_duty_manager_role' => :'myCompanyDutyManagerRole',
        :'department_manager' => :'departmentManager',
        :'dispatch_member' => :'dispatchMember',
        :'service_manager' => :'serviceManager',
        :'duty_manager' => :'dutyManager',
        :'delete_open_time_sheets_flag' => :'deleteOpenTimeSheetsFlag'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'sales_activity' => :'SalesActivity',
        :'service_team' => :'ServiceTeam',
        :'company_team' => :'CompanyTeam',
        :'workflow' => :'Workflow',
        :'status_workflow' => :'StatusWorkflow',
        :'service_template' => :'ServiceTemplate',
        :'opportunity' => :'Opportunity',
        :'sales_team' => :'SalesTeam',
        :'project_manager' => :'ProjectManager',
        :'knowledge_baseb_article' => :'KnowledgebaseArticle',
        :'my_company_president_role' => :'MyCompanyPresidentRole',
        :'my_company_coo_role' => :'MyCompanyCOORole',
        :'my_company_controller_role' => :'MyCompanyControllerRole',
        :'my_company_dispatch_role' => :'MyCompanyDispatchRole',
        :'my_company_service_manager_role' => :'MyCompanyServiceManagerRole',
        :'my_company_duty_manager_role' => :'MyCompanyDutyManagerRole',
        :'department_manager' => :'DepartmentMananager',
        :'dispatch_member' => :'DispatchMember',
        :'service_manager' => :'ServiceManger',
        :'duty_manager' => :'DutyManager',
        :'delete_open_time_sheets_flag' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'salesActivity')
        self.sales_activity = attributes[:'salesActivity']
      end

      if attributes.has_key?(:'serviceTeam')
        self.service_team = attributes[:'serviceTeam']
      end

      if attributes.has_key?(:'companyTeam')
        self.company_team = attributes[:'companyTeam']
      end

      if attributes.has_key?(:'workflow')
        self.workflow = attributes[:'workflow']
      end

      if attributes.has_key?(:'statusWorkflow')
        self.status_workflow = attributes[:'statusWorkflow']
      end

      if attributes.has_key?(:'serviceTemplate')
        self.service_template = attributes[:'serviceTemplate']
      end

      if attributes.has_key?(:'opportunity')
        self.opportunity = attributes[:'opportunity']
      end

      if attributes.has_key?(:'salesTeam')
        self.sales_team = attributes[:'salesTeam']
      end

      if attributes.has_key?(:'projectManager')
        self.project_manager = attributes[:'projectManager']
      end

      if attributes.has_key?(:'knowledgeBasebArticle')
        self.knowledge_baseb_article = attributes[:'knowledgeBasebArticle']
      end

      if attributes.has_key?(:'myCompanyPresidentRole')
        self.my_company_president_role = attributes[:'myCompanyPresidentRole']
      end

      if attributes.has_key?(:'myCompanyCOORole')
        self.my_company_coo_role = attributes[:'myCompanyCOORole']
      end

      if attributes.has_key?(:'myCompanyControllerRole')
        self.my_company_controller_role = attributes[:'myCompanyControllerRole']
      end

      if attributes.has_key?(:'myCompanyDispatchRole')
        self.my_company_dispatch_role = attributes[:'myCompanyDispatchRole']
      end

      if attributes.has_key?(:'myCompanyServiceManagerRole')
        self.my_company_service_manager_role = attributes[:'myCompanyServiceManagerRole']
      end

      if attributes.has_key?(:'myCompanyDutyManagerRole')
        self.my_company_duty_manager_role = attributes[:'myCompanyDutyManagerRole']
      end

      if attributes.has_key?(:'departmentManager')
        self.department_manager = attributes[:'departmentManager']
      end

      if attributes.has_key?(:'dispatchMember')
        self.dispatch_member = attributes[:'dispatchMember']
      end

      if attributes.has_key?(:'serviceManager')
        self.service_manager = attributes[:'serviceManager']
      end

      if attributes.has_key?(:'dutyManager')
        self.duty_manager = attributes[:'dutyManager']
      end

      if attributes.has_key?(:'deleteOpenTimeSheetsFlag')
        self.delete_open_time_sheets_flag = attributes[:'deleteOpenTimeSheetsFlag']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sales_activity == o.sales_activity &&
          service_team == o.service_team &&
          company_team == o.company_team &&
          workflow == o.workflow &&
          status_workflow == o.status_workflow &&
          service_template == o.service_template &&
          opportunity == o.opportunity &&
          sales_team == o.sales_team &&
          project_manager == o.project_manager &&
          knowledge_baseb_article == o.knowledge_baseb_article &&
          my_company_president_role == o.my_company_president_role &&
          my_company_coo_role == o.my_company_coo_role &&
          my_company_controller_role == o.my_company_controller_role &&
          my_company_dispatch_role == o.my_company_dispatch_role &&
          my_company_service_manager_role == o.my_company_service_manager_role &&
          my_company_duty_manager_role == o.my_company_duty_manager_role &&
          department_manager == o.department_manager &&
          dispatch_member == o.dispatch_member &&
          service_manager == o.service_manager &&
          duty_manager == o.duty_manager &&
          delete_open_time_sheets_flag == o.delete_open_time_sheets_flag
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [sales_activity, service_team, company_team, workflow, status_workflow, service_template, opportunity, sales_team, project_manager, knowledge_baseb_article, my_company_president_role, my_company_coo_role, my_company_controller_role, my_company_dispatch_role, my_company_service_manager_role, my_company_duty_manager_role, department_manager, dispatch_member, service_manager, duty_manager, delete_open_time_sheets_flag].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ConnectWise.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
