
require 'date'

module ConnectWise

  class CustomReport
    attr_accessor :id

    attr_accessor :report_link

    attr_accessor :name

    # The Module Name
    attr_accessor :_module

    attr_accessor :description

    attr_accessor :generated_flag

    attr_accessor :parameter_prefix

    attr_accessor :parameter_separator

    attr_accessor :parameter_name_separator

    attr_accessor :parameter_suffix

    attr_accessor :location_flag

    # Parameter unique identifier for the Custom Report's Location parameter
    attr_accessor :location_param_id

    attr_accessor :location_default_flag

    attr_accessor :location_override

    attr_accessor :department_flag

    # Parameter unique identifier for the Custom Report's Department parameter
    attr_accessor :department_param_id

    attr_accessor :department_default_flag

    attr_accessor :department_override

    attr_accessor :territory_flag

    # Parameter unique identifier for the Custom Report's Terriroty parameter
    attr_accessor :territory_param_id

    attr_accessor :territory_default_flag

    attr_accessor :territory_override

    attr_accessor :company_flag

    # Parameter unique identifier for the Custom Report's Company parameter
    attr_accessor :company_param_id

    attr_accessor :company_override

    attr_accessor :member_flag

    # Parameter unique identifier for the Custom Report's Member parameter
    attr_accessor :member_param_id

    attr_accessor :member_override

    attr_accessor :start_date_flag

    # Parameter unique identifier for the Custom Report's Start Date parameter
    attr_accessor :start_date_param_id

    attr_accessor :start_date_override

    attr_accessor :end_date_flag

    # Parameter unique identifier for the Custom Report's End Date parameter
    attr_accessor :end_date_param_id

    attr_accessor :end_date_override

    attr_accessor :opp_type_flag

    # Parameter unique identifier for the Custom Report's Opportunity Type parameter
    attr_accessor :opp_type_param_id

    attr_accessor :opp_type_override

    attr_accessor :opportunity_flag

    # Parameter unique identifier for the Custom Report's Opportunity parameter
    attr_accessor :opportunity_param_id

    attr_accessor :opportunity_override

    attr_accessor :marketing_campaign_flag

    # Parameter unique identifier for the Custom Report's Marketing Campaign parameter
    attr_accessor :marketing_campaign_param_id

    attr_accessor :marketing_campaign_override

    attr_accessor :service_board_flag

    # Parameter unique identifier for the Custom Report's Service Board parameter
    attr_accessor :service_board_param_id

    attr_accessor :service_board_default_flag

    attr_accessor :service_board_override

    attr_accessor :service_type_flag

    # Parameter unique identifier for the Custom Report's Service Type parameter
    attr_accessor :service_type_param_id

    attr_accessor :service_type_override

    attr_accessor :service_status_flag

    # Parameter unique identifier for the Custom Report's Service Status parameter
    attr_accessor :service_status_param_id

    attr_accessor :service_status_override

    attr_accessor :agreement_type_flag

    # Parameter unique identifier for the Custom Report's Agreement Type parameter
    attr_accessor :agreement_type_param_id

    attr_accessor :agreement_type_override

    attr_accessor :agreement_flag

    # Parameter unique identifier for the Custom Report's Agreement parameter
    attr_accessor :agreement_param_id

    attr_accessor :agreement_override

    attr_accessor :project_type_flag

    # Parameter unique identifier for the Custom Report's Project Type parameter
    attr_accessor :project_type_param_id

    attr_accessor :project_type_override

    attr_accessor :project_flag

    # Parameter unique identifier for the Custom Report's Project parameter
    attr_accessor :project_param_id

    attr_accessor :project_override

    attr_accessor :work_role_flag

    # Parameter unique identifier for the Custom Report's Work Role parameter
    attr_accessor :work_role_param_id

    attr_accessor :work_role_override

    attr_accessor :work_type_flag

    # Parameter unique identifier for the Custom Report's Work Type parameter
    attr_accessor :work_type_param_id

    attr_accessor :work_type_override

    attr_accessor :invoice_flag

    # Parameter unique identifier for the Custom Report's Invoice Type parameter
    attr_accessor :invoice_param_id

    attr_accessor :invoice_override

    # Metadata of the entity
    attr_accessor :_info

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'report_link' => :'reportLink',
        :'name' => :'name',
        :'_module' => :'module',
        :'description' => :'description',
        :'generated_flag' => :'generatedFlag',
        :'parameter_prefix' => :'parameterPrefix',
        :'parameter_separator' => :'parameterSeparator',
        :'parameter_name_separator' => :'parameterNameSeparator',
        :'parameter_suffix' => :'parameterSuffix',
        :'location_flag' => :'locationFlag',
        :'location_param_id' => :'locationParamId',
        :'location_default_flag' => :'locationDefaultFlag',
        :'location_override' => :'locationOverride',
        :'department_flag' => :'departmentFlag',
        :'department_param_id' => :'departmentParamId',
        :'department_default_flag' => :'departmentDefaultFlag',
        :'department_override' => :'departmentOverride',
        :'territory_flag' => :'territoryFlag',
        :'territory_param_id' => :'territoryParamId',
        :'territory_default_flag' => :'territoryDefaultFlag',
        :'territory_override' => :'territoryOverride',
        :'company_flag' => :'companyFlag',
        :'company_param_id' => :'companyParamId',
        :'company_override' => :'companyOverride',
        :'member_flag' => :'memberFlag',
        :'member_param_id' => :'memberParamId',
        :'member_override' => :'memberOverride',
        :'start_date_flag' => :'startDateFlag',
        :'start_date_param_id' => :'startDateParamId',
        :'start_date_override' => :'startDateOverride',
        :'end_date_flag' => :'endDateFlag',
        :'end_date_param_id' => :'endDateParamId',
        :'end_date_override' => :'endDateOverride',
        :'opp_type_flag' => :'oppTypeFlag',
        :'opp_type_param_id' => :'oppTypeParamId',
        :'opp_type_override' => :'oppTypeOverride',
        :'opportunity_flag' => :'opportunityFlag',
        :'opportunity_param_id' => :'opportunityParamId',
        :'opportunity_override' => :'opportunityOverride',
        :'marketing_campaign_flag' => :'marketingCampaignFlag',
        :'marketing_campaign_param_id' => :'marketingCampaignParamId',
        :'marketing_campaign_override' => :'marketingCampaignOverride',
        :'service_board_flag' => :'serviceBoardFlag',
        :'service_board_param_id' => :'serviceBoardParamId',
        :'service_board_default_flag' => :'serviceBoardDefaultFlag',
        :'service_board_override' => :'serviceBoardOverride',
        :'service_type_flag' => :'serviceTypeFlag',
        :'service_type_param_id' => :'serviceTypeParamId',
        :'service_type_override' => :'serviceTypeOverride',
        :'service_status_flag' => :'serviceStatusFlag',
        :'service_status_param_id' => :'serviceStatusParamId',
        :'service_status_override' => :'serviceStatusOverride',
        :'agreement_type_flag' => :'agreementTypeFlag',
        :'agreement_type_param_id' => :'agreementTypeParamId',
        :'agreement_type_override' => :'agreementTypeOverride',
        :'agreement_flag' => :'agreementFlag',
        :'agreement_param_id' => :'agreementParamId',
        :'agreement_override' => :'agreementOverride',
        :'project_type_flag' => :'projectTypeFlag',
        :'project_type_param_id' => :'projectTypeParamId',
        :'project_type_override' => :'projectTypeOverride',
        :'project_flag' => :'projectFlag',
        :'project_param_id' => :'projectParamId',
        :'project_override' => :'projectOverride',
        :'work_role_flag' => :'workRoleFlag',
        :'work_role_param_id' => :'workRoleParamId',
        :'work_role_override' => :'workRoleOverride',
        :'work_type_flag' => :'workTypeFlag',
        :'work_type_param_id' => :'workTypeParamId',
        :'work_type_override' => :'workTypeOverride',
        :'invoice_flag' => :'invoiceFlag',
        :'invoice_param_id' => :'invoiceParamId',
        :'invoice_override' => :'invoiceOverride',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'report_link' => :'String',
        :'name' => :'String',
        :'_module' => :'String',
        :'description' => :'String',
        :'generated_flag' => :'BOOLEAN',
        :'parameter_prefix' => :'String',
        :'parameter_separator' => :'String',
        :'parameter_name_separator' => :'String',
        :'parameter_suffix' => :'String',
        :'location_flag' => :'BOOLEAN',
        :'location_param_id' => :'Integer',
        :'location_default_flag' => :'BOOLEAN',
        :'location_override' => :'String',
        :'department_flag' => :'BOOLEAN',
        :'department_param_id' => :'Integer',
        :'department_default_flag' => :'BOOLEAN',
        :'department_override' => :'String',
        :'territory_flag' => :'BOOLEAN',
        :'territory_param_id' => :'Integer',
        :'territory_default_flag' => :'BOOLEAN',
        :'territory_override' => :'String',
        :'company_flag' => :'BOOLEAN',
        :'company_param_id' => :'Integer',
        :'company_override' => :'String',
        :'member_flag' => :'BOOLEAN',
        :'member_param_id' => :'Integer',
        :'member_override' => :'String',
        :'start_date_flag' => :'BOOLEAN',
        :'start_date_param_id' => :'Integer',
        :'start_date_override' => :'String',
        :'end_date_flag' => :'BOOLEAN',
        :'end_date_param_id' => :'Integer',
        :'end_date_override' => :'String',
        :'opp_type_flag' => :'BOOLEAN',
        :'opp_type_param_id' => :'Integer',
        :'opp_type_override' => :'String',
        :'opportunity_flag' => :'BOOLEAN',
        :'opportunity_param_id' => :'Integer',
        :'opportunity_override' => :'String',
        :'marketing_campaign_flag' => :'BOOLEAN',
        :'marketing_campaign_param_id' => :'Integer',
        :'marketing_campaign_override' => :'String',
        :'service_board_flag' => :'BOOLEAN',
        :'service_board_param_id' => :'Integer',
        :'service_board_default_flag' => :'BOOLEAN',
        :'service_board_override' => :'String',
        :'service_type_flag' => :'BOOLEAN',
        :'service_type_param_id' => :'Integer',
        :'service_type_override' => :'String',
        :'service_status_flag' => :'BOOLEAN',
        :'service_status_param_id' => :'Integer',
        :'service_status_override' => :'String',
        :'agreement_type_flag' => :'BOOLEAN',
        :'agreement_type_param_id' => :'Integer',
        :'agreement_type_override' => :'String',
        :'agreement_flag' => :'BOOLEAN',
        :'agreement_param_id' => :'Integer',
        :'agreement_override' => :'String',
        :'project_type_flag' => :'BOOLEAN',
        :'project_type_param_id' => :'Integer',
        :'project_type_override' => :'String',
        :'project_flag' => :'BOOLEAN',
        :'project_param_id' => :'Integer',
        :'project_override' => :'String',
        :'work_role_flag' => :'BOOLEAN',
        :'work_role_param_id' => :'Integer',
        :'work_role_override' => :'String',
        :'work_type_flag' => :'BOOLEAN',
        :'work_type_param_id' => :'Integer',
        :'work_type_override' => :'String',
        :'invoice_flag' => :'BOOLEAN',
        :'invoice_param_id' => :'Integer',
        :'invoice_override' => :'String',
        :'_info' => :'Metadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'reportLink')
        self.report_link = attributes[:'reportLink']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'module')
        self._module = attributes[:'module']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'generatedFlag')
        self.generated_flag = attributes[:'generatedFlag']
      end

      if attributes.has_key?(:'parameterPrefix')
        self.parameter_prefix = attributes[:'parameterPrefix']
      end

      if attributes.has_key?(:'parameterSeparator')
        self.parameter_separator = attributes[:'parameterSeparator']
      end

      if attributes.has_key?(:'parameterNameSeparator')
        self.parameter_name_separator = attributes[:'parameterNameSeparator']
      end

      if attributes.has_key?(:'parameterSuffix')
        self.parameter_suffix = attributes[:'parameterSuffix']
      end

      if attributes.has_key?(:'locationFlag')
        self.location_flag = attributes[:'locationFlag']
      end

      if attributes.has_key?(:'locationParamId')
        self.location_param_id = attributes[:'locationParamId']
      end

      if attributes.has_key?(:'locationDefaultFlag')
        self.location_default_flag = attributes[:'locationDefaultFlag']
      end

      if attributes.has_key?(:'locationOverride')
        self.location_override = attributes[:'locationOverride']
      end

      if attributes.has_key?(:'departmentFlag')
        self.department_flag = attributes[:'departmentFlag']
      end

      if attributes.has_key?(:'departmentParamId')
        self.department_param_id = attributes[:'departmentParamId']
      end

      if attributes.has_key?(:'departmentDefaultFlag')
        self.department_default_flag = attributes[:'departmentDefaultFlag']
      end

      if attributes.has_key?(:'departmentOverride')
        self.department_override = attributes[:'departmentOverride']
      end

      if attributes.has_key?(:'territoryFlag')
        self.territory_flag = attributes[:'territoryFlag']
      end

      if attributes.has_key?(:'territoryParamId')
        self.territory_param_id = attributes[:'territoryParamId']
      end

      if attributes.has_key?(:'territoryDefaultFlag')
        self.territory_default_flag = attributes[:'territoryDefaultFlag']
      end

      if attributes.has_key?(:'territoryOverride')
        self.territory_override = attributes[:'territoryOverride']
      end

      if attributes.has_key?(:'companyFlag')
        self.company_flag = attributes[:'companyFlag']
      end

      if attributes.has_key?(:'companyParamId')
        self.company_param_id = attributes[:'companyParamId']
      end

      if attributes.has_key?(:'companyOverride')
        self.company_override = attributes[:'companyOverride']
      end

      if attributes.has_key?(:'memberFlag')
        self.member_flag = attributes[:'memberFlag']
      end

      if attributes.has_key?(:'memberParamId')
        self.member_param_id = attributes[:'memberParamId']
      end

      if attributes.has_key?(:'memberOverride')
        self.member_override = attributes[:'memberOverride']
      end

      if attributes.has_key?(:'startDateFlag')
        self.start_date_flag = attributes[:'startDateFlag']
      end

      if attributes.has_key?(:'startDateParamId')
        self.start_date_param_id = attributes[:'startDateParamId']
      end

      if attributes.has_key?(:'startDateOverride')
        self.start_date_override = attributes[:'startDateOverride']
      end

      if attributes.has_key?(:'endDateFlag')
        self.end_date_flag = attributes[:'endDateFlag']
      end

      if attributes.has_key?(:'endDateParamId')
        self.end_date_param_id = attributes[:'endDateParamId']
      end

      if attributes.has_key?(:'endDateOverride')
        self.end_date_override = attributes[:'endDateOverride']
      end

      if attributes.has_key?(:'oppTypeFlag')
        self.opp_type_flag = attributes[:'oppTypeFlag']
      end

      if attributes.has_key?(:'oppTypeParamId')
        self.opp_type_param_id = attributes[:'oppTypeParamId']
      end

      if attributes.has_key?(:'oppTypeOverride')
        self.opp_type_override = attributes[:'oppTypeOverride']
      end

      if attributes.has_key?(:'opportunityFlag')
        self.opportunity_flag = attributes[:'opportunityFlag']
      end

      if attributes.has_key?(:'opportunityParamId')
        self.opportunity_param_id = attributes[:'opportunityParamId']
      end

      if attributes.has_key?(:'opportunityOverride')
        self.opportunity_override = attributes[:'opportunityOverride']
      end

      if attributes.has_key?(:'marketingCampaignFlag')
        self.marketing_campaign_flag = attributes[:'marketingCampaignFlag']
      end

      if attributes.has_key?(:'marketingCampaignParamId')
        self.marketing_campaign_param_id = attributes[:'marketingCampaignParamId']
      end

      if attributes.has_key?(:'marketingCampaignOverride')
        self.marketing_campaign_override = attributes[:'marketingCampaignOverride']
      end

      if attributes.has_key?(:'serviceBoardFlag')
        self.service_board_flag = attributes[:'serviceBoardFlag']
      end

      if attributes.has_key?(:'serviceBoardParamId')
        self.service_board_param_id = attributes[:'serviceBoardParamId']
      end

      if attributes.has_key?(:'serviceBoardDefaultFlag')
        self.service_board_default_flag = attributes[:'serviceBoardDefaultFlag']
      end

      if attributes.has_key?(:'serviceBoardOverride')
        self.service_board_override = attributes[:'serviceBoardOverride']
      end

      if attributes.has_key?(:'serviceTypeFlag')
        self.service_type_flag = attributes[:'serviceTypeFlag']
      end

      if attributes.has_key?(:'serviceTypeParamId')
        self.service_type_param_id = attributes[:'serviceTypeParamId']
      end

      if attributes.has_key?(:'serviceTypeOverride')
        self.service_type_override = attributes[:'serviceTypeOverride']
      end

      if attributes.has_key?(:'serviceStatusFlag')
        self.service_status_flag = attributes[:'serviceStatusFlag']
      end

      if attributes.has_key?(:'serviceStatusParamId')
        self.service_status_param_id = attributes[:'serviceStatusParamId']
      end

      if attributes.has_key?(:'serviceStatusOverride')
        self.service_status_override = attributes[:'serviceStatusOverride']
      end

      if attributes.has_key?(:'agreementTypeFlag')
        self.agreement_type_flag = attributes[:'agreementTypeFlag']
      end

      if attributes.has_key?(:'agreementTypeParamId')
        self.agreement_type_param_id = attributes[:'agreementTypeParamId']
      end

      if attributes.has_key?(:'agreementTypeOverride')
        self.agreement_type_override = attributes[:'agreementTypeOverride']
      end

      if attributes.has_key?(:'agreementFlag')
        self.agreement_flag = attributes[:'agreementFlag']
      end

      if attributes.has_key?(:'agreementParamId')
        self.agreement_param_id = attributes[:'agreementParamId']
      end

      if attributes.has_key?(:'agreementOverride')
        self.agreement_override = attributes[:'agreementOverride']
      end

      if attributes.has_key?(:'projectTypeFlag')
        self.project_type_flag = attributes[:'projectTypeFlag']
      end

      if attributes.has_key?(:'projectTypeParamId')
        self.project_type_param_id = attributes[:'projectTypeParamId']
      end

      if attributes.has_key?(:'projectTypeOverride')
        self.project_type_override = attributes[:'projectTypeOverride']
      end

      if attributes.has_key?(:'projectFlag')
        self.project_flag = attributes[:'projectFlag']
      end

      if attributes.has_key?(:'projectParamId')
        self.project_param_id = attributes[:'projectParamId']
      end

      if attributes.has_key?(:'projectOverride')
        self.project_override = attributes[:'projectOverride']
      end

      if attributes.has_key?(:'workRoleFlag')
        self.work_role_flag = attributes[:'workRoleFlag']
      end

      if attributes.has_key?(:'workRoleParamId')
        self.work_role_param_id = attributes[:'workRoleParamId']
      end

      if attributes.has_key?(:'workRoleOverride')
        self.work_role_override = attributes[:'workRoleOverride']
      end

      if attributes.has_key?(:'workTypeFlag')
        self.work_type_flag = attributes[:'workTypeFlag']
      end

      if attributes.has_key?(:'workTypeParamId')
        self.work_type_param_id = attributes[:'workTypeParamId']
      end

      if attributes.has_key?(:'workTypeOverride')
        self.work_type_override = attributes[:'workTypeOverride']
      end

      if attributes.has_key?(:'invoiceFlag')
        self.invoice_flag = attributes[:'invoiceFlag']
      end

      if attributes.has_key?(:'invoiceParamId')
        self.invoice_param_id = attributes[:'invoiceParamId']
      end

      if attributes.has_key?(:'invoiceOverride')
        self.invoice_override = attributes[:'invoiceOverride']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @report_link.nil?
        invalid_properties.push("invalid value for 'report_link', report_link cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 100
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 100.")
      end

      if @_module.nil?
        invalid_properties.push("invalid value for '_module', _module cannot be nil.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @description.to_s.length > 150
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 150.")
      end

      if !@parameter_prefix.nil? && @parameter_prefix.to_s.length > 50
        invalid_properties.push("invalid value for 'parameter_prefix', the character length must be smaller than or equal to 50.")
      end

      if !@parameter_separator.nil? && @parameter_separator.to_s.length > 50
        invalid_properties.push("invalid value for 'parameter_separator', the character length must be smaller than or equal to 50.")
      end

      if !@parameter_name_separator.nil? && @parameter_name_separator.to_s.length > 50
        invalid_properties.push("invalid value for 'parameter_name_separator', the character length must be smaller than or equal to 50.")
      end

      if !@parameter_suffix.nil? && @parameter_suffix.to_s.length > 50
        invalid_properties.push("invalid value for 'parameter_suffix', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @report_link.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if @_module.nil?
      _module_validator = EnumAttributeValidator.new('String', ["Companies", "Finance", "Marketing", "Procurement", "Project", "Sales", "ServiceDesk", "TimeExpense"])
      return false unless _module_validator.valid?(@_module)
      return false if @description.nil?
      return false if @description.to_s.length > 150
      return false if !@parameter_prefix.nil? && @parameter_prefix.to_s.length > 50
      return false if !@parameter_separator.nil? && @parameter_separator.to_s.length > 50
      return false if !@parameter_name_separator.nil? && @parameter_name_separator.to_s.length > 50
      return false if !@parameter_suffix.nil? && @parameter_suffix.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 100
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 100."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _module Object to be assigned
    def _module=(_module)
      validator = EnumAttributeValidator.new('String', ["Companies", "Finance", "Marketing", "Procurement", "Project", "Sales", "ServiceDesk", "TimeExpense"])
      unless validator.valid?(_module)
        fail ArgumentError, "invalid value for '_module', must be one of #{validator.allowable_values}."
      end
      @_module = _module
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, "description cannot be nil"
      end

      if description.to_s.length > 150
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 150."
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] parameter_prefix Value to be assigned
    def parameter_prefix=(parameter_prefix)

      if !parameter_prefix.nil? && parameter_prefix.to_s.length > 50
        fail ArgumentError, "invalid value for 'parameter_prefix', the character length must be smaller than or equal to 50."
      end

      @parameter_prefix = parameter_prefix
    end

    # Custom attribute writer method with validation
    # @param [Object] parameter_separator Value to be assigned
    def parameter_separator=(parameter_separator)

      if !parameter_separator.nil? && parameter_separator.to_s.length > 50
        fail ArgumentError, "invalid value for 'parameter_separator', the character length must be smaller than or equal to 50."
      end

      @parameter_separator = parameter_separator
    end

    # Custom attribute writer method with validation
    # @param [Object] parameter_name_separator Value to be assigned
    def parameter_name_separator=(parameter_name_separator)

      if !parameter_name_separator.nil? && parameter_name_separator.to_s.length > 50
        fail ArgumentError, "invalid value for 'parameter_name_separator', the character length must be smaller than or equal to 50."
      end

      @parameter_name_separator = parameter_name_separator
    end

    # Custom attribute writer method with validation
    # @param [Object] parameter_suffix Value to be assigned
    def parameter_suffix=(parameter_suffix)

      if !parameter_suffix.nil? && parameter_suffix.to_s.length > 50
        fail ArgumentError, "invalid value for 'parameter_suffix', the character length must be smaller than or equal to 50."
      end

      @parameter_suffix = parameter_suffix
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          report_link == o.report_link &&
          name == o.name &&
          _module == o._module &&
          description == o.description &&
          generated_flag == o.generated_flag &&
          parameter_prefix == o.parameter_prefix &&
          parameter_separator == o.parameter_separator &&
          parameter_name_separator == o.parameter_name_separator &&
          parameter_suffix == o.parameter_suffix &&
          location_flag == o.location_flag &&
          location_param_id == o.location_param_id &&
          location_default_flag == o.location_default_flag &&
          location_override == o.location_override &&
          department_flag == o.department_flag &&
          department_param_id == o.department_param_id &&
          department_default_flag == o.department_default_flag &&
          department_override == o.department_override &&
          territory_flag == o.territory_flag &&
          territory_param_id == o.territory_param_id &&
          territory_default_flag == o.territory_default_flag &&
          territory_override == o.territory_override &&
          company_flag == o.company_flag &&
          company_param_id == o.company_param_id &&
          company_override == o.company_override &&
          member_flag == o.member_flag &&
          member_param_id == o.member_param_id &&
          member_override == o.member_override &&
          start_date_flag == o.start_date_flag &&
          start_date_param_id == o.start_date_param_id &&
          start_date_override == o.start_date_override &&
          end_date_flag == o.end_date_flag &&
          end_date_param_id == o.end_date_param_id &&
          end_date_override == o.end_date_override &&
          opp_type_flag == o.opp_type_flag &&
          opp_type_param_id == o.opp_type_param_id &&
          opp_type_override == o.opp_type_override &&
          opportunity_flag == o.opportunity_flag &&
          opportunity_param_id == o.opportunity_param_id &&
          opportunity_override == o.opportunity_override &&
          marketing_campaign_flag == o.marketing_campaign_flag &&
          marketing_campaign_param_id == o.marketing_campaign_param_id &&
          marketing_campaign_override == o.marketing_campaign_override &&
          service_board_flag == o.service_board_flag &&
          service_board_param_id == o.service_board_param_id &&
          service_board_default_flag == o.service_board_default_flag &&
          service_board_override == o.service_board_override &&
          service_type_flag == o.service_type_flag &&
          service_type_param_id == o.service_type_param_id &&
          service_type_override == o.service_type_override &&
          service_status_flag == o.service_status_flag &&
          service_status_param_id == o.service_status_param_id &&
          service_status_override == o.service_status_override &&
          agreement_type_flag == o.agreement_type_flag &&
          agreement_type_param_id == o.agreement_type_param_id &&
          agreement_type_override == o.agreement_type_override &&
          agreement_flag == o.agreement_flag &&
          agreement_param_id == o.agreement_param_id &&
          agreement_override == o.agreement_override &&
          project_type_flag == o.project_type_flag &&
          project_type_param_id == o.project_type_param_id &&
          project_type_override == o.project_type_override &&
          project_flag == o.project_flag &&
          project_param_id == o.project_param_id &&
          project_override == o.project_override &&
          work_role_flag == o.work_role_flag &&
          work_role_param_id == o.work_role_param_id &&
          work_role_override == o.work_role_override &&
          work_type_flag == o.work_type_flag &&
          work_type_param_id == o.work_type_param_id &&
          work_type_override == o.work_type_override &&
          invoice_flag == o.invoice_flag &&
          invoice_param_id == o.invoice_param_id &&
          invoice_override == o.invoice_override &&
          _info == o._info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, report_link, name, _module, description, generated_flag, parameter_prefix, parameter_separator, parameter_name_separator, parameter_suffix, location_flag, location_param_id, location_default_flag, location_override, department_flag, department_param_id, department_default_flag, department_override, territory_flag, territory_param_id, territory_default_flag, territory_override, company_flag, company_param_id, company_override, member_flag, member_param_id, member_override, start_date_flag, start_date_param_id, start_date_override, end_date_flag, end_date_param_id, end_date_override, opp_type_flag, opp_type_param_id, opp_type_override, opportunity_flag, opportunity_param_id, opportunity_override, marketing_campaign_flag, marketing_campaign_param_id, marketing_campaign_override, service_board_flag, service_board_param_id, service_board_default_flag, service_board_override, service_type_flag, service_type_param_id, service_type_override, service_status_flag, service_status_param_id, service_status_override, agreement_type_flag, agreement_type_param_id, agreement_type_override, agreement_flag, agreement_param_id, agreement_override, project_type_flag, project_type_param_id, project_type_override, project_flag, project_param_id, project_override, work_role_flag, work_role_param_id, work_role_override, work_type_flag, work_type_param_id, work_type_override, invoice_flag, invoice_param_id, invoice_override, _info].hash
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
