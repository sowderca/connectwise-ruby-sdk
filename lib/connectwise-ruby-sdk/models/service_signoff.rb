
require 'date'

module ConnectWise

  class ServiceSignoff
    attr_accessor :id

    attr_accessor :name

    attr_accessor :default_flag

    attr_accessor :visible_logo_flag

    attr_accessor :company_info_flag

    attr_accessor :billing_terms_flag

    attr_accessor :summary_flag

    attr_accessor :discussion_flag

    # On add/post, if this is set to true but no value is set for task, task is defaulted to ServiceTasks.All
    attr_accessor :task_flag

    # On add/post, if this is set but no value is set for taskFlag, taskFlag is set to true
    attr_accessor :task

    attr_accessor :configurations_flag

    attr_accessor :internal_notes_flag

    attr_accessor :resolution_flag

    # On add/post, if any time related flag is set to true, this is also set to true
    attr_accessor :time_flag

    attr_accessor :time_member_flag

    attr_accessor :time_date_flag

    attr_accessor :time_start_end_flag

    attr_accessor :time_bill_flag

    attr_accessor :time_hours_flag

    attr_accessor :time_rate_flag

    attr_accessor :time_extended_amount_flag

    attr_accessor :time_work_type_flag

    attr_accessor :time_agreement_flag

    attr_accessor :time_notes_flag

    attr_accessor :time_manual_flag

    attr_accessor :time_manual_entry

    attr_accessor :time_tax_flag

    # On add/post, if any expense related flag is set to true, this is also set to true
    attr_accessor :expense_flag

    attr_accessor :expense_date_flag

    attr_accessor :expense_member_flag

    attr_accessor :expense_type_flag

    attr_accessor :expense_bill_flag

    attr_accessor :expense_amount_flag

    attr_accessor :expense_agreement_flag

    attr_accessor :expense_notes_flag

    attr_accessor :expense_tax_flag

    attr_accessor :expense_manual_flag

    attr_accessor :expense_manual_entry

    # On add/post, if any product related flag is set to true, this is also set to true
    attr_accessor :product_flag

    attr_accessor :product_description_flag

    attr_accessor :product_bill_flag

    attr_accessor :product_quantity_flag

    attr_accessor :product_price_flag

    attr_accessor :product_extended_amount_flag

    attr_accessor :product_agreement_flag

    attr_accessor :product_manual_flag

    attr_accessor :product_manual_entry

    attr_accessor :product_tax_flag

    attr_accessor :technician_signoff_flag

    # On add/post, if customerSignoffText.Length > 0, this is set to true
    attr_accessor :customer_signoff_text_flag

    attr_accessor :customer_signoff_text

    attr_accessor :customer_signoff_fields_flag

    # On add/post, if billingMethodsText.Length > 0, this is set to true
    attr_accessor :billing_methods_text_flag

    attr_accessor :billing_methods_text

    attr_accessor :credit_card_fields_flag

    attr_accessor :default_ff_flag

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
        :'default_flag' => :'defaultFlag',
        :'visible_logo_flag' => :'visibleLogoFlag',
        :'company_info_flag' => :'companyInfoFlag',
        :'billing_terms_flag' => :'billingTermsFlag',
        :'summary_flag' => :'summaryFlag',
        :'discussion_flag' => :'discussionFlag',
        :'task_flag' => :'taskFlag',
        :'task' => :'task',
        :'configurations_flag' => :'configurationsFlag',
        :'internal_notes_flag' => :'internalNotesFlag',
        :'resolution_flag' => :'resolutionFlag',
        :'time_flag' => :'timeFlag',
        :'time_member_flag' => :'timeMemberFlag',
        :'time_date_flag' => :'timeDateFlag',
        :'time_start_end_flag' => :'timeStartEndFlag',
        :'time_bill_flag' => :'timeBillFlag',
        :'time_hours_flag' => :'timeHoursFlag',
        :'time_rate_flag' => :'timeRateFlag',
        :'time_extended_amount_flag' => :'timeExtendedAmountFlag',
        :'time_work_type_flag' => :'timeWorkTypeFlag',
        :'time_agreement_flag' => :'timeAgreementFlag',
        :'time_notes_flag' => :'timeNotesFlag',
        :'time_manual_flag' => :'timeManualFlag',
        :'time_manual_entry' => :'timeManualEntry',
        :'time_tax_flag' => :'timeTaxFlag',
        :'expense_flag' => :'expenseFlag',
        :'expense_date_flag' => :'expenseDateFlag',
        :'expense_member_flag' => :'expenseMemberFlag',
        :'expense_type_flag' => :'expenseTypeFlag',
        :'expense_bill_flag' => :'expenseBillFlag',
        :'expense_amount_flag' => :'expenseAmountFlag',
        :'expense_agreement_flag' => :'expenseAgreementFlag',
        :'expense_notes_flag' => :'expenseNotesFlag',
        :'expense_tax_flag' => :'expenseTaxFlag',
        :'expense_manual_flag' => :'expenseManualFlag',
        :'expense_manual_entry' => :'expenseManualEntry',
        :'product_flag' => :'productFlag',
        :'product_description_flag' => :'productDescriptionFlag',
        :'product_bill_flag' => :'productBillFlag',
        :'product_quantity_flag' => :'productQuantityFlag',
        :'product_price_flag' => :'productPriceFlag',
        :'product_extended_amount_flag' => :'productExtendedAmountFlag',
        :'product_agreement_flag' => :'productAgreementFlag',
        :'product_manual_flag' => :'productManualFlag',
        :'product_manual_entry' => :'productManualEntry',
        :'product_tax_flag' => :'productTaxFlag',
        :'technician_signoff_flag' => :'technicianSignoffFlag',
        :'customer_signoff_text_flag' => :'customerSignoffTextFlag',
        :'customer_signoff_text' => :'customerSignoffText',
        :'customer_signoff_fields_flag' => :'customerSignoffFieldsFlag',
        :'billing_methods_text_flag' => :'billingMethodsTextFlag',
        :'billing_methods_text' => :'billingMethodsText',
        :'credit_card_fields_flag' => :'creditCardFieldsFlag',
        :'default_ff_flag' => :'defaultFFFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'default_flag' => :'BOOLEAN',
        :'visible_logo_flag' => :'BOOLEAN',
        :'company_info_flag' => :'BOOLEAN',
        :'billing_terms_flag' => :'BOOLEAN',
        :'summary_flag' => :'BOOLEAN',
        :'discussion_flag' => :'BOOLEAN',
        :'task_flag' => :'BOOLEAN',
        :'task' => :'String',
        :'configurations_flag' => :'BOOLEAN',
        :'internal_notes_flag' => :'BOOLEAN',
        :'resolution_flag' => :'BOOLEAN',
        :'time_flag' => :'BOOLEAN',
        :'time_member_flag' => :'BOOLEAN',
        :'time_date_flag' => :'BOOLEAN',
        :'time_start_end_flag' => :'BOOLEAN',
        :'time_bill_flag' => :'BOOLEAN',
        :'time_hours_flag' => :'BOOLEAN',
        :'time_rate_flag' => :'BOOLEAN',
        :'time_extended_amount_flag' => :'BOOLEAN',
        :'time_work_type_flag' => :'BOOLEAN',
        :'time_agreement_flag' => :'BOOLEAN',
        :'time_notes_flag' => :'BOOLEAN',
        :'time_manual_flag' => :'BOOLEAN',
        :'time_manual_entry' => :'Integer',
        :'time_tax_flag' => :'BOOLEAN',
        :'expense_flag' => :'BOOLEAN',
        :'expense_date_flag' => :'BOOLEAN',
        :'expense_member_flag' => :'BOOLEAN',
        :'expense_type_flag' => :'BOOLEAN',
        :'expense_bill_flag' => :'BOOLEAN',
        :'expense_amount_flag' => :'BOOLEAN',
        :'expense_agreement_flag' => :'BOOLEAN',
        :'expense_notes_flag' => :'BOOLEAN',
        :'expense_tax_flag' => :'BOOLEAN',
        :'expense_manual_flag' => :'BOOLEAN',
        :'expense_manual_entry' => :'Integer',
        :'product_flag' => :'BOOLEAN',
        :'product_description_flag' => :'BOOLEAN',
        :'product_bill_flag' => :'BOOLEAN',
        :'product_quantity_flag' => :'BOOLEAN',
        :'product_price_flag' => :'BOOLEAN',
        :'product_extended_amount_flag' => :'BOOLEAN',
        :'product_agreement_flag' => :'BOOLEAN',
        :'product_manual_flag' => :'BOOLEAN',
        :'product_manual_entry' => :'Integer',
        :'product_tax_flag' => :'BOOLEAN',
        :'technician_signoff_flag' => :'BOOLEAN',
        :'customer_signoff_text_flag' => :'BOOLEAN',
        :'customer_signoff_text' => :'String',
        :'customer_signoff_fields_flag' => :'BOOLEAN',
        :'billing_methods_text_flag' => :'BOOLEAN',
        :'billing_methods_text' => :'String',
        :'credit_card_fields_flag' => :'BOOLEAN',
        :'default_ff_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'defaultFlag')
        self.default_flag = attributes[:'defaultFlag']
      end

      if attributes.has_key?(:'visibleLogoFlag')
        self.visible_logo_flag = attributes[:'visibleLogoFlag']
      end

      if attributes.has_key?(:'companyInfoFlag')
        self.company_info_flag = attributes[:'companyInfoFlag']
      end

      if attributes.has_key?(:'billingTermsFlag')
        self.billing_terms_flag = attributes[:'billingTermsFlag']
      end

      if attributes.has_key?(:'summaryFlag')
        self.summary_flag = attributes[:'summaryFlag']
      end

      if attributes.has_key?(:'discussionFlag')
        self.discussion_flag = attributes[:'discussionFlag']
      end

      if attributes.has_key?(:'taskFlag')
        self.task_flag = attributes[:'taskFlag']
      end

      if attributes.has_key?(:'task')
        self.task = attributes[:'task']
      end

      if attributes.has_key?(:'configurationsFlag')
        self.configurations_flag = attributes[:'configurationsFlag']
      end

      if attributes.has_key?(:'internalNotesFlag')
        self.internal_notes_flag = attributes[:'internalNotesFlag']
      end

      if attributes.has_key?(:'resolutionFlag')
        self.resolution_flag = attributes[:'resolutionFlag']
      end

      if attributes.has_key?(:'timeFlag')
        self.time_flag = attributes[:'timeFlag']
      end

      if attributes.has_key?(:'timeMemberFlag')
        self.time_member_flag = attributes[:'timeMemberFlag']
      end

      if attributes.has_key?(:'timeDateFlag')
        self.time_date_flag = attributes[:'timeDateFlag']
      end

      if attributes.has_key?(:'timeStartEndFlag')
        self.time_start_end_flag = attributes[:'timeStartEndFlag']
      end

      if attributes.has_key?(:'timeBillFlag')
        self.time_bill_flag = attributes[:'timeBillFlag']
      end

      if attributes.has_key?(:'timeHoursFlag')
        self.time_hours_flag = attributes[:'timeHoursFlag']
      end

      if attributes.has_key?(:'timeRateFlag')
        self.time_rate_flag = attributes[:'timeRateFlag']
      end

      if attributes.has_key?(:'timeExtendedAmountFlag')
        self.time_extended_amount_flag = attributes[:'timeExtendedAmountFlag']
      end

      if attributes.has_key?(:'timeWorkTypeFlag')
        self.time_work_type_flag = attributes[:'timeWorkTypeFlag']
      end

      if attributes.has_key?(:'timeAgreementFlag')
        self.time_agreement_flag = attributes[:'timeAgreementFlag']
      end

      if attributes.has_key?(:'timeNotesFlag')
        self.time_notes_flag = attributes[:'timeNotesFlag']
      end

      if attributes.has_key?(:'timeManualFlag')
        self.time_manual_flag = attributes[:'timeManualFlag']
      end

      if attributes.has_key?(:'timeManualEntry')
        self.time_manual_entry = attributes[:'timeManualEntry']
      end

      if attributes.has_key?(:'timeTaxFlag')
        self.time_tax_flag = attributes[:'timeTaxFlag']
      end

      if attributes.has_key?(:'expenseFlag')
        self.expense_flag = attributes[:'expenseFlag']
      end

      if attributes.has_key?(:'expenseDateFlag')
        self.expense_date_flag = attributes[:'expenseDateFlag']
      end

      if attributes.has_key?(:'expenseMemberFlag')
        self.expense_member_flag = attributes[:'expenseMemberFlag']
      end

      if attributes.has_key?(:'expenseTypeFlag')
        self.expense_type_flag = attributes[:'expenseTypeFlag']
      end

      if attributes.has_key?(:'expenseBillFlag')
        self.expense_bill_flag = attributes[:'expenseBillFlag']
      end

      if attributes.has_key?(:'expenseAmountFlag')
        self.expense_amount_flag = attributes[:'expenseAmountFlag']
      end

      if attributes.has_key?(:'expenseAgreementFlag')
        self.expense_agreement_flag = attributes[:'expenseAgreementFlag']
      end

      if attributes.has_key?(:'expenseNotesFlag')
        self.expense_notes_flag = attributes[:'expenseNotesFlag']
      end

      if attributes.has_key?(:'expenseTaxFlag')
        self.expense_tax_flag = attributes[:'expenseTaxFlag']
      end

      if attributes.has_key?(:'expenseManualFlag')
        self.expense_manual_flag = attributes[:'expenseManualFlag']
      end

      if attributes.has_key?(:'expenseManualEntry')
        self.expense_manual_entry = attributes[:'expenseManualEntry']
      end

      if attributes.has_key?(:'productFlag')
        self.product_flag = attributes[:'productFlag']
      end

      if attributes.has_key?(:'productDescriptionFlag')
        self.product_description_flag = attributes[:'productDescriptionFlag']
      end

      if attributes.has_key?(:'productBillFlag')
        self.product_bill_flag = attributes[:'productBillFlag']
      end

      if attributes.has_key?(:'productQuantityFlag')
        self.product_quantity_flag = attributes[:'productQuantityFlag']
      end

      if attributes.has_key?(:'productPriceFlag')
        self.product_price_flag = attributes[:'productPriceFlag']
      end

      if attributes.has_key?(:'productExtendedAmountFlag')
        self.product_extended_amount_flag = attributes[:'productExtendedAmountFlag']
      end

      if attributes.has_key?(:'productAgreementFlag')
        self.product_agreement_flag = attributes[:'productAgreementFlag']
      end

      if attributes.has_key?(:'productManualFlag')
        self.product_manual_flag = attributes[:'productManualFlag']
      end

      if attributes.has_key?(:'productManualEntry')
        self.product_manual_entry = attributes[:'productManualEntry']
      end

      if attributes.has_key?(:'productTaxFlag')
        self.product_tax_flag = attributes[:'productTaxFlag']
      end

      if attributes.has_key?(:'technicianSignoffFlag')
        self.technician_signoff_flag = attributes[:'technicianSignoffFlag']
      end

      if attributes.has_key?(:'customerSignoffTextFlag')
        self.customer_signoff_text_flag = attributes[:'customerSignoffTextFlag']
      end

      if attributes.has_key?(:'customerSignoffText')
        self.customer_signoff_text = attributes[:'customerSignoffText']
      end

      if attributes.has_key?(:'customerSignoffFieldsFlag')
        self.customer_signoff_fields_flag = attributes[:'customerSignoffFieldsFlag']
      end

      if attributes.has_key?(:'billingMethodsTextFlag')
        self.billing_methods_text_flag = attributes[:'billingMethodsTextFlag']
      end

      if attributes.has_key?(:'billingMethodsText')
        self.billing_methods_text = attributes[:'billingMethodsText']
      end

      if attributes.has_key?(:'creditCardFieldsFlag')
        self.credit_card_fields_flag = attributes[:'creditCardFieldsFlag']
      end

      if attributes.has_key?(:'defaultFFFlag')
        self.default_ff_flag = attributes[:'defaultFFFlag']
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

      if !@customer_signoff_text.nil? && @customer_signoff_text.to_s.length > 4000
        invalid_properties.push("invalid value for 'customer_signoff_text', the character length must be smaller than or equal to 4000.")
      end

      if !@billing_methods_text.nil? && @billing_methods_text.to_s.length > 2000
        invalid_properties.push("invalid value for 'billing_methods_text', the character length must be smaller than or equal to 2000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      task_validator = EnumAttributeValidator.new('String', ["All", "Closed", "Open"])
      return false unless task_validator.valid?(@task)
      return false if !@customer_signoff_text.nil? && @customer_signoff_text.to_s.length > 4000
      return false if !@billing_methods_text.nil? && @billing_methods_text.to_s.length > 2000
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
    # @param [Object] task Object to be assigned
    def task=(task)
      validator = EnumAttributeValidator.new('String', ["All", "Closed", "Open"])
      unless validator.valid?(task)
        fail ArgumentError, "invalid value for 'task', must be one of #{validator.allowable_values}."
      end
      @task = task
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_signoff_text Value to be assigned
    def customer_signoff_text=(customer_signoff_text)

      if !customer_signoff_text.nil? && customer_signoff_text.to_s.length > 4000
        fail ArgumentError, "invalid value for 'customer_signoff_text', the character length must be smaller than or equal to 4000."
      end

      @customer_signoff_text = customer_signoff_text
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_methods_text Value to be assigned
    def billing_methods_text=(billing_methods_text)

      if !billing_methods_text.nil? && billing_methods_text.to_s.length > 2000
        fail ArgumentError, "invalid value for 'billing_methods_text', the character length must be smaller than or equal to 2000."
      end

      @billing_methods_text = billing_methods_text
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          default_flag == o.default_flag &&
          visible_logo_flag == o.visible_logo_flag &&
          company_info_flag == o.company_info_flag &&
          billing_terms_flag == o.billing_terms_flag &&
          summary_flag == o.summary_flag &&
          discussion_flag == o.discussion_flag &&
          task_flag == o.task_flag &&
          task == o.task &&
          configurations_flag == o.configurations_flag &&
          internal_notes_flag == o.internal_notes_flag &&
          resolution_flag == o.resolution_flag &&
          time_flag == o.time_flag &&
          time_member_flag == o.time_member_flag &&
          time_date_flag == o.time_date_flag &&
          time_start_end_flag == o.time_start_end_flag &&
          time_bill_flag == o.time_bill_flag &&
          time_hours_flag == o.time_hours_flag &&
          time_rate_flag == o.time_rate_flag &&
          time_extended_amount_flag == o.time_extended_amount_flag &&
          time_work_type_flag == o.time_work_type_flag &&
          time_agreement_flag == o.time_agreement_flag &&
          time_notes_flag == o.time_notes_flag &&
          time_manual_flag == o.time_manual_flag &&
          time_manual_entry == o.time_manual_entry &&
          time_tax_flag == o.time_tax_flag &&
          expense_flag == o.expense_flag &&
          expense_date_flag == o.expense_date_flag &&
          expense_member_flag == o.expense_member_flag &&
          expense_type_flag == o.expense_type_flag &&
          expense_bill_flag == o.expense_bill_flag &&
          expense_amount_flag == o.expense_amount_flag &&
          expense_agreement_flag == o.expense_agreement_flag &&
          expense_notes_flag == o.expense_notes_flag &&
          expense_tax_flag == o.expense_tax_flag &&
          expense_manual_flag == o.expense_manual_flag &&
          expense_manual_entry == o.expense_manual_entry &&
          product_flag == o.product_flag &&
          product_description_flag == o.product_description_flag &&
          product_bill_flag == o.product_bill_flag &&
          product_quantity_flag == o.product_quantity_flag &&
          product_price_flag == o.product_price_flag &&
          product_extended_amount_flag == o.product_extended_amount_flag &&
          product_agreement_flag == o.product_agreement_flag &&
          product_manual_flag == o.product_manual_flag &&
          product_manual_entry == o.product_manual_entry &&
          product_tax_flag == o.product_tax_flag &&
          technician_signoff_flag == o.technician_signoff_flag &&
          customer_signoff_text_flag == o.customer_signoff_text_flag &&
          customer_signoff_text == o.customer_signoff_text &&
          customer_signoff_fields_flag == o.customer_signoff_fields_flag &&
          billing_methods_text_flag == o.billing_methods_text_flag &&
          billing_methods_text == o.billing_methods_text &&
          credit_card_fields_flag == o.credit_card_fields_flag &&
          default_ff_flag == o.default_ff_flag &&
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
      [id, name, default_flag, visible_logo_flag, company_info_flag, billing_terms_flag, summary_flag, discussion_flag, task_flag, task, configurations_flag, internal_notes_flag, resolution_flag, time_flag, time_member_flag, time_date_flag, time_start_end_flag, time_bill_flag, time_hours_flag, time_rate_flag, time_extended_amount_flag, time_work_type_flag, time_agreement_flag, time_notes_flag, time_manual_flag, time_manual_entry, time_tax_flag, expense_flag, expense_date_flag, expense_member_flag, expense_type_flag, expense_bill_flag, expense_amount_flag, expense_agreement_flag, expense_notes_flag, expense_tax_flag, expense_manual_flag, expense_manual_entry, product_flag, product_description_flag, product_bill_flag, product_quantity_flag, product_price_flag, product_extended_amount_flag, product_agreement_flag, product_manual_flag, product_manual_entry, product_tax_flag, technician_signoff_flag, customer_signoff_text_flag, customer_signoff_text, customer_signoff_fields_flag, billing_methods_text_flag, billing_methods_text, credit_card_fields_flag, default_ff_flag, _info].hash
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
