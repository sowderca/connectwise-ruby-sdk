
require 'date'

module ConnectWise
  # The Service (Ticket) Templates on which the Member is the assignedTo resource
  class ServiceTemplate
    attr_accessor :id

    attr_accessor :name

    attr_accessor :board

    attr_accessor :type

    attr_accessor :item

    attr_accessor :subtype

    attr_accessor :service_location

    attr_accessor :status

    attr_accessor :source

    attr_accessor :priority

    attr_accessor :team

    attr_accessor :company

    attr_accessor :contact

    attr_accessor :site

    attr_accessor :assigned_notify_flag

    attr_accessor :location

    attr_accessor :department

    attr_accessor :summary

    attr_accessor :problem

    attr_accessor :hours_budget

    attr_accessor :internal_analysis

    attr_accessor :time_billable_flag

    attr_accessor :expense_billable_flag

    attr_accessor :purchase_order_number

    attr_accessor :reference

    attr_accessor :bill_complete_flag

    attr_accessor :bill_service_separately_flag

    attr_accessor :billing_amount

    attr_accessor :bill_unapproved_time_and_expenses_flag

    attr_accessor :override_flag

    attr_accessor :time_invoice_flag

    attr_accessor :expense_invoice_flag

    attr_accessor :product_invoice_flag

    attr_accessor :agreement

    attr_accessor :billing_method

    attr_accessor :severity

    attr_accessor :impact

    attr_accessor :assigned_by

    attr_accessor :schedule_days_before

    attr_accessor :service_days_before

    attr_accessor :attach_schedule_to_new_service_flag

    attr_accessor :template_flag

    attr_accessor :email_contact_flag

    attr_accessor :email_resource_flag

    attr_accessor :email_cc_flag

    attr_accessor :email_cc

    attr_accessor :restrict_downpayment_flag

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :count

    attr_accessor :re_assign_to_member

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
        :'board' => :'board',
        :'type' => :'type',
        :'item' => :'item',
        :'subtype' => :'subtype',
        :'service_location' => :'serviceLocation',
        :'status' => :'status',
        :'source' => :'source',
        :'priority' => :'priority',
        :'team' => :'team',
        :'company' => :'company',
        :'contact' => :'contact',
        :'site' => :'site',
        :'assigned_notify_flag' => :'assignedNotifyFlag',
        :'location' => :'location',
        :'department' => :'department',
        :'summary' => :'summary',
        :'problem' => :'problem',
        :'hours_budget' => :'hoursBudget',
        :'internal_analysis' => :'internalAnalysis',
        :'time_billable_flag' => :'timeBillableFlag',
        :'expense_billable_flag' => :'expenseBillableFlag',
        :'purchase_order_number' => :'purchaseOrderNumber',
        :'reference' => :'reference',
        :'bill_complete_flag' => :'BillComplete_Flag',
        :'bill_service_separately_flag' => :'billServiceSeparatelyFlag',
        :'billing_amount' => :'billingAmount',
        :'bill_unapproved_time_and_expenses_flag' => :'billUnapprovedTimeAndExpensesFlag',
        :'override_flag' => :'overrideFlag',
        :'time_invoice_flag' => :'timeInvoiceFlag',
        :'expense_invoice_flag' => :'expenseInvoiceFlag',
        :'product_invoice_flag' => :'productInvoiceFlag',
        :'agreement' => :'agreement',
        :'billing_method' => :'billingMethod',
        :'severity' => :'severity',
        :'impact' => :'impact',
        :'assigned_by' => :'assignedBy',
        :'schedule_days_before' => :'scheduleDaysBefore',
        :'service_days_before' => :'serviceDaysBefore',
        :'attach_schedule_to_new_service_flag' => :'attachScheduleToNewServiceFlag',
        :'template_flag' => :'templateFlag',
        :'email_contact_flag' => :'emailContactFlag',
        :'email_resource_flag' => :'emailResourceFlag',
        :'email_cc_flag' => :'emailCCFlag',
        :'email_cc' => :'emailCC',
        :'restrict_downpayment_flag' => :'restrictDownpaymentFlag',
        :'_info' => :'_info',
        :'count' => :'count',
        :'re_assign_to_member' => :'reAssignToMember'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'board' => :'BoardReference',
        :'type' => :'ServiceTypeReference',
        :'item' => :'ServiceItemReference',
        :'subtype' => :'ServiceSubTypeReference',
        :'service_location' => :'ServiceLocationReference',
        :'status' => :'ServiceStatusReference',
        :'source' => :'ServiceSourceReference',
        :'priority' => :'PriorityReference',
        :'team' => :'ServiceTeamReference',
        :'company' => :'CompanyReference',
        :'contact' => :'ContactReference',
        :'site' => :'SiteReference',
        :'assigned_notify_flag' => :'BOOLEAN',
        :'location' => :'SystemLocationReference',
        :'department' => :'SystemDepartmentReference',
        :'summary' => :'String',
        :'problem' => :'String',
        :'hours_budget' => :'Float',
        :'internal_analysis' => :'String',
        :'time_billable_flag' => :'BOOLEAN',
        :'expense_billable_flag' => :'BOOLEAN',
        :'purchase_order_number' => :'String',
        :'reference' => :'String',
        :'bill_complete_flag' => :'BOOLEAN',
        :'bill_service_separately_flag' => :'BOOLEAN',
        :'billing_amount' => :'Float',
        :'bill_unapproved_time_and_expenses_flag' => :'BOOLEAN',
        :'override_flag' => :'BOOLEAN',
        :'time_invoice_flag' => :'BOOLEAN',
        :'expense_invoice_flag' => :'BOOLEAN',
        :'product_invoice_flag' => :'BOOLEAN',
        :'agreement' => :'AgreementReference',
        :'billing_method' => :'String',
        :'severity' => :'String',
        :'impact' => :'String',
        :'assigned_by' => :'MemberReference',
        :'schedule_days_before' => :'Integer',
        :'service_days_before' => :'Integer',
        :'attach_schedule_to_new_service_flag' => :'BOOLEAN',
        :'template_flag' => :'BOOLEAN',
        :'email_contact_flag' => :'BOOLEAN',
        :'email_resource_flag' => :'BOOLEAN',
        :'email_cc_flag' => :'BOOLEAN',
        :'email_cc' => :'String',
        :'restrict_downpayment_flag' => :'BOOLEAN',
        :'_info' => :'Metadata',
        :'count' => :'Integer',
        :'re_assign_to_member' => :'MemberReference'
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

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.has_key?(:'subtype')
        self.subtype = attributes[:'subtype']
      end

      if attributes.has_key?(:'serviceLocation')
        self.service_location = attributes[:'serviceLocation']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'assignedNotifyFlag')
        self.assigned_notify_flag = attributes[:'assignedNotifyFlag']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.has_key?(:'problem')
        self.problem = attributes[:'problem']
      end

      if attributes.has_key?(:'hoursBudget')
        self.hours_budget = attributes[:'hoursBudget']
      end

      if attributes.has_key?(:'internalAnalysis')
        self.internal_analysis = attributes[:'internalAnalysis']
      end

      if attributes.has_key?(:'timeBillableFlag')
        self.time_billable_flag = attributes[:'timeBillableFlag']
      end

      if attributes.has_key?(:'expenseBillableFlag')
        self.expense_billable_flag = attributes[:'expenseBillableFlag']
      end

      if attributes.has_key?(:'purchaseOrderNumber')
        self.purchase_order_number = attributes[:'purchaseOrderNumber']
      end

      if attributes.has_key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.has_key?(:'BillComplete_Flag')
        self.bill_complete_flag = attributes[:'BillComplete_Flag']
      end

      if attributes.has_key?(:'billServiceSeparatelyFlag')
        self.bill_service_separately_flag = attributes[:'billServiceSeparatelyFlag']
      end

      if attributes.has_key?(:'billingAmount')
        self.billing_amount = attributes[:'billingAmount']
      end

      if attributes.has_key?(:'billUnapprovedTimeAndExpensesFlag')
        self.bill_unapproved_time_and_expenses_flag = attributes[:'billUnapprovedTimeAndExpensesFlag']
      end

      if attributes.has_key?(:'overrideFlag')
        self.override_flag = attributes[:'overrideFlag']
      end

      if attributes.has_key?(:'timeInvoiceFlag')
        self.time_invoice_flag = attributes[:'timeInvoiceFlag']
      end

      if attributes.has_key?(:'expenseInvoiceFlag')
        self.expense_invoice_flag = attributes[:'expenseInvoiceFlag']
      end

      if attributes.has_key?(:'productInvoiceFlag')
        self.product_invoice_flag = attributes[:'productInvoiceFlag']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'billingMethod')
        self.billing_method = attributes[:'billingMethod']
      end

      if attributes.has_key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.has_key?(:'impact')
        self.impact = attributes[:'impact']
      end

      if attributes.has_key?(:'assignedBy')
        self.assigned_by = attributes[:'assignedBy']
      end

      if attributes.has_key?(:'scheduleDaysBefore')
        self.schedule_days_before = attributes[:'scheduleDaysBefore']
      end

      if attributes.has_key?(:'serviceDaysBefore')
        self.service_days_before = attributes[:'serviceDaysBefore']
      end

      if attributes.has_key?(:'attachScheduleToNewServiceFlag')
        self.attach_schedule_to_new_service_flag = attributes[:'attachScheduleToNewServiceFlag']
      end

      if attributes.has_key?(:'templateFlag')
        self.template_flag = attributes[:'templateFlag']
      end

      if attributes.has_key?(:'emailContactFlag')
        self.email_contact_flag = attributes[:'emailContactFlag']
      end

      if attributes.has_key?(:'emailResourceFlag')
        self.email_resource_flag = attributes[:'emailResourceFlag']
      end

      if attributes.has_key?(:'emailCCFlag')
        self.email_cc_flag = attributes[:'emailCCFlag']
      end

      if attributes.has_key?(:'emailCC')
        self.email_cc = attributes[:'emailCC']
      end

      if attributes.has_key?(:'restrictDownpaymentFlag')
        self.restrict_downpayment_flag = attributes[:'restrictDownpaymentFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.has_key?(:'reAssignToMember')
        self.re_assign_to_member = attributes[:'reAssignToMember']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 100
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 100.")
      end

      if @board.nil?
        invalid_properties.push("invalid value for 'board', board cannot be nil.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      if @source.nil?
        invalid_properties.push("invalid value for 'source', source cannot be nil.")
      end

      if @priority.nil?
        invalid_properties.push("invalid value for 'priority', priority cannot be nil.")
      end

      if @team.nil?
        invalid_properties.push("invalid value for 'team', team cannot be nil.")
      end

      if @location.nil?
        invalid_properties.push("invalid value for 'location', location cannot be nil.")
      end

      if @department.nil?
        invalid_properties.push("invalid value for 'department', department cannot be nil.")
      end

      if @summary.nil?
        invalid_properties.push("invalid value for 'summary', summary cannot be nil.")
      end

      if @summary.to_s.length > 100
        invalid_properties.push("invalid value for 'summary', the character length must be smaller than or equal to 100.")
      end

      if !@purchase_order_number.nil? && @purchase_order_number.to_s.length > 25
        invalid_properties.push("invalid value for 'purchase_order_number', the character length must be smaller than or equal to 25.")
      end

      if !@reference.nil? && @reference.to_s.length > 50
        invalid_properties.push("invalid value for 'reference', the character length must be smaller than or equal to 50.")
      end

      if @billing_method.nil?
        invalid_properties.push("invalid value for 'billing_method', billing_method cannot be nil.")
      end

      if @severity.nil?
        invalid_properties.push("invalid value for 'severity', severity cannot be nil.")
      end

      if @impact.nil?
        invalid_properties.push("invalid value for 'impact', impact cannot be nil.")
      end

      if @assigned_by.nil?
        invalid_properties.push("invalid value for 'assigned_by', assigned_by cannot be nil.")
      end

      if !@email_cc.nil? && @email_cc.to_s.length > 1000
        invalid_properties.push("invalid value for 'email_cc', the character length must be smaller than or equal to 1000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if @board.nil?
      return false if @status.nil?
      return false if @source.nil?
      return false if @priority.nil?
      return false if @team.nil?
      return false if @location.nil?
      return false if @department.nil?
      return false if @summary.nil?
      return false if @summary.to_s.length > 100
      return false if !@purchase_order_number.nil? && @purchase_order_number.to_s.length > 25
      return false if !@reference.nil? && @reference.to_s.length > 50
      return false if @billing_method.nil?
      billing_method_validator = EnumAttributeValidator.new('String', ["ActualRates", "FixedFee", "NotToExceed", "OverrideRate"])
      return false unless billing_method_validator.valid?(@billing_method)
      return false if @severity.nil?
      severity_validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      return false unless severity_validator.valid?(@severity)
      return false if @impact.nil?
      impact_validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      return false unless impact_validator.valid?(@impact)
      return false if @assigned_by.nil?
      return false if !@email_cc.nil? && @email_cc.to_s.length > 1000
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

    # Custom attribute writer method with validation
    # @param [Object] summary Value to be assigned
    def summary=(summary)
      if summary.nil?
        fail ArgumentError, "summary cannot be nil"
      end

      if summary.to_s.length > 100
        fail ArgumentError, "invalid value for 'summary', the character length must be smaller than or equal to 100."
      end

      @summary = summary
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_order_number Value to be assigned
    def purchase_order_number=(purchase_order_number)

      if !purchase_order_number.nil? && purchase_order_number.to_s.length > 25
        fail ArgumentError, "invalid value for 'purchase_order_number', the character length must be smaller than or equal to 25."
      end

      @purchase_order_number = purchase_order_number
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)

      if !reference.nil? && reference.to_s.length > 50
        fail ArgumentError, "invalid value for 'reference', the character length must be smaller than or equal to 50."
      end

      @reference = reference
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] severity Object to be assigned
    def severity=(severity)
      validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      unless validator.valid?(severity)
        fail ArgumentError, "invalid value for 'severity', must be one of #{validator.allowable_values}."
      end
      @severity = severity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] impact Object to be assigned
    def impact=(impact)
      validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      unless validator.valid?(impact)
        fail ArgumentError, "invalid value for 'impact', must be one of #{validator.allowable_values}."
      end
      @impact = impact
    end

    # Custom attribute writer method with validation
    # @param [Object] email_cc Value to be assigned
    def email_cc=(email_cc)

      if !email_cc.nil? && email_cc.to_s.length > 1000
        fail ArgumentError, "invalid value for 'email_cc', the character length must be smaller than or equal to 1000."
      end

      @email_cc = email_cc
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          board == o.board &&
          type == o.type &&
          item == o.item &&
          subtype == o.subtype &&
          service_location == o.service_location &&
          status == o.status &&
          source == o.source &&
          priority == o.priority &&
          team == o.team &&
          company == o.company &&
          contact == o.contact &&
          site == o.site &&
          assigned_notify_flag == o.assigned_notify_flag &&
          location == o.location &&
          department == o.department &&
          summary == o.summary &&
          problem == o.problem &&
          hours_budget == o.hours_budget &&
          internal_analysis == o.internal_analysis &&
          time_billable_flag == o.time_billable_flag &&
          expense_billable_flag == o.expense_billable_flag &&
          purchase_order_number == o.purchase_order_number &&
          reference == o.reference &&
          bill_complete_flag == o.bill_complete_flag &&
          bill_service_separately_flag == o.bill_service_separately_flag &&
          billing_amount == o.billing_amount &&
          bill_unapproved_time_and_expenses_flag == o.bill_unapproved_time_and_expenses_flag &&
          override_flag == o.override_flag &&
          time_invoice_flag == o.time_invoice_flag &&
          expense_invoice_flag == o.expense_invoice_flag &&
          product_invoice_flag == o.product_invoice_flag &&
          agreement == o.agreement &&
          billing_method == o.billing_method &&
          severity == o.severity &&
          impact == o.impact &&
          assigned_by == o.assigned_by &&
          schedule_days_before == o.schedule_days_before &&
          service_days_before == o.service_days_before &&
          attach_schedule_to_new_service_flag == o.attach_schedule_to_new_service_flag &&
          template_flag == o.template_flag &&
          email_contact_flag == o.email_contact_flag &&
          email_resource_flag == o.email_resource_flag &&
          email_cc_flag == o.email_cc_flag &&
          email_cc == o.email_cc &&
          restrict_downpayment_flag == o.restrict_downpayment_flag &&
          _info == o._info &&
          count == o.count &&
          re_assign_to_member == o.re_assign_to_member
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, board, type, item, subtype, service_location, status, source, priority, team, company, contact, site, assigned_notify_flag, location, department, summary, problem, hours_budget, internal_analysis, time_billable_flag, expense_billable_flag, purchase_order_number, reference, bill_complete_flag, bill_service_separately_flag, billing_amount, bill_unapproved_time_and_expenses_flag, override_flag, time_invoice_flag, expense_invoice_flag, product_invoice_flag, agreement, billing_method, severity, impact, assigned_by, schedule_days_before, service_days_before, attach_schedule_to_new_service_flag, template_flag, email_contact_flag, email_resource_flag, email_cc_flag, email_cc, restrict_downpayment_flag, _info, count, re_assign_to_member].hash
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
