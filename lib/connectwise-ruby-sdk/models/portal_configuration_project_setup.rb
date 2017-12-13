
require 'date'

module ConnectWise

  class PortalConfigurationProjectSetup
    attr_accessor :id

    attr_accessor :portal_config

    attr_accessor :project_name_flag

    attr_accessor :project_type_flag

    attr_accessor :status_flag

    attr_accessor :project_manager_flag

    attr_accessor :billing_method_flag

    attr_accessor :contact_flag

    attr_accessor :estimated_start_flag

    attr_accessor :estimated_end_flag

    attr_accessor :description_flag

    attr_accessor :last_updated_flag

    attr_accessor :only_display

    attr_accessor :time_material_budget_hrs_flag

    attr_accessor :time_material_scheduled_start_flag

    attr_accessor :time_material_scheduled_finish_flag

    attr_accessor :time_material_scheduled_hrs_flag

    attr_accessor :time_material_actual_start_flag

    attr_accessor :time_material_actual_finish_flag

    attr_accessor :time_material_actual_hrs_flag

    attr_accessor :time_material_bill_flag

    attr_accessor :time_material_status_flag

    attr_accessor :time_material_assigned_flag

    attr_accessor :fixed_fee_budget_hrs_flag

    attr_accessor :fixed_fee_scheduled_start_flag

    attr_accessor :fixed_fee_scheduled_finish_flag

    attr_accessor :fixed_fee_scheduled_hrs_flag

    attr_accessor :fixed_fee_actual_start_flag

    attr_accessor :fixed_fee_actual_finish_flag

    attr_accessor :fixed_fee_actual_hrs_flag

    attr_accessor :fixed_fee_bill_flag

    attr_accessor :fixed_fee_status_flag

    attr_accessor :fixed_fee_assigned_flag

    attr_accessor :project_issue_budget_hrs_flag

    attr_accessor :project_issue_scheduled_start_flag

    attr_accessor :project_issue_scheduled_finish_flag

    attr_accessor :project_issue_scheduled_hrs_flag

    attr_accessor :project_issue_actual_start_flag

    attr_accessor :project_issue_actual_finish_flag

    attr_accessor :project_issue_actual_hrs_flag

    attr_accessor :project_issue_bill_flag

    attr_accessor :project_issue_status_flag

    attr_accessor :project_issue_assigned_flag

    attr_accessor :project_detail_total_hours_flag

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
        :'portal_config' => :'portalConfig',
        :'project_name_flag' => :'projectNameFlag',
        :'project_type_flag' => :'projectTypeFlag',
        :'status_flag' => :'statusFlag',
        :'project_manager_flag' => :'projectManagerFlag',
        :'billing_method_flag' => :'billingMethodFlag',
        :'contact_flag' => :'contactFlag',
        :'estimated_start_flag' => :'estimatedStartFlag',
        :'estimated_end_flag' => :'estimatedEndFlag',
        :'description_flag' => :'descriptionFlag',
        :'last_updated_flag' => :'lastUpdatedFlag',
        :'only_display' => :'onlyDisplay',
        :'time_material_budget_hrs_flag' => :'timeMaterialBudgetHrsFlag',
        :'time_material_scheduled_start_flag' => :'timeMaterialScheduledStartFlag',
        :'time_material_scheduled_finish_flag' => :'timeMaterialScheduledFinishFlag',
        :'time_material_scheduled_hrs_flag' => :'timeMaterialScheduledHrsFlag',
        :'time_material_actual_start_flag' => :'timeMaterialActualStartFlag',
        :'time_material_actual_finish_flag' => :'timeMaterialActualFinishFlag',
        :'time_material_actual_hrs_flag' => :'timeMaterialActualHrsFlag',
        :'time_material_bill_flag' => :'timeMaterialBillFlag',
        :'time_material_status_flag' => :'timeMaterialStatusFlag',
        :'time_material_assigned_flag' => :'timeMaterialAssignedFlag',
        :'fixed_fee_budget_hrs_flag' => :'fixedFeeBudgetHrsFlag',
        :'fixed_fee_scheduled_start_flag' => :'fixedFeeScheduledStartFlag',
        :'fixed_fee_scheduled_finish_flag' => :'fixedFeeScheduledFinishFlag',
        :'fixed_fee_scheduled_hrs_flag' => :'fixedFeeScheduledHrsFlag',
        :'fixed_fee_actual_start_flag' => :'fixedFeeActualStartFlag',
        :'fixed_fee_actual_finish_flag' => :'fixedFeeActualFinishFlag',
        :'fixed_fee_actual_hrs_flag' => :'fixedFeeActualHrsFlag',
        :'fixed_fee_bill_flag' => :'fixedFeeBillFlag',
        :'fixed_fee_status_flag' => :'fixedFeeStatusFlag',
        :'fixed_fee_assigned_flag' => :'fixedFeeAssignedFlag',
        :'project_issue_budget_hrs_flag' => :'projectIssueBudgetHrsFlag',
        :'project_issue_scheduled_start_flag' => :'projectIssueScheduledStartFlag',
        :'project_issue_scheduled_finish_flag' => :'projectIssueScheduledFinishFlag',
        :'project_issue_scheduled_hrs_flag' => :'projectIssueScheduledHrsFlag',
        :'project_issue_actual_start_flag' => :'projectIssueActualStartFlag',
        :'project_issue_actual_finish_flag' => :'projectIssueActualFinishFlag',
        :'project_issue_actual_hrs_flag' => :'projectIssueActualHrsFlag',
        :'project_issue_bill_flag' => :'projectIssueBillFlag',
        :'project_issue_status_flag' => :'projectIssueStatusFlag',
        :'project_issue_assigned_flag' => :'projectIssueAssignedFlag',
        :'project_detail_total_hours_flag' => :'projectDetailTotalHoursFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'portal_config' => :'PortalConfigurationReference',
        :'project_name_flag' => :'BOOLEAN',
        :'project_type_flag' => :'BOOLEAN',
        :'status_flag' => :'BOOLEAN',
        :'project_manager_flag' => :'BOOLEAN',
        :'billing_method_flag' => :'BOOLEAN',
        :'contact_flag' => :'BOOLEAN',
        :'estimated_start_flag' => :'BOOLEAN',
        :'estimated_end_flag' => :'BOOLEAN',
        :'description_flag' => :'BOOLEAN',
        :'last_updated_flag' => :'BOOLEAN',
        :'only_display' => :'String',
        :'time_material_budget_hrs_flag' => :'BOOLEAN',
        :'time_material_scheduled_start_flag' => :'BOOLEAN',
        :'time_material_scheduled_finish_flag' => :'BOOLEAN',
        :'time_material_scheduled_hrs_flag' => :'BOOLEAN',
        :'time_material_actual_start_flag' => :'BOOLEAN',
        :'time_material_actual_finish_flag' => :'BOOLEAN',
        :'time_material_actual_hrs_flag' => :'BOOLEAN',
        :'time_material_bill_flag' => :'BOOLEAN',
        :'time_material_status_flag' => :'BOOLEAN',
        :'time_material_assigned_flag' => :'BOOLEAN',
        :'fixed_fee_budget_hrs_flag' => :'BOOLEAN',
        :'fixed_fee_scheduled_start_flag' => :'BOOLEAN',
        :'fixed_fee_scheduled_finish_flag' => :'BOOLEAN',
        :'fixed_fee_scheduled_hrs_flag' => :'BOOLEAN',
        :'fixed_fee_actual_start_flag' => :'BOOLEAN',
        :'fixed_fee_actual_finish_flag' => :'BOOLEAN',
        :'fixed_fee_actual_hrs_flag' => :'BOOLEAN',
        :'fixed_fee_bill_flag' => :'BOOLEAN',
        :'fixed_fee_status_flag' => :'BOOLEAN',
        :'fixed_fee_assigned_flag' => :'BOOLEAN',
        :'project_issue_budget_hrs_flag' => :'BOOLEAN',
        :'project_issue_scheduled_start_flag' => :'BOOLEAN',
        :'project_issue_scheduled_finish_flag' => :'BOOLEAN',
        :'project_issue_scheduled_hrs_flag' => :'BOOLEAN',
        :'project_issue_actual_start_flag' => :'BOOLEAN',
        :'project_issue_actual_finish_flag' => :'BOOLEAN',
        :'project_issue_actual_hrs_flag' => :'BOOLEAN',
        :'project_issue_bill_flag' => :'BOOLEAN',
        :'project_issue_status_flag' => :'BOOLEAN',
        :'project_issue_assigned_flag' => :'BOOLEAN',
        :'project_detail_total_hours_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'portalConfig')
        self.portal_config = attributes[:'portalConfig']
      end

      if attributes.has_key?(:'projectNameFlag')
        self.project_name_flag = attributes[:'projectNameFlag']
      end

      if attributes.has_key?(:'projectTypeFlag')
        self.project_type_flag = attributes[:'projectTypeFlag']
      end

      if attributes.has_key?(:'statusFlag')
        self.status_flag = attributes[:'statusFlag']
      end

      if attributes.has_key?(:'projectManagerFlag')
        self.project_manager_flag = attributes[:'projectManagerFlag']
      end

      if attributes.has_key?(:'billingMethodFlag')
        self.billing_method_flag = attributes[:'billingMethodFlag']
      end

      if attributes.has_key?(:'contactFlag')
        self.contact_flag = attributes[:'contactFlag']
      end

      if attributes.has_key?(:'estimatedStartFlag')
        self.estimated_start_flag = attributes[:'estimatedStartFlag']
      end

      if attributes.has_key?(:'estimatedEndFlag')
        self.estimated_end_flag = attributes[:'estimatedEndFlag']
      end

      if attributes.has_key?(:'descriptionFlag')
        self.description_flag = attributes[:'descriptionFlag']
      end

      if attributes.has_key?(:'lastUpdatedFlag')
        self.last_updated_flag = attributes[:'lastUpdatedFlag']
      end

      if attributes.has_key?(:'onlyDisplay')
        self.only_display = attributes[:'onlyDisplay']
      end

      if attributes.has_key?(:'timeMaterialBudgetHrsFlag')
        self.time_material_budget_hrs_flag = attributes[:'timeMaterialBudgetHrsFlag']
      end

      if attributes.has_key?(:'timeMaterialScheduledStartFlag')
        self.time_material_scheduled_start_flag = attributes[:'timeMaterialScheduledStartFlag']
      end

      if attributes.has_key?(:'timeMaterialScheduledFinishFlag')
        self.time_material_scheduled_finish_flag = attributes[:'timeMaterialScheduledFinishFlag']
      end

      if attributes.has_key?(:'timeMaterialScheduledHrsFlag')
        self.time_material_scheduled_hrs_flag = attributes[:'timeMaterialScheduledHrsFlag']
      end

      if attributes.has_key?(:'timeMaterialActualStartFlag')
        self.time_material_actual_start_flag = attributes[:'timeMaterialActualStartFlag']
      end

      if attributes.has_key?(:'timeMaterialActualFinishFlag')
        self.time_material_actual_finish_flag = attributes[:'timeMaterialActualFinishFlag']
      end

      if attributes.has_key?(:'timeMaterialActualHrsFlag')
        self.time_material_actual_hrs_flag = attributes[:'timeMaterialActualHrsFlag']
      end

      if attributes.has_key?(:'timeMaterialBillFlag')
        self.time_material_bill_flag = attributes[:'timeMaterialBillFlag']
      end

      if attributes.has_key?(:'timeMaterialStatusFlag')
        self.time_material_status_flag = attributes[:'timeMaterialStatusFlag']
      end

      if attributes.has_key?(:'timeMaterialAssignedFlag')
        self.time_material_assigned_flag = attributes[:'timeMaterialAssignedFlag']
      end

      if attributes.has_key?(:'fixedFeeBudgetHrsFlag')
        self.fixed_fee_budget_hrs_flag = attributes[:'fixedFeeBudgetHrsFlag']
      end

      if attributes.has_key?(:'fixedFeeScheduledStartFlag')
        self.fixed_fee_scheduled_start_flag = attributes[:'fixedFeeScheduledStartFlag']
      end

      if attributes.has_key?(:'fixedFeeScheduledFinishFlag')
        self.fixed_fee_scheduled_finish_flag = attributes[:'fixedFeeScheduledFinishFlag']
      end

      if attributes.has_key?(:'fixedFeeScheduledHrsFlag')
        self.fixed_fee_scheduled_hrs_flag = attributes[:'fixedFeeScheduledHrsFlag']
      end

      if attributes.has_key?(:'fixedFeeActualStartFlag')
        self.fixed_fee_actual_start_flag = attributes[:'fixedFeeActualStartFlag']
      end

      if attributes.has_key?(:'fixedFeeActualFinishFlag')
        self.fixed_fee_actual_finish_flag = attributes[:'fixedFeeActualFinishFlag']
      end

      if attributes.has_key?(:'fixedFeeActualHrsFlag')
        self.fixed_fee_actual_hrs_flag = attributes[:'fixedFeeActualHrsFlag']
      end

      if attributes.has_key?(:'fixedFeeBillFlag')
        self.fixed_fee_bill_flag = attributes[:'fixedFeeBillFlag']
      end

      if attributes.has_key?(:'fixedFeeStatusFlag')
        self.fixed_fee_status_flag = attributes[:'fixedFeeStatusFlag']
      end

      if attributes.has_key?(:'fixedFeeAssignedFlag')
        self.fixed_fee_assigned_flag = attributes[:'fixedFeeAssignedFlag']
      end

      if attributes.has_key?(:'projectIssueBudgetHrsFlag')
        self.project_issue_budget_hrs_flag = attributes[:'projectIssueBudgetHrsFlag']
      end

      if attributes.has_key?(:'projectIssueScheduledStartFlag')
        self.project_issue_scheduled_start_flag = attributes[:'projectIssueScheduledStartFlag']
      end

      if attributes.has_key?(:'projectIssueScheduledFinishFlag')
        self.project_issue_scheduled_finish_flag = attributes[:'projectIssueScheduledFinishFlag']
      end

      if attributes.has_key?(:'projectIssueScheduledHrsFlag')
        self.project_issue_scheduled_hrs_flag = attributes[:'projectIssueScheduledHrsFlag']
      end

      if attributes.has_key?(:'projectIssueActualStartFlag')
        self.project_issue_actual_start_flag = attributes[:'projectIssueActualStartFlag']
      end

      if attributes.has_key?(:'projectIssueActualFinishFlag')
        self.project_issue_actual_finish_flag = attributes[:'projectIssueActualFinishFlag']
      end

      if attributes.has_key?(:'projectIssueActualHrsFlag')
        self.project_issue_actual_hrs_flag = attributes[:'projectIssueActualHrsFlag']
      end

      if attributes.has_key?(:'projectIssueBillFlag')
        self.project_issue_bill_flag = attributes[:'projectIssueBillFlag']
      end

      if attributes.has_key?(:'projectIssueStatusFlag')
        self.project_issue_status_flag = attributes[:'projectIssueStatusFlag']
      end

      if attributes.has_key?(:'projectIssueAssignedFlag')
        self.project_issue_assigned_flag = attributes[:'projectIssueAssignedFlag']
      end

      if attributes.has_key?(:'projectDetailTotalHoursFlag')
        self.project_detail_total_hours_flag = attributes[:'projectDetailTotalHoursFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
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
      only_display_validator = EnumAttributeValidator.new('String', ["DoNotDisplay", "Closed30Days", "Closed60Days", "Closed90Days", "Closed120Days", "AllClosed"])
      return false unless only_display_validator.valid?(@only_display)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] only_display Object to be assigned
    def only_display=(only_display)
      validator = EnumAttributeValidator.new('String', ["DoNotDisplay", "Closed30Days", "Closed60Days", "Closed90Days", "Closed120Days", "AllClosed"])
      unless validator.valid?(only_display)
        fail ArgumentError, "invalid value for 'only_display', must be one of #{validator.allowable_values}."
      end
      @only_display = only_display
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          portal_config == o.portal_config &&
          project_name_flag == o.project_name_flag &&
          project_type_flag == o.project_type_flag &&
          status_flag == o.status_flag &&
          project_manager_flag == o.project_manager_flag &&
          billing_method_flag == o.billing_method_flag &&
          contact_flag == o.contact_flag &&
          estimated_start_flag == o.estimated_start_flag &&
          estimated_end_flag == o.estimated_end_flag &&
          description_flag == o.description_flag &&
          last_updated_flag == o.last_updated_flag &&
          only_display == o.only_display &&
          time_material_budget_hrs_flag == o.time_material_budget_hrs_flag &&
          time_material_scheduled_start_flag == o.time_material_scheduled_start_flag &&
          time_material_scheduled_finish_flag == o.time_material_scheduled_finish_flag &&
          time_material_scheduled_hrs_flag == o.time_material_scheduled_hrs_flag &&
          time_material_actual_start_flag == o.time_material_actual_start_flag &&
          time_material_actual_finish_flag == o.time_material_actual_finish_flag &&
          time_material_actual_hrs_flag == o.time_material_actual_hrs_flag &&
          time_material_bill_flag == o.time_material_bill_flag &&
          time_material_status_flag == o.time_material_status_flag &&
          time_material_assigned_flag == o.time_material_assigned_flag &&
          fixed_fee_budget_hrs_flag == o.fixed_fee_budget_hrs_flag &&
          fixed_fee_scheduled_start_flag == o.fixed_fee_scheduled_start_flag &&
          fixed_fee_scheduled_finish_flag == o.fixed_fee_scheduled_finish_flag &&
          fixed_fee_scheduled_hrs_flag == o.fixed_fee_scheduled_hrs_flag &&
          fixed_fee_actual_start_flag == o.fixed_fee_actual_start_flag &&
          fixed_fee_actual_finish_flag == o.fixed_fee_actual_finish_flag &&
          fixed_fee_actual_hrs_flag == o.fixed_fee_actual_hrs_flag &&
          fixed_fee_bill_flag == o.fixed_fee_bill_flag &&
          fixed_fee_status_flag == o.fixed_fee_status_flag &&
          fixed_fee_assigned_flag == o.fixed_fee_assigned_flag &&
          project_issue_budget_hrs_flag == o.project_issue_budget_hrs_flag &&
          project_issue_scheduled_start_flag == o.project_issue_scheduled_start_flag &&
          project_issue_scheduled_finish_flag == o.project_issue_scheduled_finish_flag &&
          project_issue_scheduled_hrs_flag == o.project_issue_scheduled_hrs_flag &&
          project_issue_actual_start_flag == o.project_issue_actual_start_flag &&
          project_issue_actual_finish_flag == o.project_issue_actual_finish_flag &&
          project_issue_actual_hrs_flag == o.project_issue_actual_hrs_flag &&
          project_issue_bill_flag == o.project_issue_bill_flag &&
          project_issue_status_flag == o.project_issue_status_flag &&
          project_issue_assigned_flag == o.project_issue_assigned_flag &&
          project_detail_total_hours_flag == o.project_detail_total_hours_flag &&
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
      [id, portal_config, project_name_flag, project_type_flag, status_flag, project_manager_flag, billing_method_flag, contact_flag, estimated_start_flag, estimated_end_flag, description_flag, last_updated_flag, only_display, time_material_budget_hrs_flag, time_material_scheduled_start_flag, time_material_scheduled_finish_flag, time_material_scheduled_hrs_flag, time_material_actual_start_flag, time_material_actual_finish_flag, time_material_actual_hrs_flag, time_material_bill_flag, time_material_status_flag, time_material_assigned_flag, fixed_fee_budget_hrs_flag, fixed_fee_scheduled_start_flag, fixed_fee_scheduled_finish_flag, fixed_fee_scheduled_hrs_flag, fixed_fee_actual_start_flag, fixed_fee_actual_finish_flag, fixed_fee_actual_hrs_flag, fixed_fee_bill_flag, fixed_fee_status_flag, fixed_fee_assigned_flag, project_issue_budget_hrs_flag, project_issue_scheduled_start_flag, project_issue_scheduled_finish_flag, project_issue_scheduled_hrs_flag, project_issue_actual_start_flag, project_issue_actual_finish_flag, project_issue_actual_hrs_flag, project_issue_bill_flag, project_issue_status_flag, project_issue_assigned_flag, project_detail_total_hours_flag, _info].hash
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
