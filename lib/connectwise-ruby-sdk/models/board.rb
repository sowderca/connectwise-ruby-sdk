
require 'date'

module ConnectWise

  class Board
    attr_accessor :id

    attr_accessor :name

    attr_accessor :location

    attr_accessor :department

    attr_accessor :inactive_flag

    attr_accessor :sign_off_template

    attr_accessor :send_to_contact_flag

    attr_accessor :contact_template

    attr_accessor :send_to_resource_flag

    attr_accessor :resource_template

    attr_accessor :project_flag

    # This field only shows if it is Project Board.
    attr_accessor :show_dependencies_flag

    # This field only shows if it is Project Board.
    attr_accessor :show_estimates_flag

    attr_accessor :board_icon

    attr_accessor :bill_tickets_after_closed_flag

    attr_accessor :bill_ticket_separately_flag

    attr_accessor :bill_unapproved_time_expense_flag

    attr_accessor :override_billing_setup_flag

    attr_accessor :dispatch_member

    attr_accessor :service_manager_member

    attr_accessor :duty_manager_member

    attr_accessor :oncall_member

    attr_accessor :work_role

    attr_accessor :work_type

    attr_accessor :bill_time

    attr_accessor :bill_expense

    attr_accessor :bill_product

    attr_accessor :auto_close_status

    attr_accessor :auto_assign_new_tickets_flag

    attr_accessor :auto_assign_new_ec_tickets_flag

    attr_accessor :auto_assign_new_portal_tickets_flag

    attr_accessor :discussions_locked_flag

    attr_accessor :time_entry_locked_flag

    attr_accessor :notify_email_from

    attr_accessor :notify_email_from_name

    attr_accessor :closed_loop_discussions_flag

    attr_accessor :closed_loop_resolution_flag

    attr_accessor :closed_loop_internal_analysis_flag

    attr_accessor :time_entry_discussion_flag

    attr_accessor :time_entry_resolution_flag

    attr_accessor :time_entry_internal_analysis_flag

    attr_accessor :problem_sort

    attr_accessor :resolution_sort

    attr_accessor :internal_analysis_sort

    attr_accessor :email_connector_allow_reopen_closed_flag

    # This field is only required when emailConnectorAllowReopenClosed is true
    attr_accessor :email_connector_reopen_status

    # This field can only be set when emailConnectorAllowReopenClosed is true
    attr_accessor :email_connector_reopen_resources_flag

    # This field can only be set when emailConnectorAllowReopenClosed is true
    attr_accessor :email_connector_new_ticket_no_match_flag

    # This field can only be set when emailConnectorAllowReopenClosed is true
    attr_accessor :email_connector_never_reopen_by_days_flag

    attr_accessor :email_connector_reopen_days_limit

    attr_accessor :use_member_display_name_flag

    attr_accessor :send_to_cc_flag

    attr_accessor :auto_assign_ticket_owner_flag

    attr_accessor :closed_loop_all_flag

    attr_accessor :all_sort

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
        :'location' => :'location',
        :'department' => :'department',
        :'inactive_flag' => :'inactiveFlag',
        :'sign_off_template' => :'signOffTemplate',
        :'send_to_contact_flag' => :'sendToContactFlag',
        :'contact_template' => :'contactTemplate',
        :'send_to_resource_flag' => :'sendToResourceFlag',
        :'resource_template' => :'resourceTemplate',
        :'project_flag' => :'projectFlag',
        :'show_dependencies_flag' => :'showDependenciesFlag',
        :'show_estimates_flag' => :'showEstimatesFlag',
        :'board_icon' => :'boardIcon',
        :'bill_tickets_after_closed_flag' => :'billTicketsAfterClosedFlag',
        :'bill_ticket_separately_flag' => :'billTicketSeparatelyFlag',
        :'bill_unapproved_time_expense_flag' => :'billUnapprovedTimeExpenseFlag',
        :'override_billing_setup_flag' => :'overrideBillingSetupFlag',
        :'dispatch_member' => :'dispatchMember',
        :'service_manager_member' => :'serviceManagerMember',
        :'duty_manager_member' => :'dutyManagerMember',
        :'oncall_member' => :'oncallMember',
        :'work_role' => :'workRole',
        :'work_type' => :'workType',
        :'bill_time' => :'billTime',
        :'bill_expense' => :'billExpense',
        :'bill_product' => :'billProduct',
        :'auto_close_status' => :'autoCloseStatus',
        :'auto_assign_new_tickets_flag' => :'autoAssignNewTicketsFlag',
        :'auto_assign_new_ec_tickets_flag' => :'autoAssignNewECTicketsFlag',
        :'auto_assign_new_portal_tickets_flag' => :'autoAssignNewPortalTicketsFlag',
        :'discussions_locked_flag' => :'discussionsLockedFlag',
        :'time_entry_locked_flag' => :'timeEntryLockedFlag',
        :'notify_email_from' => :'notifyEmailFrom',
        :'notify_email_from_name' => :'notifyEmailFromName',
        :'closed_loop_discussions_flag' => :'closedLoopDiscussionsFlag',
        :'closed_loop_resolution_flag' => :'closedLoopResolutionFlag',
        :'closed_loop_internal_analysis_flag' => :'closedLoopInternalAnalysisFlag',
        :'time_entry_discussion_flag' => :'timeEntryDiscussionFlag',
        :'time_entry_resolution_flag' => :'timeEntryResolutionFlag',
        :'time_entry_internal_analysis_flag' => :'timeEntryInternalAnalysisFlag',
        :'problem_sort' => :'problemSort',
        :'resolution_sort' => :'resolutionSort',
        :'internal_analysis_sort' => :'internalAnalysisSort',
        :'email_connector_allow_reopen_closed_flag' => :'emailConnectorAllowReopenClosedFlag',
        :'email_connector_reopen_status' => :'emailConnectorReopenStatus',
        :'email_connector_reopen_resources_flag' => :'emailConnectorReopenResourcesFlag',
        :'email_connector_new_ticket_no_match_flag' => :'emailConnectorNewTicketNoMatchFlag',
        :'email_connector_never_reopen_by_days_flag' => :'emailConnectorNeverReopenByDaysFlag',
        :'email_connector_reopen_days_limit' => :'emailConnectorReopenDaysLimit',
        :'use_member_display_name_flag' => :'useMemberDisplayNameFlag',
        :'send_to_cc_flag' => :'sendToCCFlag',
        :'auto_assign_ticket_owner_flag' => :'autoAssignTicketOwnerFlag',
        :'closed_loop_all_flag' => :'closedLoopAllFlag',
        :'all_sort' => :'allSort',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'location' => :'SystemLocationReference',
        :'department' => :'SystemDepartmentReference',
        :'inactive_flag' => :'BOOLEAN',
        :'sign_off_template' => :'ServiceSignoffReference',
        :'send_to_contact_flag' => :'BOOLEAN',
        :'contact_template' => :'ServiceEmailTemplateReference',
        :'send_to_resource_flag' => :'BOOLEAN',
        :'resource_template' => :'ServiceEmailTemplateReference',
        :'project_flag' => :'BOOLEAN',
        :'show_dependencies_flag' => :'BOOLEAN',
        :'show_estimates_flag' => :'BOOLEAN',
        :'board_icon' => :'DocumentReference',
        :'bill_tickets_after_closed_flag' => :'BOOLEAN',
        :'bill_ticket_separately_flag' => :'BOOLEAN',
        :'bill_unapproved_time_expense_flag' => :'BOOLEAN',
        :'override_billing_setup_flag' => :'BOOLEAN',
        :'dispatch_member' => :'MemberReference',
        :'service_manager_member' => :'MemberReference',
        :'duty_manager_member' => :'MemberReference',
        :'oncall_member' => :'MemberReference',
        :'work_role' => :'WorkRoleReference',
        :'work_type' => :'WorkTypeReference',
        :'bill_time' => :'String',
        :'bill_expense' => :'String',
        :'bill_product' => :'String',
        :'auto_close_status' => :'ServiceStatusReference',
        :'auto_assign_new_tickets_flag' => :'BOOLEAN',
        :'auto_assign_new_ec_tickets_flag' => :'BOOLEAN',
        :'auto_assign_new_portal_tickets_flag' => :'BOOLEAN',
        :'discussions_locked_flag' => :'BOOLEAN',
        :'time_entry_locked_flag' => :'BOOLEAN',
        :'notify_email_from' => :'String',
        :'notify_email_from_name' => :'String',
        :'closed_loop_discussions_flag' => :'BOOLEAN',
        :'closed_loop_resolution_flag' => :'BOOLEAN',
        :'closed_loop_internal_analysis_flag' => :'BOOLEAN',
        :'time_entry_discussion_flag' => :'BOOLEAN',
        :'time_entry_resolution_flag' => :'BOOLEAN',
        :'time_entry_internal_analysis_flag' => :'BOOLEAN',
        :'problem_sort' => :'String',
        :'resolution_sort' => :'String',
        :'internal_analysis_sort' => :'String',
        :'email_connector_allow_reopen_closed_flag' => :'BOOLEAN',
        :'email_connector_reopen_status' => :'ServiceStatusReference',
        :'email_connector_reopen_resources_flag' => :'BOOLEAN',
        :'email_connector_new_ticket_no_match_flag' => :'BOOLEAN',
        :'email_connector_never_reopen_by_days_flag' => :'BOOLEAN',
        :'email_connector_reopen_days_limit' => :'Integer',
        :'use_member_display_name_flag' => :'BOOLEAN',
        :'send_to_cc_flag' => :'BOOLEAN',
        :'auto_assign_ticket_owner_flag' => :'BOOLEAN',
        :'closed_loop_all_flag' => :'BOOLEAN',
        :'all_sort' => :'String',
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

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'signOffTemplate')
        self.sign_off_template = attributes[:'signOffTemplate']
      end

      if attributes.has_key?(:'sendToContactFlag')
        self.send_to_contact_flag = attributes[:'sendToContactFlag']
      end

      if attributes.has_key?(:'contactTemplate')
        self.contact_template = attributes[:'contactTemplate']
      end

      if attributes.has_key?(:'sendToResourceFlag')
        self.send_to_resource_flag = attributes[:'sendToResourceFlag']
      end

      if attributes.has_key?(:'resourceTemplate')
        self.resource_template = attributes[:'resourceTemplate']
      end

      if attributes.has_key?(:'projectFlag')
        self.project_flag = attributes[:'projectFlag']
      end

      if attributes.has_key?(:'showDependenciesFlag')
        self.show_dependencies_flag = attributes[:'showDependenciesFlag']
      end

      if attributes.has_key?(:'showEstimatesFlag')
        self.show_estimates_flag = attributes[:'showEstimatesFlag']
      end

      if attributes.has_key?(:'boardIcon')
        self.board_icon = attributes[:'boardIcon']
      end

      if attributes.has_key?(:'billTicketsAfterClosedFlag')
        self.bill_tickets_after_closed_flag = attributes[:'billTicketsAfterClosedFlag']
      end

      if attributes.has_key?(:'billTicketSeparatelyFlag')
        self.bill_ticket_separately_flag = attributes[:'billTicketSeparatelyFlag']
      end

      if attributes.has_key?(:'billUnapprovedTimeExpenseFlag')
        self.bill_unapproved_time_expense_flag = attributes[:'billUnapprovedTimeExpenseFlag']
      end

      if attributes.has_key?(:'overrideBillingSetupFlag')
        self.override_billing_setup_flag = attributes[:'overrideBillingSetupFlag']
      end

      if attributes.has_key?(:'dispatchMember')
        self.dispatch_member = attributes[:'dispatchMember']
      end

      if attributes.has_key?(:'serviceManagerMember')
        self.service_manager_member = attributes[:'serviceManagerMember']
      end

      if attributes.has_key?(:'dutyManagerMember')
        self.duty_manager_member = attributes[:'dutyManagerMember']
      end

      if attributes.has_key?(:'oncallMember')
        self.oncall_member = attributes[:'oncallMember']
      end

      if attributes.has_key?(:'workRole')
        self.work_role = attributes[:'workRole']
      end

      if attributes.has_key?(:'workType')
        self.work_type = attributes[:'workType']
      end

      if attributes.has_key?(:'billTime')
        self.bill_time = attributes[:'billTime']
      end

      if attributes.has_key?(:'billExpense')
        self.bill_expense = attributes[:'billExpense']
      end

      if attributes.has_key?(:'billProduct')
        self.bill_product = attributes[:'billProduct']
      end

      if attributes.has_key?(:'autoCloseStatus')
        self.auto_close_status = attributes[:'autoCloseStatus']
      end

      if attributes.has_key?(:'autoAssignNewTicketsFlag')
        self.auto_assign_new_tickets_flag = attributes[:'autoAssignNewTicketsFlag']
      end

      if attributes.has_key?(:'autoAssignNewECTicketsFlag')
        self.auto_assign_new_ec_tickets_flag = attributes[:'autoAssignNewECTicketsFlag']
      end

      if attributes.has_key?(:'autoAssignNewPortalTicketsFlag')
        self.auto_assign_new_portal_tickets_flag = attributes[:'autoAssignNewPortalTicketsFlag']
      end

      if attributes.has_key?(:'discussionsLockedFlag')
        self.discussions_locked_flag = attributes[:'discussionsLockedFlag']
      end

      if attributes.has_key?(:'timeEntryLockedFlag')
        self.time_entry_locked_flag = attributes[:'timeEntryLockedFlag']
      end

      if attributes.has_key?(:'notifyEmailFrom')
        self.notify_email_from = attributes[:'notifyEmailFrom']
      end

      if attributes.has_key?(:'notifyEmailFromName')
        self.notify_email_from_name = attributes[:'notifyEmailFromName']
      end

      if attributes.has_key?(:'closedLoopDiscussionsFlag')
        self.closed_loop_discussions_flag = attributes[:'closedLoopDiscussionsFlag']
      end

      if attributes.has_key?(:'closedLoopResolutionFlag')
        self.closed_loop_resolution_flag = attributes[:'closedLoopResolutionFlag']
      end

      if attributes.has_key?(:'closedLoopInternalAnalysisFlag')
        self.closed_loop_internal_analysis_flag = attributes[:'closedLoopInternalAnalysisFlag']
      end

      if attributes.has_key?(:'timeEntryDiscussionFlag')
        self.time_entry_discussion_flag = attributes[:'timeEntryDiscussionFlag']
      end

      if attributes.has_key?(:'timeEntryResolutionFlag')
        self.time_entry_resolution_flag = attributes[:'timeEntryResolutionFlag']
      end

      if attributes.has_key?(:'timeEntryInternalAnalysisFlag')
        self.time_entry_internal_analysis_flag = attributes[:'timeEntryInternalAnalysisFlag']
      end

      if attributes.has_key?(:'problemSort')
        self.problem_sort = attributes[:'problemSort']
      end

      if attributes.has_key?(:'resolutionSort')
        self.resolution_sort = attributes[:'resolutionSort']
      end

      if attributes.has_key?(:'internalAnalysisSort')
        self.internal_analysis_sort = attributes[:'internalAnalysisSort']
      end

      if attributes.has_key?(:'emailConnectorAllowReopenClosedFlag')
        self.email_connector_allow_reopen_closed_flag = attributes[:'emailConnectorAllowReopenClosedFlag']
      end

      if attributes.has_key?(:'emailConnectorReopenStatus')
        self.email_connector_reopen_status = attributes[:'emailConnectorReopenStatus']
      end

      if attributes.has_key?(:'emailConnectorReopenResourcesFlag')
        self.email_connector_reopen_resources_flag = attributes[:'emailConnectorReopenResourcesFlag']
      end

      if attributes.has_key?(:'emailConnectorNewTicketNoMatchFlag')
        self.email_connector_new_ticket_no_match_flag = attributes[:'emailConnectorNewTicketNoMatchFlag']
      end

      if attributes.has_key?(:'emailConnectorNeverReopenByDaysFlag')
        self.email_connector_never_reopen_by_days_flag = attributes[:'emailConnectorNeverReopenByDaysFlag']
      end

      if attributes.has_key?(:'emailConnectorReopenDaysLimit')
        self.email_connector_reopen_days_limit = attributes[:'emailConnectorReopenDaysLimit']
      end

      if attributes.has_key?(:'useMemberDisplayNameFlag')
        self.use_member_display_name_flag = attributes[:'useMemberDisplayNameFlag']
      end

      if attributes.has_key?(:'sendToCCFlag')
        self.send_to_cc_flag = attributes[:'sendToCCFlag']
      end

      if attributes.has_key?(:'autoAssignTicketOwnerFlag')
        self.auto_assign_ticket_owner_flag = attributes[:'autoAssignTicketOwnerFlag']
      end

      if attributes.has_key?(:'closedLoopAllFlag')
        self.closed_loop_all_flag = attributes[:'closedLoopAllFlag']
      end

      if attributes.has_key?(:'allSort')
        self.all_sort = attributes[:'allSort']
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

      if @location.nil?
        invalid_properties.push("invalid value for 'location', location cannot be nil.")
      end

      if @department.nil?
        invalid_properties.push("invalid value for 'department', department cannot be nil.")
      end

      if !@notify_email_from.nil? && @notify_email_from.to_s.length > 50
        invalid_properties.push("invalid value for 'notify_email_from', the character length must be smaller than or equal to 50.")
      end

      if !@notify_email_from_name.nil? && @notify_email_from_name.to_s.length > 60
        invalid_properties.push("invalid value for 'notify_email_from_name', the character length must be smaller than or equal to 60.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if @location.nil?
      return false if @department.nil?
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_time_validator.valid?(@bill_time)
      bill_expense_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_expense_validator.valid?(@bill_expense)
      bill_product_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_product_validator.valid?(@bill_product)
      return false if !@notify_email_from.nil? && @notify_email_from.to_s.length > 50
      return false if !@notify_email_from_name.nil? && @notify_email_from_name.to_s.length > 60
      problem_sort_validator = EnumAttributeValidator.new('String', ["Ascending", "Descending"])
      return false unless problem_sort_validator.valid?(@problem_sort)
      resolution_sort_validator = EnumAttributeValidator.new('String', ["Ascending", "Descending"])
      return false unless resolution_sort_validator.valid?(@resolution_sort)
      internal_analysis_sort_validator = EnumAttributeValidator.new('String', ["Ascending", "Descending"])
      return false unless internal_analysis_sort_validator.valid?(@internal_analysis_sort)
      all_sort_validator = EnumAttributeValidator.new('String', ["Ascending", "Descending"])
      return false unless all_sort_validator.valid?(@all_sort)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_expense Object to be assigned
    def bill_expense=(bill_expense)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_expense)
        fail ArgumentError, "invalid value for 'bill_expense', must be one of #{validator.allowable_values}."
      end
      @bill_expense = bill_expense
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_product Object to be assigned
    def bill_product=(bill_product)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_product)
        fail ArgumentError, "invalid value for 'bill_product', must be one of #{validator.allowable_values}."
      end
      @bill_product = bill_product
    end

    # Custom attribute writer method with validation
    # @param [Object] notify_email_from Value to be assigned
    def notify_email_from=(notify_email_from)

      if !notify_email_from.nil? && notify_email_from.to_s.length > 50
        fail ArgumentError, "invalid value for 'notify_email_from', the character length must be smaller than or equal to 50."
      end

      @notify_email_from = notify_email_from
    end

    # Custom attribute writer method with validation
    # @param [Object] notify_email_from_name Value to be assigned
    def notify_email_from_name=(notify_email_from_name)

      if !notify_email_from_name.nil? && notify_email_from_name.to_s.length > 60
        fail ArgumentError, "invalid value for 'notify_email_from_name', the character length must be smaller than or equal to 60."
      end

      @notify_email_from_name = notify_email_from_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] problem_sort Object to be assigned
    def problem_sort=(problem_sort)
      validator = EnumAttributeValidator.new('String', ["Ascending", "Descending"])
      unless validator.valid?(problem_sort)
        fail ArgumentError, "invalid value for 'problem_sort', must be one of #{validator.allowable_values}."
      end
      @problem_sort = problem_sort
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resolution_sort Object to be assigned
    def resolution_sort=(resolution_sort)
      validator = EnumAttributeValidator.new('String', ["Ascending", "Descending"])
      unless validator.valid?(resolution_sort)
        fail ArgumentError, "invalid value for 'resolution_sort', must be one of #{validator.allowable_values}."
      end
      @resolution_sort = resolution_sort
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] internal_analysis_sort Object to be assigned
    def internal_analysis_sort=(internal_analysis_sort)
      validator = EnumAttributeValidator.new('String', ["Ascending", "Descending"])
      unless validator.valid?(internal_analysis_sort)
        fail ArgumentError, "invalid value for 'internal_analysis_sort', must be one of #{validator.allowable_values}."
      end
      @internal_analysis_sort = internal_analysis_sort
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] all_sort Object to be assigned
    def all_sort=(all_sort)
      validator = EnumAttributeValidator.new('String', ["Ascending", "Descending"])
      unless validator.valid?(all_sort)
        fail ArgumentError, "invalid value for 'all_sort', must be one of #{validator.allowable_values}."
      end
      @all_sort = all_sort
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          location == o.location &&
          department == o.department &&
          inactive_flag == o.inactive_flag &&
          sign_off_template == o.sign_off_template &&
          send_to_contact_flag == o.send_to_contact_flag &&
          contact_template == o.contact_template &&
          send_to_resource_flag == o.send_to_resource_flag &&
          resource_template == o.resource_template &&
          project_flag == o.project_flag &&
          show_dependencies_flag == o.show_dependencies_flag &&
          show_estimates_flag == o.show_estimates_flag &&
          board_icon == o.board_icon &&
          bill_tickets_after_closed_flag == o.bill_tickets_after_closed_flag &&
          bill_ticket_separately_flag == o.bill_ticket_separately_flag &&
          bill_unapproved_time_expense_flag == o.bill_unapproved_time_expense_flag &&
          override_billing_setup_flag == o.override_billing_setup_flag &&
          dispatch_member == o.dispatch_member &&
          service_manager_member == o.service_manager_member &&
          duty_manager_member == o.duty_manager_member &&
          oncall_member == o.oncall_member &&
          work_role == o.work_role &&
          work_type == o.work_type &&
          bill_time == o.bill_time &&
          bill_expense == o.bill_expense &&
          bill_product == o.bill_product &&
          auto_close_status == o.auto_close_status &&
          auto_assign_new_tickets_flag == o.auto_assign_new_tickets_flag &&
          auto_assign_new_ec_tickets_flag == o.auto_assign_new_ec_tickets_flag &&
          auto_assign_new_portal_tickets_flag == o.auto_assign_new_portal_tickets_flag &&
          discussions_locked_flag == o.discussions_locked_flag &&
          time_entry_locked_flag == o.time_entry_locked_flag &&
          notify_email_from == o.notify_email_from &&
          notify_email_from_name == o.notify_email_from_name &&
          closed_loop_discussions_flag == o.closed_loop_discussions_flag &&
          closed_loop_resolution_flag == o.closed_loop_resolution_flag &&
          closed_loop_internal_analysis_flag == o.closed_loop_internal_analysis_flag &&
          time_entry_discussion_flag == o.time_entry_discussion_flag &&
          time_entry_resolution_flag == o.time_entry_resolution_flag &&
          time_entry_internal_analysis_flag == o.time_entry_internal_analysis_flag &&
          problem_sort == o.problem_sort &&
          resolution_sort == o.resolution_sort &&
          internal_analysis_sort == o.internal_analysis_sort &&
          email_connector_allow_reopen_closed_flag == o.email_connector_allow_reopen_closed_flag &&
          email_connector_reopen_status == o.email_connector_reopen_status &&
          email_connector_reopen_resources_flag == o.email_connector_reopen_resources_flag &&
          email_connector_new_ticket_no_match_flag == o.email_connector_new_ticket_no_match_flag &&
          email_connector_never_reopen_by_days_flag == o.email_connector_never_reopen_by_days_flag &&
          email_connector_reopen_days_limit == o.email_connector_reopen_days_limit &&
          use_member_display_name_flag == o.use_member_display_name_flag &&
          send_to_cc_flag == o.send_to_cc_flag &&
          auto_assign_ticket_owner_flag == o.auto_assign_ticket_owner_flag &&
          closed_loop_all_flag == o.closed_loop_all_flag &&
          all_sort == o.all_sort &&
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
      [id, name, location, department, inactive_flag, sign_off_template, send_to_contact_flag, contact_template, send_to_resource_flag, resource_template, project_flag, show_dependencies_flag, show_estimates_flag, board_icon, bill_tickets_after_closed_flag, bill_ticket_separately_flag, bill_unapproved_time_expense_flag, override_billing_setup_flag, dispatch_member, service_manager_member, duty_manager_member, oncall_member, work_role, work_type, bill_time, bill_expense, bill_product, auto_close_status, auto_assign_new_tickets_flag, auto_assign_new_ec_tickets_flag, auto_assign_new_portal_tickets_flag, discussions_locked_flag, time_entry_locked_flag, notify_email_from, notify_email_from_name, closed_loop_discussions_flag, closed_loop_resolution_flag, closed_loop_internal_analysis_flag, time_entry_discussion_flag, time_entry_resolution_flag, time_entry_internal_analysis_flag, problem_sort, resolution_sort, internal_analysis_sort, email_connector_allow_reopen_closed_flag, email_connector_reopen_status, email_connector_reopen_resources_flag, email_connector_new_ticket_no_match_flag, email_connector_never_reopen_by_days_flag, email_connector_reopen_days_limit, use_member_display_name_flag, send_to_cc_flag, auto_assign_ticket_owner_flag, closed_loop_all_flag, all_sort, _info].hash
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
