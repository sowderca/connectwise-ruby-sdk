
require 'date'

module ConnectWise

  class PortalConfigurationServiceSetup
    attr_accessor :id

    attr_accessor :service_type_flag

    attr_accessor :service_sub_type_flag

    attr_accessor :service_sub_type_item_flag

    attr_accessor :status_flag

    attr_accessor :site_name_flag

    attr_accessor :entered_date_flag

    attr_accessor :last_update_flag

    attr_accessor :required_date_flag

    attr_accessor :contact_flag

    attr_accessor :assigned_resources_flag

    attr_accessor :sla_info_flag

    attr_accessor :service_board_flag

    attr_accessor :budget_hours_flag

    attr_accessor :actual_hours_flag

    attr_accessor :approval_status_flag

    attr_accessor :open_tasks_flag

    attr_accessor :closed_tasks_flag

    attr_accessor :display_closed_tickets_option

    attr_accessor :time_materials_ticket_template

    attr_accessor :fixed_fee_ticket_template

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
        :'service_type_flag' => :'serviceTypeFlag',
        :'service_sub_type_flag' => :'serviceSubTypeFlag',
        :'service_sub_type_item_flag' => :'serviceSubTypeItemFlag',
        :'status_flag' => :'statusFlag',
        :'site_name_flag' => :'siteNameFlag',
        :'entered_date_flag' => :'enteredDateFlag',
        :'last_update_flag' => :'lastUpdateFlag',
        :'required_date_flag' => :'requiredDateFlag',
        :'contact_flag' => :'contactFlag',
        :'assigned_resources_flag' => :'assignedResourcesFlag',
        :'sla_info_flag' => :'slaInfoFlag',
        :'service_board_flag' => :'serviceBoardFlag',
        :'budget_hours_flag' => :'budgetHoursFlag',
        :'actual_hours_flag' => :'actualHoursFlag',
        :'approval_status_flag' => :'approvalStatusFlag',
        :'open_tasks_flag' => :'openTasksFlag',
        :'closed_tasks_flag' => :'closedTasksFlag',
        :'display_closed_tickets_option' => :'displayClosedTicketsOption',
        :'time_materials_ticket_template' => :'timeMaterialsTicketTemplate',
        :'fixed_fee_ticket_template' => :'fixedFeeTicketTemplate',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'service_type_flag' => :'BOOLEAN',
        :'service_sub_type_flag' => :'BOOLEAN',
        :'service_sub_type_item_flag' => :'BOOLEAN',
        :'status_flag' => :'BOOLEAN',
        :'site_name_flag' => :'BOOLEAN',
        :'entered_date_flag' => :'BOOLEAN',
        :'last_update_flag' => :'BOOLEAN',
        :'required_date_flag' => :'BOOLEAN',
        :'contact_flag' => :'BOOLEAN',
        :'assigned_resources_flag' => :'BOOLEAN',
        :'sla_info_flag' => :'BOOLEAN',
        :'service_board_flag' => :'BOOLEAN',
        :'budget_hours_flag' => :'BOOLEAN',
        :'actual_hours_flag' => :'BOOLEAN',
        :'approval_status_flag' => :'BOOLEAN',
        :'open_tasks_flag' => :'BOOLEAN',
        :'closed_tasks_flag' => :'BOOLEAN',
        :'display_closed_tickets_option' => :'String',
        :'time_materials_ticket_template' => :'ServiceSignoffReference',
        :'fixed_fee_ticket_template' => :'ServiceSignoffReference',
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

      if attributes.has_key?(:'serviceTypeFlag')
        self.service_type_flag = attributes[:'serviceTypeFlag']
      end

      if attributes.has_key?(:'serviceSubTypeFlag')
        self.service_sub_type_flag = attributes[:'serviceSubTypeFlag']
      end

      if attributes.has_key?(:'serviceSubTypeItemFlag')
        self.service_sub_type_item_flag = attributes[:'serviceSubTypeItemFlag']
      end

      if attributes.has_key?(:'statusFlag')
        self.status_flag = attributes[:'statusFlag']
      end

      if attributes.has_key?(:'siteNameFlag')
        self.site_name_flag = attributes[:'siteNameFlag']
      end

      if attributes.has_key?(:'enteredDateFlag')
        self.entered_date_flag = attributes[:'enteredDateFlag']
      end

      if attributes.has_key?(:'lastUpdateFlag')
        self.last_update_flag = attributes[:'lastUpdateFlag']
      end

      if attributes.has_key?(:'requiredDateFlag')
        self.required_date_flag = attributes[:'requiredDateFlag']
      end

      if attributes.has_key?(:'contactFlag')
        self.contact_flag = attributes[:'contactFlag']
      end

      if attributes.has_key?(:'assignedResourcesFlag')
        self.assigned_resources_flag = attributes[:'assignedResourcesFlag']
      end

      if attributes.has_key?(:'slaInfoFlag')
        self.sla_info_flag = attributes[:'slaInfoFlag']
      end

      if attributes.has_key?(:'serviceBoardFlag')
        self.service_board_flag = attributes[:'serviceBoardFlag']
      end

      if attributes.has_key?(:'budgetHoursFlag')
        self.budget_hours_flag = attributes[:'budgetHoursFlag']
      end

      if attributes.has_key?(:'actualHoursFlag')
        self.actual_hours_flag = attributes[:'actualHoursFlag']
      end

      if attributes.has_key?(:'approvalStatusFlag')
        self.approval_status_flag = attributes[:'approvalStatusFlag']
      end

      if attributes.has_key?(:'openTasksFlag')
        self.open_tasks_flag = attributes[:'openTasksFlag']
      end

      if attributes.has_key?(:'closedTasksFlag')
        self.closed_tasks_flag = attributes[:'closedTasksFlag']
      end

      if attributes.has_key?(:'displayClosedTicketsOption')
        self.display_closed_tickets_option = attributes[:'displayClosedTicketsOption']
      end

      if attributes.has_key?(:'timeMaterialsTicketTemplate')
        self.time_materials_ticket_template = attributes[:'timeMaterialsTicketTemplate']
      end

      if attributes.has_key?(:'fixedFeeTicketTemplate')
        self.fixed_fee_ticket_template = attributes[:'fixedFeeTicketTemplate']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @display_closed_tickets_option.nil?
        invalid_properties.push("invalid value for 'display_closed_tickets_option', display_closed_tickets_option cannot be nil.")
      end

      if @time_materials_ticket_template.nil?
        invalid_properties.push("invalid value for 'time_materials_ticket_template', time_materials_ticket_template cannot be nil.")
      end

      if @fixed_fee_ticket_template.nil?
        invalid_properties.push("invalid value for 'fixed_fee_ticket_template', fixed_fee_ticket_template cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @display_closed_tickets_option.nil?
      display_closed_tickets_option_validator = EnumAttributeValidator.new('String', ["DoNotDisplay", "Closed30Days", "Closed60Days", "Closed90Days", "Closed120Days", "AllClosed"])
      return false unless display_closed_tickets_option_validator.valid?(@display_closed_tickets_option)
      return false if @time_materials_ticket_template.nil?
      return false if @fixed_fee_ticket_template.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_closed_tickets_option Object to be assigned
    def display_closed_tickets_option=(display_closed_tickets_option)
      validator = EnumAttributeValidator.new('String', ["DoNotDisplay", "Closed30Days", "Closed60Days", "Closed90Days", "Closed120Days", "AllClosed"])
      unless validator.valid?(display_closed_tickets_option)
        fail ArgumentError, "invalid value for 'display_closed_tickets_option', must be one of #{validator.allowable_values}."
      end
      @display_closed_tickets_option = display_closed_tickets_option
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          service_type_flag == o.service_type_flag &&
          service_sub_type_flag == o.service_sub_type_flag &&
          service_sub_type_item_flag == o.service_sub_type_item_flag &&
          status_flag == o.status_flag &&
          site_name_flag == o.site_name_flag &&
          entered_date_flag == o.entered_date_flag &&
          last_update_flag == o.last_update_flag &&
          required_date_flag == o.required_date_flag &&
          contact_flag == o.contact_flag &&
          assigned_resources_flag == o.assigned_resources_flag &&
          sla_info_flag == o.sla_info_flag &&
          service_board_flag == o.service_board_flag &&
          budget_hours_flag == o.budget_hours_flag &&
          actual_hours_flag == o.actual_hours_flag &&
          approval_status_flag == o.approval_status_flag &&
          open_tasks_flag == o.open_tasks_flag &&
          closed_tasks_flag == o.closed_tasks_flag &&
          display_closed_tickets_option == o.display_closed_tickets_option &&
          time_materials_ticket_template == o.time_materials_ticket_template &&
          fixed_fee_ticket_template == o.fixed_fee_ticket_template &&
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
      [id, service_type_flag, service_sub_type_flag, service_sub_type_item_flag, status_flag, site_name_flag, entered_date_flag, last_update_flag, required_date_flag, contact_flag, assigned_resources_flag, sla_info_flag, service_board_flag, budget_hours_flag, actual_hours_flag, approval_status_flag, open_tasks_flag, closed_tasks_flag, display_closed_tickets_option, time_materials_ticket_template, fixed_fee_ticket_template, _info].hash
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
