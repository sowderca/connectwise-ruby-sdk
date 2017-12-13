
require 'date'

module ConnectWise

  class ProjectPhase
    attr_accessor :id

    attr_accessor :project_id

    attr_accessor :description

    attr_accessor :board

    attr_accessor :status

    attr_accessor :agreement

    attr_accessor :opportunity

    attr_accessor :parent_phase

    attr_accessor :wbs_code

    attr_accessor :bill_time

    attr_accessor :bill_expenses

    attr_accessor :bill_products

    attr_accessor :mark_as_milestone_flag

    attr_accessor :notes

    attr_accessor :deadline_date

    attr_accessor :bill_separately_flag

    # billingMethod is required if the phase billSeparatelyFlag is true
    attr_accessor :billing_method

    attr_accessor :scheduled_hours

    attr_accessor :scheduled_start

    attr_accessor :scheduled_end

    attr_accessor :actual_hours

    attr_accessor :actual_start

    attr_accessor :actual_end

    attr_accessor :budget_hours

    attr_accessor :location_id

    attr_accessor :business_unit_id

    attr_accessor :hourly_rate

    attr_accessor :billing_start_date

    # This phase can only be billed after it has been closed
    attr_accessor :bill_phase_closed_flag

    # This phase can only be billed after the project has been closed
    attr_accessor :bill_project_closed_flag

    attr_accessor :downpayment

    attr_accessor :po_number

    attr_accessor :po_amount

    attr_accessor :estimated_time_cost

    attr_accessor :estimated_expense_cost

    attr_accessor :estimated_product_cost

    attr_accessor :estimated_time_revenue

    attr_accessor :estimated_expense_revenue

    attr_accessor :estimated_product_revenue

    attr_accessor :currency

    attr_accessor :bill_to_company

    attr_accessor :bill_to_contact

    attr_accessor :bill_to_site

    attr_accessor :ship_to_company

    attr_accessor :ship_to_contact

    attr_accessor :ship_to_site

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
        :'project_id' => :'projectId',
        :'description' => :'description',
        :'board' => :'board',
        :'status' => :'status',
        :'agreement' => :'agreement',
        :'opportunity' => :'opportunity',
        :'parent_phase' => :'parentPhase',
        :'wbs_code' => :'wbsCode',
        :'bill_time' => :'billTime',
        :'bill_expenses' => :'billExpenses',
        :'bill_products' => :'billProducts',
        :'mark_as_milestone_flag' => :'markAsMilestoneFlag',
        :'notes' => :'notes',
        :'deadline_date' => :'deadlineDate',
        :'bill_separately_flag' => :'billSeparatelyFlag',
        :'billing_method' => :'billingMethod',
        :'scheduled_hours' => :'scheduledHours',
        :'scheduled_start' => :'scheduledStart',
        :'scheduled_end' => :'scheduledEnd',
        :'actual_hours' => :'actualHours',
        :'actual_start' => :'actualStart',
        :'actual_end' => :'actualEnd',
        :'budget_hours' => :'budgetHours',
        :'location_id' => :'locationId',
        :'business_unit_id' => :'businessUnitId',
        :'hourly_rate' => :'hourlyRate',
        :'billing_start_date' => :'billingStartDate',
        :'bill_phase_closed_flag' => :'billPhaseClosedFlag',
        :'bill_project_closed_flag' => :'billProjectClosedFlag',
        :'downpayment' => :'downpayment',
        :'po_number' => :'poNumber',
        :'po_amount' => :'poAmount',
        :'estimated_time_cost' => :'estimatedTimeCost',
        :'estimated_expense_cost' => :'estimatedExpenseCost',
        :'estimated_product_cost' => :'estimatedProductCost',
        :'estimated_time_revenue' => :'estimatedTimeRevenue',
        :'estimated_expense_revenue' => :'estimatedExpenseRevenue',
        :'estimated_product_revenue' => :'estimatedProductRevenue',
        :'currency' => :'currency',
        :'bill_to_company' => :'billToCompany',
        :'bill_to_contact' => :'billToContact',
        :'bill_to_site' => :'billToSite',
        :'ship_to_company' => :'shipToCompany',
        :'ship_to_contact' => :'shipToContact',
        :'ship_to_site' => :'shipToSite',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'project_id' => :'Integer',
        :'description' => :'String',
        :'board' => :'ProjectBoardReference',
        :'status' => :'PhaseStatusReference',
        :'agreement' => :'AgreementReference',
        :'opportunity' => :'OpportunityReference',
        :'parent_phase' => :'ProjectPhaseReference',
        :'wbs_code' => :'String',
        :'bill_time' => :'String',
        :'bill_expenses' => :'String',
        :'bill_products' => :'String',
        :'mark_as_milestone_flag' => :'BOOLEAN',
        :'notes' => :'String',
        :'deadline_date' => :'DateTime',
        :'bill_separately_flag' => :'BOOLEAN',
        :'billing_method' => :'String',
        :'scheduled_hours' => :'Float',
        :'scheduled_start' => :'String',
        :'scheduled_end' => :'String',
        :'actual_hours' => :'Float',
        :'actual_start' => :'String',
        :'actual_end' => :'String',
        :'budget_hours' => :'Float',
        :'location_id' => :'Integer',
        :'business_unit_id' => :'Integer',
        :'hourly_rate' => :'Float',
        :'billing_start_date' => :'DateTime',
        :'bill_phase_closed_flag' => :'BOOLEAN',
        :'bill_project_closed_flag' => :'BOOLEAN',
        :'downpayment' => :'Float',
        :'po_number' => :'String',
        :'po_amount' => :'Float',
        :'estimated_time_cost' => :'Float',
        :'estimated_expense_cost' => :'Float',
        :'estimated_product_cost' => :'Float',
        :'estimated_time_revenue' => :'Float',
        :'estimated_expense_revenue' => :'Float',
        :'estimated_product_revenue' => :'Float',
        :'currency' => :'CurrencyReference',
        :'bill_to_company' => :'CompanyReference',
        :'bill_to_contact' => :'ContactReference',
        :'bill_to_site' => :'SiteReference',
        :'ship_to_company' => :'CompanyReference',
        :'ship_to_contact' => :'ContactReference',
        :'ship_to_site' => :'SiteReference',
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

      if attributes.has_key?(:'projectId')
        self.project_id = attributes[:'projectId']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'opportunity')
        self.opportunity = attributes[:'opportunity']
      end

      if attributes.has_key?(:'parentPhase')
        self.parent_phase = attributes[:'parentPhase']
      end

      if attributes.has_key?(:'wbsCode')
        self.wbs_code = attributes[:'wbsCode']
      end

      if attributes.has_key?(:'billTime')
        self.bill_time = attributes[:'billTime']
      end

      if attributes.has_key?(:'billExpenses')
        self.bill_expenses = attributes[:'billExpenses']
      end

      if attributes.has_key?(:'billProducts')
        self.bill_products = attributes[:'billProducts']
      end

      if attributes.has_key?(:'markAsMilestoneFlag')
        self.mark_as_milestone_flag = attributes[:'markAsMilestoneFlag']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'deadlineDate')
        self.deadline_date = attributes[:'deadlineDate']
      end

      if attributes.has_key?(:'billSeparatelyFlag')
        self.bill_separately_flag = attributes[:'billSeparatelyFlag']
      end

      if attributes.has_key?(:'billingMethod')
        self.billing_method = attributes[:'billingMethod']
      end

      if attributes.has_key?(:'scheduledHours')
        self.scheduled_hours = attributes[:'scheduledHours']
      end

      if attributes.has_key?(:'scheduledStart')
        self.scheduled_start = attributes[:'scheduledStart']
      end

      if attributes.has_key?(:'scheduledEnd')
        self.scheduled_end = attributes[:'scheduledEnd']
      end

      if attributes.has_key?(:'actualHours')
        self.actual_hours = attributes[:'actualHours']
      end

      if attributes.has_key?(:'actualStart')
        self.actual_start = attributes[:'actualStart']
      end

      if attributes.has_key?(:'actualEnd')
        self.actual_end = attributes[:'actualEnd']
      end

      if attributes.has_key?(:'budgetHours')
        self.budget_hours = attributes[:'budgetHours']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'hourlyRate')
        self.hourly_rate = attributes[:'hourlyRate']
      end

      if attributes.has_key?(:'billingStartDate')
        self.billing_start_date = attributes[:'billingStartDate']
      end

      if attributes.has_key?(:'billPhaseClosedFlag')
        self.bill_phase_closed_flag = attributes[:'billPhaseClosedFlag']
      end

      if attributes.has_key?(:'billProjectClosedFlag')
        self.bill_project_closed_flag = attributes[:'billProjectClosedFlag']
      end

      if attributes.has_key?(:'downpayment')
        self.downpayment = attributes[:'downpayment']
      end

      if attributes.has_key?(:'poNumber')
        self.po_number = attributes[:'poNumber']
      end

      if attributes.has_key?(:'poAmount')
        self.po_amount = attributes[:'poAmount']
      end

      if attributes.has_key?(:'estimatedTimeCost')
        self.estimated_time_cost = attributes[:'estimatedTimeCost']
      end

      if attributes.has_key?(:'estimatedExpenseCost')
        self.estimated_expense_cost = attributes[:'estimatedExpenseCost']
      end

      if attributes.has_key?(:'estimatedProductCost')
        self.estimated_product_cost = attributes[:'estimatedProductCost']
      end

      if attributes.has_key?(:'estimatedTimeRevenue')
        self.estimated_time_revenue = attributes[:'estimatedTimeRevenue']
      end

      if attributes.has_key?(:'estimatedExpenseRevenue')
        self.estimated_expense_revenue = attributes[:'estimatedExpenseRevenue']
      end

      if attributes.has_key?(:'estimatedProductRevenue')
        self.estimated_product_revenue = attributes[:'estimatedProductRevenue']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'billToCompany')
        self.bill_to_company = attributes[:'billToCompany']
      end

      if attributes.has_key?(:'billToContact')
        self.bill_to_contact = attributes[:'billToContact']
      end

      if attributes.has_key?(:'billToSite')
        self.bill_to_site = attributes[:'billToSite']
      end

      if attributes.has_key?(:'shipToCompany')
        self.ship_to_company = attributes[:'shipToCompany']
      end

      if attributes.has_key?(:'shipToContact')
        self.ship_to_contact = attributes[:'shipToContact']
      end

      if attributes.has_key?(:'shipToSite')
        self.ship_to_site = attributes[:'shipToSite']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @description.to_s.length > 100
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 100.")
      end

      if !@wbs_code.nil? && @wbs_code.to_s.length > 50
        invalid_properties.push("invalid value for 'wbs_code', the character length must be smaller than or equal to 50.")
      end

      if !@po_number.nil? && @po_number.to_s.length > 25
        invalid_properties.push("invalid value for 'po_number', the character length must be smaller than or equal to 25.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @description.nil?
      return false if @description.to_s.length > 100
      return false if !@wbs_code.nil? && @wbs_code.to_s.length > 50
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_time_validator.valid?(@bill_time)
      bill_expenses_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_expenses_validator.valid?(@bill_expenses)
      bill_products_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_products_validator.valid?(@bill_products)
      billing_method_validator = EnumAttributeValidator.new('String', ["ActualRates", "FixedFee", "NotToExceed", "OverrideRate"])
      return false unless billing_method_validator.valid?(@billing_method)
      return false if !@po_number.nil? && @po_number.to_s.length > 25
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, "description cannot be nil"
      end

      if description.to_s.length > 100
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 100."
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] wbs_code Value to be assigned
    def wbs_code=(wbs_code)

      if !wbs_code.nil? && wbs_code.to_s.length > 50
        fail ArgumentError, "invalid value for 'wbs_code', the character length must be smaller than or equal to 50."
      end

      @wbs_code = wbs_code
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_expenses Object to be assigned
    def bill_expenses=(bill_expenses)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_expenses)
        fail ArgumentError, "invalid value for 'bill_expenses', must be one of #{validator.allowable_values}."
      end
      @bill_expenses = bill_expenses
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_products Object to be assigned
    def bill_products=(bill_products)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_products)
        fail ArgumentError, "invalid value for 'bill_products', must be one of #{validator.allowable_values}."
      end
      @bill_products = bill_products
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_method Object to be assigned
    def billing_method=(billing_method)
      validator = EnumAttributeValidator.new('String', ["ActualRates", "FixedFee", "NotToExceed", "OverrideRate"])
      unless validator.valid?(billing_method)
        fail ArgumentError, "invalid value for 'billing_method', must be one of #{validator.allowable_values}."
      end
      @billing_method = billing_method
    end

    # Custom attribute writer method with validation
    # @param [Object] po_number Value to be assigned
    def po_number=(po_number)

      if !po_number.nil? && po_number.to_s.length > 25
        fail ArgumentError, "invalid value for 'po_number', the character length must be smaller than or equal to 25."
      end

      @po_number = po_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          project_id == o.project_id &&
          description == o.description &&
          board == o.board &&
          status == o.status &&
          agreement == o.agreement &&
          opportunity == o.opportunity &&
          parent_phase == o.parent_phase &&
          wbs_code == o.wbs_code &&
          bill_time == o.bill_time &&
          bill_expenses == o.bill_expenses &&
          bill_products == o.bill_products &&
          mark_as_milestone_flag == o.mark_as_milestone_flag &&
          notes == o.notes &&
          deadline_date == o.deadline_date &&
          bill_separately_flag == o.bill_separately_flag &&
          billing_method == o.billing_method &&
          scheduled_hours == o.scheduled_hours &&
          scheduled_start == o.scheduled_start &&
          scheduled_end == o.scheduled_end &&
          actual_hours == o.actual_hours &&
          actual_start == o.actual_start &&
          actual_end == o.actual_end &&
          budget_hours == o.budget_hours &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          hourly_rate == o.hourly_rate &&
          billing_start_date == o.billing_start_date &&
          bill_phase_closed_flag == o.bill_phase_closed_flag &&
          bill_project_closed_flag == o.bill_project_closed_flag &&
          downpayment == o.downpayment &&
          po_number == o.po_number &&
          po_amount == o.po_amount &&
          estimated_time_cost == o.estimated_time_cost &&
          estimated_expense_cost == o.estimated_expense_cost &&
          estimated_product_cost == o.estimated_product_cost &&
          estimated_time_revenue == o.estimated_time_revenue &&
          estimated_expense_revenue == o.estimated_expense_revenue &&
          estimated_product_revenue == o.estimated_product_revenue &&
          currency == o.currency &&
          bill_to_company == o.bill_to_company &&
          bill_to_contact == o.bill_to_contact &&
          bill_to_site == o.bill_to_site &&
          ship_to_company == o.ship_to_company &&
          ship_to_contact == o.ship_to_contact &&
          ship_to_site == o.ship_to_site &&
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
      [id, project_id, description, board, status, agreement, opportunity, parent_phase, wbs_code, bill_time, bill_expenses, bill_products, mark_as_milestone_flag, notes, deadline_date, bill_separately_flag, billing_method, scheduled_hours, scheduled_start, scheduled_end, actual_hours, actual_start, actual_end, budget_hours, location_id, business_unit_id, hourly_rate, billing_start_date, bill_phase_closed_flag, bill_project_closed_flag, downpayment, po_number, po_amount, estimated_time_cost, estimated_expense_cost, estimated_product_cost, estimated_time_revenue, estimated_expense_revenue, estimated_product_revenue, currency, bill_to_company, bill_to_contact, bill_to_site, ship_to_company, ship_to_contact, ship_to_site, _info].hash
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
