
require 'date'

module ConnectWise

  class Member
    attr_accessor :id

    attr_accessor :identifier

    # ConditionallyRequired. API Member will get random password generated
    attr_accessor :password

    attr_accessor :first_name

    attr_accessor :middle_initial

    attr_accessor :last_name

    attr_accessor :title

    attr_accessor :report_card

    # F = Full Member, A = API Member, C = StreamlineIT Member, X = Subcontractor Member
    attr_accessor :license_class

    attr_accessor :disable_online_flag

    attr_accessor :enable_mobile_flag

    attr_accessor :type

    attr_accessor :employee_identifer

    attr_accessor :vendor_number

    attr_accessor :notes

    attr_accessor :time_zone

    attr_accessor :country

    attr_accessor :service_board_team_ids

    attr_accessor :enable_mobile_gps_flag

    attr_accessor :inactive_date

    attr_accessor :inactive_flag

    attr_accessor :last_login

    attr_accessor :photo

    attr_accessor :office_email

    attr_accessor :office_phone

    attr_accessor :office_extension

    attr_accessor :mobile_email

    attr_accessor :mobile_phone

    attr_accessor :mobile_extension

    attr_accessor :home_email

    attr_accessor :home_phone

    attr_accessor :home_extension

    attr_accessor :default_email

    attr_accessor :default_phone

    attr_accessor :security_role

    attr_accessor :admin_flag

    attr_accessor :structure_level

    attr_accessor :security_location

    attr_accessor :default_location

    attr_accessor :default_department

    attr_accessor :reports_to

    attr_accessor :restrict_location_flag

    attr_accessor :restrict_department_flag

    attr_accessor :work_role

    attr_accessor :work_type

    attr_accessor :time_approver

    attr_accessor :expense_approver

    attr_accessor :billable_forecast

    attr_accessor :daily_capacity

    attr_accessor :hourly_cost

    attr_accessor :hourly_rate

    attr_accessor :include_in_utilization_reporting_flag

    attr_accessor :require_expense_entry_flag

    attr_accessor :require_time_sheet_entry_flag

    attr_accessor :require_start_and_end_time_on_time_entry_flag

    attr_accessor :allow_in_cell_entry_on_time_sheet

    attr_accessor :enter_time_against_company_flag

    attr_accessor :allow_expenses_entered_against_companies_flag

    attr_accessor :time_reminder_email_flag

    attr_accessor :days_tolerance

    attr_accessor :minimum_hours

    attr_accessor :time_sheet_start_date

    attr_accessor :hire_date

    attr_accessor :service_default_location

    attr_accessor :service_default_department

    attr_accessor :service_default_board

    attr_accessor :restrict_service_default_location_flag

    attr_accessor :restrict_service_default_department_flag

    attr_accessor :excluded_service_board_ids

    attr_accessor :project_default_location

    attr_accessor :project_default_department

    attr_accessor :project_default_board

    attr_accessor :restrict_project_default_location_flag

    attr_accessor :restrict_project_default_department_flag

    attr_accessor :excluded_project_board_ids

    attr_accessor :schedule_default_location

    attr_accessor :schedule_default_department

    attr_accessor :schedule_capacity

    attr_accessor :service_location

    attr_accessor :restrict_schedule_flag

    attr_accessor :hide_member_in_dispatch_portal_flag

    attr_accessor :calendar

    attr_accessor :sales_default_location

    attr_accessor :restrict_default_sales_territory_flag

    attr_accessor :warehouse

    attr_accessor :warehouse_bin

    attr_accessor :restrict_default_warehouse_flag

    attr_accessor :restrict_default_warehouse_bin_flag

    attr_accessor :mapi_name

    attr_accessor :calendar_sync_integration_flag

    attr_accessor :enable_ldap_authentication_flag

    attr_accessor :ldap_configuration

    attr_accessor :ldap_user_name

    attr_accessor :company_activity_tab_format

    attr_accessor :invoice_time_tab_format

    attr_accessor :invoice_screen_default_tab_format

    attr_accessor :invoicing_display_options

    attr_accessor :agreement_invoicing_display_options

    attr_accessor :corelytics_username

    attr_accessor :corelytics_password

    attr_accessor :remote_package

    attr_accessor :remote_package_platform

    attr_accessor :remote_package_user_name

    attr_accessor :remote_package_password

    attr_accessor :remote_package_account

    attr_accessor :authentication_service_type

    attr_accessor :timebased_one_time_password_activated

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
        :'identifier' => :'identifier',
        :'password' => :'password',
        :'first_name' => :'firstName',
        :'middle_initial' => :'middleInitial',
        :'last_name' => :'lastName',
        :'title' => :'title',
        :'report_card' => :'reportCard',
        :'license_class' => :'licenseClass',
        :'disable_online_flag' => :'disableOnlineFlag',
        :'enable_mobile_flag' => :'enableMobileFlag',
        :'type' => :'type',
        :'employee_identifer' => :'employeeIdentifer',
        :'vendor_number' => :'vendorNumber',
        :'notes' => :'notes',
        :'time_zone' => :'timeZone',
        :'country' => :'country',
        :'service_board_team_ids' => :'serviceBoardTeamIds',
        :'enable_mobile_gps_flag' => :'enableMobileGpsFlag',
        :'inactive_date' => :'inactiveDate',
        :'inactive_flag' => :'inactiveFlag',
        :'last_login' => :'lastLogin',
        :'photo' => :'photo',
        :'office_email' => :'officeEmail',
        :'office_phone' => :'officePhone',
        :'office_extension' => :'officeExtension',
        :'mobile_email' => :'mobileEmail',
        :'mobile_phone' => :'mobilePhone',
        :'mobile_extension' => :'mobileExtension',
        :'home_email' => :'homeEmail',
        :'home_phone' => :'homePhone',
        :'home_extension' => :'homeExtension',
        :'default_email' => :'defaultEmail',
        :'default_phone' => :'defaultPhone',
        :'security_role' => :'securityRole',
        :'admin_flag' => :'adminFlag',
        :'structure_level' => :'structureLevel',
        :'security_location' => :'securityLocation',
        :'default_location' => :'defaultLocation',
        :'default_department' => :'defaultDepartment',
        :'reports_to' => :'reportsTo',
        :'restrict_location_flag' => :'restrictLocationFlag',
        :'restrict_department_flag' => :'restrictDepartmentFlag',
        :'work_role' => :'workRole',
        :'work_type' => :'workType',
        :'time_approver' => :'timeApprover',
        :'expense_approver' => :'expenseApprover',
        :'billable_forecast' => :'billableForecast',
        :'daily_capacity' => :'dailyCapacity',
        :'hourly_cost' => :'hourlyCost',
        :'hourly_rate' => :'hourlyRate',
        :'include_in_utilization_reporting_flag' => :'includeInUtilizationReportingFlag',
        :'require_expense_entry_flag' => :'requireExpenseEntryFlag',
        :'require_time_sheet_entry_flag' => :'requireTimeSheetEntryFlag',
        :'require_start_and_end_time_on_time_entry_flag' => :'requireStartAndEndTimeOnTimeEntryFlag',
        :'allow_in_cell_entry_on_time_sheet' => :'allowInCellEntryOnTimeSheet',
        :'enter_time_against_company_flag' => :'enterTimeAgainstCompanyFlag',
        :'allow_expenses_entered_against_companies_flag' => :'allowExpensesEnteredAgainstCompaniesFlag',
        :'time_reminder_email_flag' => :'timeReminderEmailFlag',
        :'days_tolerance' => :'daysTolerance',
        :'minimum_hours' => :'minimumHours',
        :'time_sheet_start_date' => :'timeSheetStartDate',
        :'hire_date' => :'hireDate',
        :'service_default_location' => :'serviceDefaultLocation',
        :'service_default_department' => :'serviceDefaultDepartment',
        :'service_default_board' => :'serviceDefaultBoard',
        :'restrict_service_default_location_flag' => :'restrictServiceDefaultLocationFlag',
        :'restrict_service_default_department_flag' => :'restrictServiceDefaultDepartmentFlag',
        :'excluded_service_board_ids' => :'excludedServiceBoardIds',
        :'project_default_location' => :'projectDefaultLocation',
        :'project_default_department' => :'projectDefaultDepartment',
        :'project_default_board' => :'projectDefaultBoard',
        :'restrict_project_default_location_flag' => :'restrictProjectDefaultLocationFlag',
        :'restrict_project_default_department_flag' => :'restrictProjectDefaultDepartmentFlag',
        :'excluded_project_board_ids' => :'excludedProjectBoardIds',
        :'schedule_default_location' => :'scheduleDefaultLocation',
        :'schedule_default_department' => :'scheduleDefaultDepartment',
        :'schedule_capacity' => :'scheduleCapacity',
        :'service_location' => :'serviceLocation',
        :'restrict_schedule_flag' => :'restrictScheduleFlag',
        :'hide_member_in_dispatch_portal_flag' => :'hideMemberInDispatchPortalFlag',
        :'calendar' => :'calendar',
        :'sales_default_location' => :'salesDefaultLocation',
        :'restrict_default_sales_territory_flag' => :'restrictDefaultSalesTerritoryFlag',
        :'warehouse' => :'warehouse',
        :'warehouse_bin' => :'warehouseBin',
        :'restrict_default_warehouse_flag' => :'restrictDefaultWarehouseFlag',
        :'restrict_default_warehouse_bin_flag' => :'restrictDefaultWarehouseBinFlag',
        :'mapi_name' => :'mapiName',
        :'calendar_sync_integration_flag' => :'calendarSyncIntegrationFlag',
        :'enable_ldap_authentication_flag' => :'enableLdapAuthenticationFlag',
        :'ldap_configuration' => :'ldapConfiguration',
        :'ldap_user_name' => :'ldapUserName',
        :'company_activity_tab_format' => :'companyActivityTabFormat',
        :'invoice_time_tab_format' => :'invoiceTimeTabFormat',
        :'invoice_screen_default_tab_format' => :'invoiceScreenDefaultTabFormat',
        :'invoicing_display_options' => :'invoicingDisplayOptions',
        :'agreement_invoicing_display_options' => :'agreementInvoicingDisplayOptions',
        :'corelytics_username' => :'corelyticsUsername',
        :'corelytics_password' => :'corelyticsPassword',
        :'remote_package' => :'remotePackage',
        :'remote_package_platform' => :'remotePackagePlatform',
        :'remote_package_user_name' => :'remotePackageUserName',
        :'remote_package_password' => :'remotePackagePassword',
        :'remote_package_account' => :'remotePackageAccount',
        :'authentication_service_type' => :'authenticationServiceType',
        :'timebased_one_time_password_activated' => :'timebasedOneTimePasswordActivated',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'identifier' => :'String',
        :'password' => :'String',
        :'first_name' => :'String',
        :'middle_initial' => :'String',
        :'last_name' => :'String',
        :'title' => :'String',
        :'report_card' => :'ReportCardReference',
        :'license_class' => :'String',
        :'disable_online_flag' => :'BOOLEAN',
        :'enable_mobile_flag' => :'BOOLEAN',
        :'type' => :'MemberTypeReference',
        :'employee_identifer' => :'String',
        :'vendor_number' => :'String',
        :'notes' => :'String',
        :'time_zone' => :'TimeZoneSetupReference',
        :'country' => :'CountryReference',
        :'service_board_team_ids' => :'Array<Integer>',
        :'enable_mobile_gps_flag' => :'BOOLEAN',
        :'inactive_date' => :'DateTime',
        :'inactive_flag' => :'BOOLEAN',
        :'last_login' => :'String',
        :'photo' => :'DocumentReference',
        :'office_email' => :'String',
        :'office_phone' => :'String',
        :'office_extension' => :'String',
        :'mobile_email' => :'String',
        :'mobile_phone' => :'String',
        :'mobile_extension' => :'String',
        :'home_email' => :'String',
        :'home_phone' => :'String',
        :'home_extension' => :'String',
        :'default_email' => :'String',
        :'default_phone' => :'String',
        :'security_role' => :'SecurityRoleReference',
        :'admin_flag' => :'BOOLEAN',
        :'structure_level' => :'StructureReference',
        :'security_location' => :'SystemLocationReference',
        :'default_location' => :'SystemLocationReference',
        :'default_department' => :'SystemDepartmentReference',
        :'reports_to' => :'MemberReference',
        :'restrict_location_flag' => :'BOOLEAN',
        :'restrict_department_flag' => :'BOOLEAN',
        :'work_role' => :'WorkRoleReference',
        :'work_type' => :'WorkTypeReference',
        :'time_approver' => :'MemberReference',
        :'expense_approver' => :'MemberReference',
        :'billable_forecast' => :'Float',
        :'daily_capacity' => :'Float',
        :'hourly_cost' => :'Float',
        :'hourly_rate' => :'Float',
        :'include_in_utilization_reporting_flag' => :'BOOLEAN',
        :'require_expense_entry_flag' => :'BOOLEAN',
        :'require_time_sheet_entry_flag' => :'BOOLEAN',
        :'require_start_and_end_time_on_time_entry_flag' => :'BOOLEAN',
        :'allow_in_cell_entry_on_time_sheet' => :'BOOLEAN',
        :'enter_time_against_company_flag' => :'BOOLEAN',
        :'allow_expenses_entered_against_companies_flag' => :'BOOLEAN',
        :'time_reminder_email_flag' => :'BOOLEAN',
        :'days_tolerance' => :'Integer',
        :'minimum_hours' => :'Float',
        :'time_sheet_start_date' => :'DateTime',
        :'hire_date' => :'DateTime',
        :'service_default_location' => :'SystemLocationReference',
        :'service_default_department' => :'SystemDepartmentReference',
        :'service_default_board' => :'BoardReference',
        :'restrict_service_default_location_flag' => :'BOOLEAN',
        :'restrict_service_default_department_flag' => :'BOOLEAN',
        :'excluded_service_board_ids' => :'Array<Integer>',
        :'project_default_location' => :'SystemLocationReference',
        :'project_default_department' => :'SystemDepartmentReference',
        :'project_default_board' => :'ProjectBoardReference',
        :'restrict_project_default_location_flag' => :'BOOLEAN',
        :'restrict_project_default_department_flag' => :'BOOLEAN',
        :'excluded_project_board_ids' => :'Array<Integer>',
        :'schedule_default_location' => :'SystemLocationReference',
        :'schedule_default_department' => :'SystemDepartmentReference',
        :'schedule_capacity' => :'Float',
        :'service_location' => :'ServiceLocationReference',
        :'restrict_schedule_flag' => :'BOOLEAN',
        :'hide_member_in_dispatch_portal_flag' => :'BOOLEAN',
        :'calendar' => :'CalendarReference',
        :'sales_default_location' => :'SystemLocationReference',
        :'restrict_default_sales_territory_flag' => :'BOOLEAN',
        :'warehouse' => :'WarehouseReference',
        :'warehouse_bin' => :'WarehouseBinReference',
        :'restrict_default_warehouse_flag' => :'BOOLEAN',
        :'restrict_default_warehouse_bin_flag' => :'BOOLEAN',
        :'mapi_name' => :'String',
        :'calendar_sync_integration_flag' => :'BOOLEAN',
        :'enable_ldap_authentication_flag' => :'BOOLEAN',
        :'ldap_configuration' => :'LdapConfigurationReference',
        :'ldap_user_name' => :'String',
        :'company_activity_tab_format' => :'String',
        :'invoice_time_tab_format' => :'String',
        :'invoice_screen_default_tab_format' => :'String',
        :'invoicing_display_options' => :'String',
        :'agreement_invoicing_display_options' => :'String',
        :'corelytics_username' => :'String',
        :'corelytics_password' => :'String',
        :'remote_package' => :'String',
        :'remote_package_platform' => :'String',
        :'remote_package_user_name' => :'String',
        :'remote_package_password' => :'String',
        :'remote_package_account' => :'String',
        :'authentication_service_type' => :'String',
        :'timebased_one_time_password_activated' => :'BOOLEAN',
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

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'middleInitial')
        self.middle_initial = attributes[:'middleInitial']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'reportCard')
        self.report_card = attributes[:'reportCard']
      end

      if attributes.has_key?(:'licenseClass')
        self.license_class = attributes[:'licenseClass']
      end

      if attributes.has_key?(:'disableOnlineFlag')
        self.disable_online_flag = attributes[:'disableOnlineFlag']
      end

      if attributes.has_key?(:'enableMobileFlag')
        self.enable_mobile_flag = attributes[:'enableMobileFlag']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'employeeIdentifer')
        self.employee_identifer = attributes[:'employeeIdentifer']
      end

      if attributes.has_key?(:'vendorNumber')
        self.vendor_number = attributes[:'vendorNumber']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'serviceBoardTeamIds')
        if (value = attributes[:'serviceBoardTeamIds']).is_a?(Array)
          self.service_board_team_ids = value
        end
      end

      if attributes.has_key?(:'enableMobileGpsFlag')
        self.enable_mobile_gps_flag = attributes[:'enableMobileGpsFlag']
      end

      if attributes.has_key?(:'inactiveDate')
        self.inactive_date = attributes[:'inactiveDate']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'lastLogin')
        self.last_login = attributes[:'lastLogin']
      end

      if attributes.has_key?(:'photo')
        self.photo = attributes[:'photo']
      end

      if attributes.has_key?(:'officeEmail')
        self.office_email = attributes[:'officeEmail']
      end

      if attributes.has_key?(:'officePhone')
        self.office_phone = attributes[:'officePhone']
      end

      if attributes.has_key?(:'officeExtension')
        self.office_extension = attributes[:'officeExtension']
      end

      if attributes.has_key?(:'mobileEmail')
        self.mobile_email = attributes[:'mobileEmail']
      end

      if attributes.has_key?(:'mobilePhone')
        self.mobile_phone = attributes[:'mobilePhone']
      end

      if attributes.has_key?(:'mobileExtension')
        self.mobile_extension = attributes[:'mobileExtension']
      end

      if attributes.has_key?(:'homeEmail')
        self.home_email = attributes[:'homeEmail']
      end

      if attributes.has_key?(:'homePhone')
        self.home_phone = attributes[:'homePhone']
      end

      if attributes.has_key?(:'homeExtension')
        self.home_extension = attributes[:'homeExtension']
      end

      if attributes.has_key?(:'defaultEmail')
        self.default_email = attributes[:'defaultEmail']
      end

      if attributes.has_key?(:'defaultPhone')
        self.default_phone = attributes[:'defaultPhone']
      end

      if attributes.has_key?(:'securityRole')
        self.security_role = attributes[:'securityRole']
      end

      if attributes.has_key?(:'adminFlag')
        self.admin_flag = attributes[:'adminFlag']
      end

      if attributes.has_key?(:'structureLevel')
        self.structure_level = attributes[:'structureLevel']
      end

      if attributes.has_key?(:'securityLocation')
        self.security_location = attributes[:'securityLocation']
      end

      if attributes.has_key?(:'defaultLocation')
        self.default_location = attributes[:'defaultLocation']
      end

      if attributes.has_key?(:'defaultDepartment')
        self.default_department = attributes[:'defaultDepartment']
      end

      if attributes.has_key?(:'reportsTo')
        self.reports_to = attributes[:'reportsTo']
      end

      if attributes.has_key?(:'restrictLocationFlag')
        self.restrict_location_flag = attributes[:'restrictLocationFlag']
      end

      if attributes.has_key?(:'restrictDepartmentFlag')
        self.restrict_department_flag = attributes[:'restrictDepartmentFlag']
      end

      if attributes.has_key?(:'workRole')
        self.work_role = attributes[:'workRole']
      end

      if attributes.has_key?(:'workType')
        self.work_type = attributes[:'workType']
      end

      if attributes.has_key?(:'timeApprover')
        self.time_approver = attributes[:'timeApprover']
      end

      if attributes.has_key?(:'expenseApprover')
        self.expense_approver = attributes[:'expenseApprover']
      end

      if attributes.has_key?(:'billableForecast')
        self.billable_forecast = attributes[:'billableForecast']
      end

      if attributes.has_key?(:'dailyCapacity')
        self.daily_capacity = attributes[:'dailyCapacity']
      end

      if attributes.has_key?(:'hourlyCost')
        self.hourly_cost = attributes[:'hourlyCost']
      end

      if attributes.has_key?(:'hourlyRate')
        self.hourly_rate = attributes[:'hourlyRate']
      end

      if attributes.has_key?(:'includeInUtilizationReportingFlag')
        self.include_in_utilization_reporting_flag = attributes[:'includeInUtilizationReportingFlag']
      end

      if attributes.has_key?(:'requireExpenseEntryFlag')
        self.require_expense_entry_flag = attributes[:'requireExpenseEntryFlag']
      end

      if attributes.has_key?(:'requireTimeSheetEntryFlag')
        self.require_time_sheet_entry_flag = attributes[:'requireTimeSheetEntryFlag']
      end

      if attributes.has_key?(:'requireStartAndEndTimeOnTimeEntryFlag')
        self.require_start_and_end_time_on_time_entry_flag = attributes[:'requireStartAndEndTimeOnTimeEntryFlag']
      end

      if attributes.has_key?(:'allowInCellEntryOnTimeSheet')
        self.allow_in_cell_entry_on_time_sheet = attributes[:'allowInCellEntryOnTimeSheet']
      end

      if attributes.has_key?(:'enterTimeAgainstCompanyFlag')
        self.enter_time_against_company_flag = attributes[:'enterTimeAgainstCompanyFlag']
      end

      if attributes.has_key?(:'allowExpensesEnteredAgainstCompaniesFlag')
        self.allow_expenses_entered_against_companies_flag = attributes[:'allowExpensesEnteredAgainstCompaniesFlag']
      end

      if attributes.has_key?(:'timeReminderEmailFlag')
        self.time_reminder_email_flag = attributes[:'timeReminderEmailFlag']
      end

      if attributes.has_key?(:'daysTolerance')
        self.days_tolerance = attributes[:'daysTolerance']
      end

      if attributes.has_key?(:'minimumHours')
        self.minimum_hours = attributes[:'minimumHours']
      end

      if attributes.has_key?(:'timeSheetStartDate')
        self.time_sheet_start_date = attributes[:'timeSheetStartDate']
      end

      if attributes.has_key?(:'hireDate')
        self.hire_date = attributes[:'hireDate']
      end

      if attributes.has_key?(:'serviceDefaultLocation')
        self.service_default_location = attributes[:'serviceDefaultLocation']
      end

      if attributes.has_key?(:'serviceDefaultDepartment')
        self.service_default_department = attributes[:'serviceDefaultDepartment']
      end

      if attributes.has_key?(:'serviceDefaultBoard')
        self.service_default_board = attributes[:'serviceDefaultBoard']
      end

      if attributes.has_key?(:'restrictServiceDefaultLocationFlag')
        self.restrict_service_default_location_flag = attributes[:'restrictServiceDefaultLocationFlag']
      end

      if attributes.has_key?(:'restrictServiceDefaultDepartmentFlag')
        self.restrict_service_default_department_flag = attributes[:'restrictServiceDefaultDepartmentFlag']
      end

      if attributes.has_key?(:'excludedServiceBoardIds')
        if (value = attributes[:'excludedServiceBoardIds']).is_a?(Array)
          self.excluded_service_board_ids = value
        end
      end

      if attributes.has_key?(:'projectDefaultLocation')
        self.project_default_location = attributes[:'projectDefaultLocation']
      end

      if attributes.has_key?(:'projectDefaultDepartment')
        self.project_default_department = attributes[:'projectDefaultDepartment']
      end

      if attributes.has_key?(:'projectDefaultBoard')
        self.project_default_board = attributes[:'projectDefaultBoard']
      end

      if attributes.has_key?(:'restrictProjectDefaultLocationFlag')
        self.restrict_project_default_location_flag = attributes[:'restrictProjectDefaultLocationFlag']
      end

      if attributes.has_key?(:'restrictProjectDefaultDepartmentFlag')
        self.restrict_project_default_department_flag = attributes[:'restrictProjectDefaultDepartmentFlag']
      end

      if attributes.has_key?(:'excludedProjectBoardIds')
        if (value = attributes[:'excludedProjectBoardIds']).is_a?(Array)
          self.excluded_project_board_ids = value
        end
      end

      if attributes.has_key?(:'scheduleDefaultLocation')
        self.schedule_default_location = attributes[:'scheduleDefaultLocation']
      end

      if attributes.has_key?(:'scheduleDefaultDepartment')
        self.schedule_default_department = attributes[:'scheduleDefaultDepartment']
      end

      if attributes.has_key?(:'scheduleCapacity')
        self.schedule_capacity = attributes[:'scheduleCapacity']
      end

      if attributes.has_key?(:'serviceLocation')
        self.service_location = attributes[:'serviceLocation']
      end

      if attributes.has_key?(:'restrictScheduleFlag')
        self.restrict_schedule_flag = attributes[:'restrictScheduleFlag']
      end

      if attributes.has_key?(:'hideMemberInDispatchPortalFlag')
        self.hide_member_in_dispatch_portal_flag = attributes[:'hideMemberInDispatchPortalFlag']
      end

      if attributes.has_key?(:'calendar')
        self.calendar = attributes[:'calendar']
      end

      if attributes.has_key?(:'salesDefaultLocation')
        self.sales_default_location = attributes[:'salesDefaultLocation']
      end

      if attributes.has_key?(:'restrictDefaultSalesTerritoryFlag')
        self.restrict_default_sales_territory_flag = attributes[:'restrictDefaultSalesTerritoryFlag']
      end

      if attributes.has_key?(:'warehouse')
        self.warehouse = attributes[:'warehouse']
      end

      if attributes.has_key?(:'warehouseBin')
        self.warehouse_bin = attributes[:'warehouseBin']
      end

      if attributes.has_key?(:'restrictDefaultWarehouseFlag')
        self.restrict_default_warehouse_flag = attributes[:'restrictDefaultWarehouseFlag']
      end

      if attributes.has_key?(:'restrictDefaultWarehouseBinFlag')
        self.restrict_default_warehouse_bin_flag = attributes[:'restrictDefaultWarehouseBinFlag']
      end

      if attributes.has_key?(:'mapiName')
        self.mapi_name = attributes[:'mapiName']
      end

      if attributes.has_key?(:'calendarSyncIntegrationFlag')
        self.calendar_sync_integration_flag = attributes[:'calendarSyncIntegrationFlag']
      end

      if attributes.has_key?(:'enableLdapAuthenticationFlag')
        self.enable_ldap_authentication_flag = attributes[:'enableLdapAuthenticationFlag']
      end

      if attributes.has_key?(:'ldapConfiguration')
        self.ldap_configuration = attributes[:'ldapConfiguration']
      end

      if attributes.has_key?(:'ldapUserName')
        self.ldap_user_name = attributes[:'ldapUserName']
      end

      if attributes.has_key?(:'companyActivityTabFormat')
        self.company_activity_tab_format = attributes[:'companyActivityTabFormat']
      end

      if attributes.has_key?(:'invoiceTimeTabFormat')
        self.invoice_time_tab_format = attributes[:'invoiceTimeTabFormat']
      end

      if attributes.has_key?(:'invoiceScreenDefaultTabFormat')
        self.invoice_screen_default_tab_format = attributes[:'invoiceScreenDefaultTabFormat']
      end

      if attributes.has_key?(:'invoicingDisplayOptions')
        self.invoicing_display_options = attributes[:'invoicingDisplayOptions']
      end

      if attributes.has_key?(:'agreementInvoicingDisplayOptions')
        self.agreement_invoicing_display_options = attributes[:'agreementInvoicingDisplayOptions']
      end

      if attributes.has_key?(:'corelyticsUsername')
        self.corelytics_username = attributes[:'corelyticsUsername']
      end

      if attributes.has_key?(:'corelyticsPassword')
        self.corelytics_password = attributes[:'corelyticsPassword']
      end

      if attributes.has_key?(:'remotePackage')
        self.remote_package = attributes[:'remotePackage']
      end

      if attributes.has_key?(:'remotePackagePlatform')
        self.remote_package_platform = attributes[:'remotePackagePlatform']
      end

      if attributes.has_key?(:'remotePackageUserName')
        self.remote_package_user_name = attributes[:'remotePackageUserName']
      end

      if attributes.has_key?(:'remotePackagePassword')
        self.remote_package_password = attributes[:'remotePackagePassword']
      end

      if attributes.has_key?(:'remotePackageAccount')
        self.remote_package_account = attributes[:'remotePackageAccount']
      end

      if attributes.has_key?(:'authenticationServiceType')
        self.authentication_service_type = attributes[:'authenticationServiceType']
      end

      if attributes.has_key?(:'timebasedOneTimePasswordActivated')
        self.timebased_one_time_password_activated = attributes[:'timebasedOneTimePasswordActivated']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @identifier.nil?
        invalid_properties.push("invalid value for 'identifier', identifier cannot be nil.")
      end

      if @identifier.to_s.length > 15
        invalid_properties.push("invalid value for 'identifier', the character length must be smaller than or equal to 15.")
      end

      if !@password.nil? && @password.to_s.length > 60
        invalid_properties.push("invalid value for 'password', the character length must be smaller than or equal to 60.")
      end

      if @first_name.nil?
        invalid_properties.push("invalid value for 'first_name', first_name cannot be nil.")
      end

      if @first_name.to_s.length > 30
        invalid_properties.push("invalid value for 'first_name', the character length must be smaller than or equal to 30.")
      end

      if @last_name.nil?
        invalid_properties.push("invalid value for 'last_name', last_name cannot be nil.")
      end

      if @last_name.to_s.length > 30
        invalid_properties.push("invalid value for 'last_name', the character length must be smaller than or equal to 30.")
      end

      if !@title.nil? && @title.to_s.length > 50
        invalid_properties.push("invalid value for 'title', the character length must be smaller than or equal to 50.")
      end

      if @license_class.nil?
        invalid_properties.push("invalid value for 'license_class', license_class cannot be nil.")
      end

      if !@employee_identifer.nil? && @employee_identifer.to_s.length > 10
        invalid_properties.push("invalid value for 'employee_identifer', the character length must be smaller than or equal to 10.")
      end

      if @time_zone.nil?
        invalid_properties.push("invalid value for 'time_zone', time_zone cannot be nil.")
      end

      if !@office_email.nil? && @office_email.to_s.length > 250
        invalid_properties.push("invalid value for 'office_email', the character length must be smaller than or equal to 250.")
      end

      if !@office_phone.nil? && @office_phone.to_s.length > 15
        invalid_properties.push("invalid value for 'office_phone', the character length must be smaller than or equal to 15.")
      end

      if !@office_extension.nil? && @office_extension.to_s.length > 10
        invalid_properties.push("invalid value for 'office_extension', the character length must be smaller than or equal to 10.")
      end

      if !@mobile_email.nil? && @mobile_email.to_s.length > 250
        invalid_properties.push("invalid value for 'mobile_email', the character length must be smaller than or equal to 250.")
      end

      if !@mobile_phone.nil? && @mobile_phone.to_s.length > 15
        invalid_properties.push("invalid value for 'mobile_phone', the character length must be smaller than or equal to 15.")
      end

      if !@mobile_extension.nil? && @mobile_extension.to_s.length > 10
        invalid_properties.push("invalid value for 'mobile_extension', the character length must be smaller than or equal to 10.")
      end

      if !@home_email.nil? && @home_email.to_s.length > 250
        invalid_properties.push("invalid value for 'home_email', the character length must be smaller than or equal to 250.")
      end

      if !@home_phone.nil? && @home_phone.to_s.length > 15
        invalid_properties.push("invalid value for 'home_phone', the character length must be smaller than or equal to 15.")
      end

      if !@home_extension.nil? && @home_extension.to_s.length > 10
        invalid_properties.push("invalid value for 'home_extension', the character length must be smaller than or equal to 10.")
      end

      if @default_email.nil?
        invalid_properties.push("invalid value for 'default_email', default_email cannot be nil.")
      end

      if @default_phone.nil?
        invalid_properties.push("invalid value for 'default_phone', default_phone cannot be nil.")
      end

      if @security_role.nil?
        invalid_properties.push("invalid value for 'security_role', security_role cannot be nil.")
      end

      if @structure_level.nil?
        invalid_properties.push("invalid value for 'structure_level', structure_level cannot be nil.")
      end

      if @security_location.nil?
        invalid_properties.push("invalid value for 'security_location', security_location cannot be nil.")
      end

      if @default_location.nil?
        invalid_properties.push("invalid value for 'default_location', default_location cannot be nil.")
      end

      if @default_department.nil?
        invalid_properties.push("invalid value for 'default_department', default_department cannot be nil.")
      end

      if @work_role.nil?
        invalid_properties.push("invalid value for 'work_role', work_role cannot be nil.")
      end

      if @time_approver.nil?
        invalid_properties.push("invalid value for 'time_approver', time_approver cannot be nil.")
      end

      if @expense_approver.nil?
        invalid_properties.push("invalid value for 'expense_approver', expense_approver cannot be nil.")
      end

      if @hire_date.nil?
        invalid_properties.push("invalid value for 'hire_date', hire_date cannot be nil.")
      end

      if @sales_default_location.nil?
        invalid_properties.push("invalid value for 'sales_default_location', sales_default_location cannot be nil.")
      end

      if !@ldap_user_name.nil? && @ldap_user_name.to_s.length > 50
        invalid_properties.push("invalid value for 'ldap_user_name', the character length must be smaller than or equal to 50.")
      end

      if @company_activity_tab_format.nil?
        invalid_properties.push("invalid value for 'company_activity_tab_format', company_activity_tab_format cannot be nil.")
      end

      if @invoice_time_tab_format.nil?
        invalid_properties.push("invalid value for 'invoice_time_tab_format', invoice_time_tab_format cannot be nil.")
      end

      if @invoice_screen_default_tab_format.nil?
        invalid_properties.push("invalid value for 'invoice_screen_default_tab_format', invoice_screen_default_tab_format cannot be nil.")
      end

      if @invoicing_display_options.nil?
        invalid_properties.push("invalid value for 'invoicing_display_options', invoicing_display_options cannot be nil.")
      end

      if @agreement_invoicing_display_options.nil?
        invalid_properties.push("invalid value for 'agreement_invoicing_display_options', agreement_invoicing_display_options cannot be nil.")
      end

      if !@corelytics_username.nil? && @corelytics_username.to_s.length > 50
        invalid_properties.push("invalid value for 'corelytics_username', the character length must be smaller than or equal to 50.")
      end

      if !@corelytics_password.nil? && @corelytics_password.to_s.length > 50
        invalid_properties.push("invalid value for 'corelytics_password', the character length must be smaller than or equal to 50.")
      end

      if !@remote_package_platform.nil? && @remote_package_platform.to_s.length > 250
        invalid_properties.push("invalid value for 'remote_package_platform', the character length must be smaller than or equal to 250.")
      end

      if !@remote_package_user_name.nil? && @remote_package_user_name.to_s.length > 50
        invalid_properties.push("invalid value for 'remote_package_user_name', the character length must be smaller than or equal to 50.")
      end

      if !@remote_package_password.nil? && @remote_package_password.to_s.length > 50
        invalid_properties.push("invalid value for 'remote_package_password', the character length must be smaller than or equal to 50.")
      end

      if !@remote_package_account.nil? && @remote_package_account.to_s.length > 250
        invalid_properties.push("invalid value for 'remote_package_account', the character length must be smaller than or equal to 250.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @identifier.nil?
      return false if @identifier.to_s.length > 15
      return false if !@password.nil? && @password.to_s.length > 60
      return false if @first_name.nil?
      return false if @first_name.to_s.length > 30
      return false if @last_name.nil?
      return false if @last_name.to_s.length > 30
      return false if !@title.nil? && @title.to_s.length > 50
      return false if @license_class.nil?
      license_class_validator = EnumAttributeValidator.new('String', ["F", "A", "C", "X"])
      return false unless license_class_validator.valid?(@license_class)
      return false if !@employee_identifer.nil? && @employee_identifer.to_s.length > 10
      return false if @time_zone.nil?
      return false if !@office_email.nil? && @office_email.to_s.length > 250
      return false if !@office_phone.nil? && @office_phone.to_s.length > 15
      return false if !@office_extension.nil? && @office_extension.to_s.length > 10
      return false if !@mobile_email.nil? && @mobile_email.to_s.length > 250
      return false if !@mobile_phone.nil? && @mobile_phone.to_s.length > 15
      return false if !@mobile_extension.nil? && @mobile_extension.to_s.length > 10
      return false if !@home_email.nil? && @home_email.to_s.length > 250
      return false if !@home_phone.nil? && @home_phone.to_s.length > 15
      return false if !@home_extension.nil? && @home_extension.to_s.length > 10
      return false if @default_email.nil?
      default_email_validator = EnumAttributeValidator.new('String', ["Office", "Mobile", "Home"])
      return false unless default_email_validator.valid?(@default_email)
      return false if @default_phone.nil?
      default_phone_validator = EnumAttributeValidator.new('String', ["Office", "Mobile", "Home"])
      return false unless default_phone_validator.valid?(@default_phone)
      return false if @security_role.nil?
      return false if @structure_level.nil?
      return false if @security_location.nil?
      return false if @default_location.nil?
      return false if @default_department.nil?
      return false if @work_role.nil?
      return false if @time_approver.nil?
      return false if @expense_approver.nil?
      return false if @hire_date.nil?
      return false if @sales_default_location.nil?
      return false if !@ldap_user_name.nil? && @ldap_user_name.to_s.length > 50
      return false if @company_activity_tab_format.nil?
      company_activity_tab_format_validator = EnumAttributeValidator.new('String', ["SummaryList", "DetailList"])
      return false unless company_activity_tab_format_validator.valid?(@company_activity_tab_format)
      return false if @invoice_time_tab_format.nil?
      invoice_time_tab_format_validator = EnumAttributeValidator.new('String', ["SummaryList", "DetailList"])
      return false unless invoice_time_tab_format_validator.valid?(@invoice_time_tab_format)
      return false if @invoice_screen_default_tab_format.nil?
      invoice_screen_default_tab_format_validator = EnumAttributeValidator.new('String', ["ShowInvoicingTab", "ShowAgreementInvoicingTab"])
      return false unless invoice_screen_default_tab_format_validator.valid?(@invoice_screen_default_tab_format)
      return false if @invoicing_display_options.nil?
      invoicing_display_options_validator = EnumAttributeValidator.new('String', ["RemainOnInvoicingScreen", "ShowRecentInvoices"])
      return false unless invoicing_display_options_validator.valid?(@invoicing_display_options)
      return false if @agreement_invoicing_display_options.nil?
      agreement_invoicing_display_options_validator = EnumAttributeValidator.new('String', ["RemainOnInvoicingScreen", "ShowRecentInvoices"])
      return false unless agreement_invoicing_display_options_validator.valid?(@agreement_invoicing_display_options)
      return false if !@corelytics_username.nil? && @corelytics_username.to_s.length > 50
      return false if !@corelytics_password.nil? && @corelytics_password.to_s.length > 50
      remote_package_validator = EnumAttributeValidator.new('String', ["LogMeIn", "NTR"])
      return false unless remote_package_validator.valid?(@remote_package)
      return false if !@remote_package_platform.nil? && @remote_package_platform.to_s.length > 250
      return false if !@remote_package_user_name.nil? && @remote_package_user_name.to_s.length > 50
      return false if !@remote_package_password.nil? && @remote_package_password.to_s.length > 50
      return false if !@remote_package_account.nil? && @remote_package_account.to_s.length > 250
      authentication_service_type_validator = EnumAttributeValidator.new('String', ["AuthAnvil", "GoogleAuthenticator"])
      return false unless authentication_service_type_validator.valid?(@authentication_service_type)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if identifier.nil?
        fail ArgumentError, "identifier cannot be nil"
      end

      if identifier.to_s.length > 15
        fail ArgumentError, "invalid value for 'identifier', the character length must be smaller than or equal to 15."
      end

      @identifier = identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)

      if !password.nil? && password.to_s.length > 60
        fail ArgumentError, "invalid value for 'password', the character length must be smaller than or equal to 60."
      end

      @password = password
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, "first_name cannot be nil"
      end

      if first_name.to_s.length > 30
        fail ArgumentError, "invalid value for 'first_name', the character length must be smaller than or equal to 30."
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, "last_name cannot be nil"
      end

      if last_name.to_s.length > 30
        fail ArgumentError, "invalid value for 'last_name', the character length must be smaller than or equal to 30."
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)

      if !title.nil? && title.to_s.length > 50
        fail ArgumentError, "invalid value for 'title', the character length must be smaller than or equal to 50."
      end

      @title = title
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] license_class Object to be assigned
    def license_class=(license_class)
      validator = EnumAttributeValidator.new('String', ["F", "A", "C", "X"])
      unless validator.valid?(license_class)
        fail ArgumentError, "invalid value for 'license_class', must be one of #{validator.allowable_values}."
      end
      @license_class = license_class
    end

    # Custom attribute writer method with validation
    # @param [Object] employee_identifer Value to be assigned
    def employee_identifer=(employee_identifer)

      if !employee_identifer.nil? && employee_identifer.to_s.length > 10
        fail ArgumentError, "invalid value for 'employee_identifer', the character length must be smaller than or equal to 10."
      end

      @employee_identifer = employee_identifer
    end

    # Custom attribute writer method with validation
    # @param [Object] office_email Value to be assigned
    def office_email=(office_email)

      if !office_email.nil? && office_email.to_s.length > 250
        fail ArgumentError, "invalid value for 'office_email', the character length must be smaller than or equal to 250."
      end

      @office_email = office_email
    end

    # Custom attribute writer method with validation
    # @param [Object] office_phone Value to be assigned
    def office_phone=(office_phone)

      if !office_phone.nil? && office_phone.to_s.length > 15
        fail ArgumentError, "invalid value for 'office_phone', the character length must be smaller than or equal to 15."
      end

      @office_phone = office_phone
    end

    # Custom attribute writer method with validation
    # @param [Object] office_extension Value to be assigned
    def office_extension=(office_extension)

      if !office_extension.nil? && office_extension.to_s.length > 10
        fail ArgumentError, "invalid value for 'office_extension', the character length must be smaller than or equal to 10."
      end

      @office_extension = office_extension
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_email Value to be assigned
    def mobile_email=(mobile_email)

      if !mobile_email.nil? && mobile_email.to_s.length > 250
        fail ArgumentError, "invalid value for 'mobile_email', the character length must be smaller than or equal to 250."
      end

      @mobile_email = mobile_email
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_phone Value to be assigned
    def mobile_phone=(mobile_phone)

      if !mobile_phone.nil? && mobile_phone.to_s.length > 15
        fail ArgumentError, "invalid value for 'mobile_phone', the character length must be smaller than or equal to 15."
      end

      @mobile_phone = mobile_phone
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_extension Value to be assigned
    def mobile_extension=(mobile_extension)

      if !mobile_extension.nil? && mobile_extension.to_s.length > 10
        fail ArgumentError, "invalid value for 'mobile_extension', the character length must be smaller than or equal to 10."
      end

      @mobile_extension = mobile_extension
    end

    # Custom attribute writer method with validation
    # @param [Object] home_email Value to be assigned
    def home_email=(home_email)

      if !home_email.nil? && home_email.to_s.length > 250
        fail ArgumentError, "invalid value for 'home_email', the character length must be smaller than or equal to 250."
      end

      @home_email = home_email
    end

    # Custom attribute writer method with validation
    # @param [Object] home_phone Value to be assigned
    def home_phone=(home_phone)

      if !home_phone.nil? && home_phone.to_s.length > 15
        fail ArgumentError, "invalid value for 'home_phone', the character length must be smaller than or equal to 15."
      end

      @home_phone = home_phone
    end

    # Custom attribute writer method with validation
    # @param [Object] home_extension Value to be assigned
    def home_extension=(home_extension)

      if !home_extension.nil? && home_extension.to_s.length > 10
        fail ArgumentError, "invalid value for 'home_extension', the character length must be smaller than or equal to 10."
      end

      @home_extension = home_extension
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_email Object to be assigned
    def default_email=(default_email)
      validator = EnumAttributeValidator.new('String', ["Office", "Mobile", "Home"])
      unless validator.valid?(default_email)
        fail ArgumentError, "invalid value for 'default_email', must be one of #{validator.allowable_values}."
      end
      @default_email = default_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_phone Object to be assigned
    def default_phone=(default_phone)
      validator = EnumAttributeValidator.new('String', ["Office", "Mobile", "Home"])
      unless validator.valid?(default_phone)
        fail ArgumentError, "invalid value for 'default_phone', must be one of #{validator.allowable_values}."
      end
      @default_phone = default_phone
    end

    # Custom attribute writer method with validation
    # @param [Object] ldap_user_name Value to be assigned
    def ldap_user_name=(ldap_user_name)

      if !ldap_user_name.nil? && ldap_user_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'ldap_user_name', the character length must be smaller than or equal to 50."
      end

      @ldap_user_name = ldap_user_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company_activity_tab_format Object to be assigned
    def company_activity_tab_format=(company_activity_tab_format)
      validator = EnumAttributeValidator.new('String', ["SummaryList", "DetailList"])
      unless validator.valid?(company_activity_tab_format)
        fail ArgumentError, "invalid value for 'company_activity_tab_format', must be one of #{validator.allowable_values}."
      end
      @company_activity_tab_format = company_activity_tab_format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_time_tab_format Object to be assigned
    def invoice_time_tab_format=(invoice_time_tab_format)
      validator = EnumAttributeValidator.new('String', ["SummaryList", "DetailList"])
      unless validator.valid?(invoice_time_tab_format)
        fail ArgumentError, "invalid value for 'invoice_time_tab_format', must be one of #{validator.allowable_values}."
      end
      @invoice_time_tab_format = invoice_time_tab_format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_screen_default_tab_format Object to be assigned
    def invoice_screen_default_tab_format=(invoice_screen_default_tab_format)
      validator = EnumAttributeValidator.new('String', ["ShowInvoicingTab", "ShowAgreementInvoicingTab"])
      unless validator.valid?(invoice_screen_default_tab_format)
        fail ArgumentError, "invalid value for 'invoice_screen_default_tab_format', must be one of #{validator.allowable_values}."
      end
      @invoice_screen_default_tab_format = invoice_screen_default_tab_format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoicing_display_options Object to be assigned
    def invoicing_display_options=(invoicing_display_options)
      validator = EnumAttributeValidator.new('String', ["RemainOnInvoicingScreen", "ShowRecentInvoices"])
      unless validator.valid?(invoicing_display_options)
        fail ArgumentError, "invalid value for 'invoicing_display_options', must be one of #{validator.allowable_values}."
      end
      @invoicing_display_options = invoicing_display_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] agreement_invoicing_display_options Object to be assigned
    def agreement_invoicing_display_options=(agreement_invoicing_display_options)
      validator = EnumAttributeValidator.new('String', ["RemainOnInvoicingScreen", "ShowRecentInvoices"])
      unless validator.valid?(agreement_invoicing_display_options)
        fail ArgumentError, "invalid value for 'agreement_invoicing_display_options', must be one of #{validator.allowable_values}."
      end
      @agreement_invoicing_display_options = agreement_invoicing_display_options
    end

    # Custom attribute writer method with validation
    # @param [Object] corelytics_username Value to be assigned
    def corelytics_username=(corelytics_username)

      if !corelytics_username.nil? && corelytics_username.to_s.length > 50
        fail ArgumentError, "invalid value for 'corelytics_username', the character length must be smaller than or equal to 50."
      end

      @corelytics_username = corelytics_username
    end

    # Custom attribute writer method with validation
    # @param [Object] corelytics_password Value to be assigned
    def corelytics_password=(corelytics_password)

      if !corelytics_password.nil? && corelytics_password.to_s.length > 50
        fail ArgumentError, "invalid value for 'corelytics_password', the character length must be smaller than or equal to 50."
      end

      @corelytics_password = corelytics_password
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] remote_package Object to be assigned
    def remote_package=(remote_package)
      validator = EnumAttributeValidator.new('String', ["LogMeIn", "NTR"])
      unless validator.valid?(remote_package)
        fail ArgumentError, "invalid value for 'remote_package', must be one of #{validator.allowable_values}."
      end
      @remote_package = remote_package
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_package_platform Value to be assigned
    def remote_package_platform=(remote_package_platform)

      if !remote_package_platform.nil? && remote_package_platform.to_s.length > 250
        fail ArgumentError, "invalid value for 'remote_package_platform', the character length must be smaller than or equal to 250."
      end

      @remote_package_platform = remote_package_platform
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_package_user_name Value to be assigned
    def remote_package_user_name=(remote_package_user_name)

      if !remote_package_user_name.nil? && remote_package_user_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'remote_package_user_name', the character length must be smaller than or equal to 50."
      end

      @remote_package_user_name = remote_package_user_name
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_package_password Value to be assigned
    def remote_package_password=(remote_package_password)

      if !remote_package_password.nil? && remote_package_password.to_s.length > 50
        fail ArgumentError, "invalid value for 'remote_package_password', the character length must be smaller than or equal to 50."
      end

      @remote_package_password = remote_package_password
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_package_account Value to be assigned
    def remote_package_account=(remote_package_account)

      if !remote_package_account.nil? && remote_package_account.to_s.length > 250
        fail ArgumentError, "invalid value for 'remote_package_account', the character length must be smaller than or equal to 250."
      end

      @remote_package_account = remote_package_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication_service_type Object to be assigned
    def authentication_service_type=(authentication_service_type)
      validator = EnumAttributeValidator.new('String', ["AuthAnvil", "GoogleAuthenticator"])
      unless validator.valid?(authentication_service_type)
        fail ArgumentError, "invalid value for 'authentication_service_type', must be one of #{validator.allowable_values}."
      end
      @authentication_service_type = authentication_service_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          identifier == o.identifier &&
          password == o.password &&
          first_name == o.first_name &&
          middle_initial == o.middle_initial &&
          last_name == o.last_name &&
          title == o.title &&
          report_card == o.report_card &&
          license_class == o.license_class &&
          disable_online_flag == o.disable_online_flag &&
          enable_mobile_flag == o.enable_mobile_flag &&
          type == o.type &&
          employee_identifer == o.employee_identifer &&
          vendor_number == o.vendor_number &&
          notes == o.notes &&
          time_zone == o.time_zone &&
          country == o.country &&
          service_board_team_ids == o.service_board_team_ids &&
          enable_mobile_gps_flag == o.enable_mobile_gps_flag &&
          inactive_date == o.inactive_date &&
          inactive_flag == o.inactive_flag &&
          last_login == o.last_login &&
          photo == o.photo &&
          office_email == o.office_email &&
          office_phone == o.office_phone &&
          office_extension == o.office_extension &&
          mobile_email == o.mobile_email &&
          mobile_phone == o.mobile_phone &&
          mobile_extension == o.mobile_extension &&
          home_email == o.home_email &&
          home_phone == o.home_phone &&
          home_extension == o.home_extension &&
          default_email == o.default_email &&
          default_phone == o.default_phone &&
          security_role == o.security_role &&
          admin_flag == o.admin_flag &&
          structure_level == o.structure_level &&
          security_location == o.security_location &&
          default_location == o.default_location &&
          default_department == o.default_department &&
          reports_to == o.reports_to &&
          restrict_location_flag == o.restrict_location_flag &&
          restrict_department_flag == o.restrict_department_flag &&
          work_role == o.work_role &&
          work_type == o.work_type &&
          time_approver == o.time_approver &&
          expense_approver == o.expense_approver &&
          billable_forecast == o.billable_forecast &&
          daily_capacity == o.daily_capacity &&
          hourly_cost == o.hourly_cost &&
          hourly_rate == o.hourly_rate &&
          include_in_utilization_reporting_flag == o.include_in_utilization_reporting_flag &&
          require_expense_entry_flag == o.require_expense_entry_flag &&
          require_time_sheet_entry_flag == o.require_time_sheet_entry_flag &&
          require_start_and_end_time_on_time_entry_flag == o.require_start_and_end_time_on_time_entry_flag &&
          allow_in_cell_entry_on_time_sheet == o.allow_in_cell_entry_on_time_sheet &&
          enter_time_against_company_flag == o.enter_time_against_company_flag &&
          allow_expenses_entered_against_companies_flag == o.allow_expenses_entered_against_companies_flag &&
          time_reminder_email_flag == o.time_reminder_email_flag &&
          days_tolerance == o.days_tolerance &&
          minimum_hours == o.minimum_hours &&
          time_sheet_start_date == o.time_sheet_start_date &&
          hire_date == o.hire_date &&
          service_default_location == o.service_default_location &&
          service_default_department == o.service_default_department &&
          service_default_board == o.service_default_board &&
          restrict_service_default_location_flag == o.restrict_service_default_location_flag &&
          restrict_service_default_department_flag == o.restrict_service_default_department_flag &&
          excluded_service_board_ids == o.excluded_service_board_ids &&
          project_default_location == o.project_default_location &&
          project_default_department == o.project_default_department &&
          project_default_board == o.project_default_board &&
          restrict_project_default_location_flag == o.restrict_project_default_location_flag &&
          restrict_project_default_department_flag == o.restrict_project_default_department_flag &&
          excluded_project_board_ids == o.excluded_project_board_ids &&
          schedule_default_location == o.schedule_default_location &&
          schedule_default_department == o.schedule_default_department &&
          schedule_capacity == o.schedule_capacity &&
          service_location == o.service_location &&
          restrict_schedule_flag == o.restrict_schedule_flag &&
          hide_member_in_dispatch_portal_flag == o.hide_member_in_dispatch_portal_flag &&
          calendar == o.calendar &&
          sales_default_location == o.sales_default_location &&
          restrict_default_sales_territory_flag == o.restrict_default_sales_territory_flag &&
          warehouse == o.warehouse &&
          warehouse_bin == o.warehouse_bin &&
          restrict_default_warehouse_flag == o.restrict_default_warehouse_flag &&
          restrict_default_warehouse_bin_flag == o.restrict_default_warehouse_bin_flag &&
          mapi_name == o.mapi_name &&
          calendar_sync_integration_flag == o.calendar_sync_integration_flag &&
          enable_ldap_authentication_flag == o.enable_ldap_authentication_flag &&
          ldap_configuration == o.ldap_configuration &&
          ldap_user_name == o.ldap_user_name &&
          company_activity_tab_format == o.company_activity_tab_format &&
          invoice_time_tab_format == o.invoice_time_tab_format &&
          invoice_screen_default_tab_format == o.invoice_screen_default_tab_format &&
          invoicing_display_options == o.invoicing_display_options &&
          agreement_invoicing_display_options == o.agreement_invoicing_display_options &&
          corelytics_username == o.corelytics_username &&
          corelytics_password == o.corelytics_password &&
          remote_package == o.remote_package &&
          remote_package_platform == o.remote_package_platform &&
          remote_package_user_name == o.remote_package_user_name &&
          remote_package_password == o.remote_package_password &&
          remote_package_account == o.remote_package_account &&
          authentication_service_type == o.authentication_service_type &&
          timebased_one_time_password_activated == o.timebased_one_time_password_activated &&
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
      [id, identifier, password, first_name, middle_initial, last_name, title, report_card, license_class, disable_online_flag, enable_mobile_flag, type, employee_identifer, vendor_number, notes, time_zone, country, service_board_team_ids, enable_mobile_gps_flag, inactive_date, inactive_flag, last_login, photo, office_email, office_phone, office_extension, mobile_email, mobile_phone, mobile_extension, home_email, home_phone, home_extension, default_email, default_phone, security_role, admin_flag, structure_level, security_location, default_location, default_department, reports_to, restrict_location_flag, restrict_department_flag, work_role, work_type, time_approver, expense_approver, billable_forecast, daily_capacity, hourly_cost, hourly_rate, include_in_utilization_reporting_flag, require_expense_entry_flag, require_time_sheet_entry_flag, require_start_and_end_time_on_time_entry_flag, allow_in_cell_entry_on_time_sheet, enter_time_against_company_flag, allow_expenses_entered_against_companies_flag, time_reminder_email_flag, days_tolerance, minimum_hours, time_sheet_start_date, hire_date, service_default_location, service_default_department, service_default_board, restrict_service_default_location_flag, restrict_service_default_department_flag, excluded_service_board_ids, project_default_location, project_default_department, project_default_board, restrict_project_default_location_flag, restrict_project_default_department_flag, excluded_project_board_ids, schedule_default_location, schedule_default_department, schedule_capacity, service_location, restrict_schedule_flag, hide_member_in_dispatch_portal_flag, calendar, sales_default_location, restrict_default_sales_territory_flag, warehouse, warehouse_bin, restrict_default_warehouse_flag, restrict_default_warehouse_bin_flag, mapi_name, calendar_sync_integration_flag, enable_ldap_authentication_flag, ldap_configuration, ldap_user_name, company_activity_tab_format, invoice_time_tab_format, invoice_screen_default_tab_format, invoicing_display_options, agreement_invoicing_display_options, corelytics_username, corelytics_password, remote_package, remote_package_platform, remote_package_user_name, remote_package_password, remote_package_account, authentication_service_type, timebased_one_time_password_activated, _info].hash
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
