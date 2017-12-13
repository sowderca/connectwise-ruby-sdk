
require 'date'

module ConnectWise

  class ChargeCode
    attr_accessor :id

    attr_accessor :name

    attr_accessor :company

    attr_accessor :location

    attr_accessor :department

    attr_accessor :bill_time

    attr_accessor :expense_entry_flag

    attr_accessor :allow_all_expense_type_flag

    attr_accessor :time_entry_flag

    # on UPDATE, if timeEntryFlag is set to true, workType will be required.
    attr_accessor :work_type

    attr_accessor :work_role

    attr_accessor :integration_xref

    attr_accessor :expense_type_ids

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
        :'name' => :'name',
        :'company' => :'company',
        :'location' => :'location',
        :'department' => :'department',
        :'bill_time' => :'billTime',
        :'expense_entry_flag' => :'expenseEntryFlag',
        :'allow_all_expense_type_flag' => :'allowAllExpenseTypeFlag',
        :'time_entry_flag' => :'timeEntryFlag',
        :'work_type' => :'workType',
        :'work_role' => :'workRole',
        :'integration_xref' => :'integrationXref',
        :'expense_type_ids' => :'expenseTypeIds',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'company' => :'CompanyReference',
        :'location' => :'SystemLocationReference',
        :'department' => :'SystemDepartmentReference',
        :'bill_time' => :'String',
        :'expense_entry_flag' => :'BOOLEAN',
        :'allow_all_expense_type_flag' => :'BOOLEAN',
        :'time_entry_flag' => :'BOOLEAN',
        :'work_type' => :'WorkTypeReference',
        :'work_role' => :'WorkRoleReference',
        :'integration_xref' => :'String',
        :'expense_type_ids' => :'Array<Integer>',
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'billTime')
        self.bill_time = attributes[:'billTime']
      end

      if attributes.has_key?(:'expenseEntryFlag')
        self.expense_entry_flag = attributes[:'expenseEntryFlag']
      end

      if attributes.has_key?(:'allowAllExpenseTypeFlag')
        self.allow_all_expense_type_flag = attributes[:'allowAllExpenseTypeFlag']
      end

      if attributes.has_key?(:'timeEntryFlag')
        self.time_entry_flag = attributes[:'timeEntryFlag']
      end

      if attributes.has_key?(:'workType')
        self.work_type = attributes[:'workType']
      end

      if attributes.has_key?(:'workRole')
        self.work_role = attributes[:'workRole']
      end

      if attributes.has_key?(:'integrationXref')
        self.integration_xref = attributes[:'integrationXref']
      end

      if attributes.has_key?(:'expenseTypeIds')
        if (value = attributes[:'expenseTypeIds']).is_a?(Array)
          self.expense_type_ids = value
        end
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if !@integration_xref.nil? && @integration_xref.to_s.length > 50
        invalid_properties.push("invalid value for 'integration_xref', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if @company.nil?
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_time_validator.valid?(@bill_time)
      return false if !@integration_xref.nil? && @integration_xref.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 50
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 50."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_time Object to be assigned
    def bill_time=(bill_time)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_time)
        fail ArgumentError, "invalid value for 'bill_time', must be one of #{validator.allowable_values}."
      end
      @bill_time = bill_time
    end

    # Custom attribute writer method with validation
    # @param [Object] integration_xref Value to be assigned
    def integration_xref=(integration_xref)

      if !integration_xref.nil? && integration_xref.to_s.length > 50
        fail ArgumentError, "invalid value for 'integration_xref', the character length must be smaller than or equal to 50."
      end

      @integration_xref = integration_xref
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          company == o.company &&
          location == o.location &&
          department == o.department &&
          bill_time == o.bill_time &&
          expense_entry_flag == o.expense_entry_flag &&
          allow_all_expense_type_flag == o.allow_all_expense_type_flag &&
          time_entry_flag == o.time_entry_flag &&
          work_type == o.work_type &&
          work_role == o.work_role &&
          integration_xref == o.integration_xref &&
          expense_type_ids == o.expense_type_ids &&
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
      [id, name, company, location, department, bill_time, expense_entry_flag, allow_all_expense_type_flag, time_entry_flag, work_type, work_role, integration_xref, expense_type_ids, _info].hash
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
