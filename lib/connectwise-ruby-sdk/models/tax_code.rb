
require 'date'

module ConnectWise

  class TaxCode
    attr_accessor :id

    attr_accessor :identifier

    attr_accessor :description

    attr_accessor :invoice_caption

    attr_accessor :country

    attr_accessor :effective_date

    attr_accessor :default_flag

    attr_accessor :display_on_invoice_flag

    attr_accessor :canada_calculate_gst_flag

    attr_accessor :cancel_date

    attr_accessor :level_one_rate

    attr_accessor :level_one_rate_type

    attr_accessor :level_one_taxable_max

    attr_accessor :level_one_caption

    attr_accessor :level_one_tax_code_xref

    attr_accessor :level_one_agency_xref

    attr_accessor :level_one_services_flag

    attr_accessor :level_one_expenses_flag

    attr_accessor :level_one_products_flag

    attr_accessor :level_one_apply_single_unit_flag

    attr_accessor :level_one_apply_single_unit_min

    attr_accessor :level_one_apply_single_unit_max

    attr_accessor :level_two_rate

    attr_accessor :level_two_rate_type

    attr_accessor :level_two_taxable_max

    attr_accessor :level_two_caption

    attr_accessor :level_two_tax_code_xref

    attr_accessor :level_two_agency_xref

    attr_accessor :level_two_services_flag

    attr_accessor :level_two_expenses_flag

    attr_accessor :level_two_products_flag

    attr_accessor :level_two_apply_single_unit_flag

    attr_accessor :level_two_apply_single_unit_min

    attr_accessor :level_two_apply_single_unit_max

    attr_accessor :level_three_rate

    attr_accessor :level_three_rate_type

    attr_accessor :level_three_taxable_max

    attr_accessor :level_three_caption

    attr_accessor :level_three_tax_code_xref

    attr_accessor :level_three_agency_xref

    attr_accessor :level_three_services_flag

    attr_accessor :level_three_expenses_flag

    attr_accessor :level_three_products_flag

    attr_accessor :level_three_apply_single_unit_flag

    attr_accessor :level_three_apply_single_unit_min

    attr_accessor :level_three_apply_single_unit_max

    attr_accessor :level_four_rate

    attr_accessor :level_four_rate_type

    attr_accessor :level_four_taxable_max

    attr_accessor :level_four_caption

    attr_accessor :level_four_tax_code_xref

    attr_accessor :level_four_agency_xref

    attr_accessor :level_four_services_flag

    attr_accessor :level_four_expenses_flag

    attr_accessor :level_four_products_flag

    attr_accessor :level_four_apply_single_unit_flag

    attr_accessor :level_four_apply_single_unit_min

    attr_accessor :level_four_apply_single_unit_max

    attr_accessor :level_five_rate

    attr_accessor :level_five_rate_type

    attr_accessor :level_five_taxable_max

    attr_accessor :level_five_caption

    attr_accessor :level_five_tax_code_xref

    attr_accessor :level_five_agency_xref

    attr_accessor :level_five_services_flag

    attr_accessor :level_five_expenses_flag

    attr_accessor :level_five_products_flag

    attr_accessor :level_five_apply_single_unit_flag

    attr_accessor :level_five_apply_single_unit_min

    attr_accessor :level_five_apply_single_unit_max

    attr_accessor :work_role_ids

    attr_accessor :add_all_work_roles

    attr_accessor :remove_all_work_roles

    attr_accessor :expense_type_ids

    attr_accessor :add_all_expense_types

    attr_accessor :remove_all_expense_types

    attr_accessor :product_type_ids

    attr_accessor :add_all_product_types

    attr_accessor :remove_all_product_types

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
        :'description' => :'description',
        :'invoice_caption' => :'invoiceCaption',
        :'country' => :'country',
        :'effective_date' => :'effectiveDate',
        :'default_flag' => :'defaultFlag',
        :'display_on_invoice_flag' => :'displayOnInvoiceFlag',
        :'canada_calculate_gst_flag' => :'canadaCalculateGSTFlag',
        :'cancel_date' => :'cancelDate',
        :'level_one_rate' => :'levelOneRate',
        :'level_one_rate_type' => :'levelOneRateType',
        :'level_one_taxable_max' => :'levelOneTaxableMax',
        :'level_one_caption' => :'levelOneCaption',
        :'level_one_tax_code_xref' => :'levelOneTaxCodeXref',
        :'level_one_agency_xref' => :'levelOneAgencyXref',
        :'level_one_services_flag' => :'levelOneServicesFlag',
        :'level_one_expenses_flag' => :'levelOneExpensesFlag',
        :'level_one_products_flag' => :'levelOneProductsFlag',
        :'level_one_apply_single_unit_flag' => :'levelOneApplySingleUnitFlag',
        :'level_one_apply_single_unit_min' => :'levelOneApplySingleUnitMin',
        :'level_one_apply_single_unit_max' => :'levelOneApplySingleUnitMax',
        :'level_two_rate' => :'levelTwoRate',
        :'level_two_rate_type' => :'levelTwoRateType',
        :'level_two_taxable_max' => :'levelTwoTaxableMax',
        :'level_two_caption' => :'levelTwoCaption',
        :'level_two_tax_code_xref' => :'levelTwoTaxCodeXref',
        :'level_two_agency_xref' => :'levelTwoAgencyXref',
        :'level_two_services_flag' => :'levelTwoServicesFlag',
        :'level_two_expenses_flag' => :'levelTwoExpensesFlag',
        :'level_two_products_flag' => :'levelTwoProductsFlag',
        :'level_two_apply_single_unit_flag' => :'levelTwoApplySingleUnitFlag',
        :'level_two_apply_single_unit_min' => :'levelTwoApplySingleUnitMin',
        :'level_two_apply_single_unit_max' => :'levelTwoApplySingleUnitMax',
        :'level_three_rate' => :'levelThreeRate',
        :'level_three_rate_type' => :'levelThreeRateType',
        :'level_three_taxable_max' => :'levelThreeTaxableMax',
        :'level_three_caption' => :'levelThreeCaption',
        :'level_three_tax_code_xref' => :'levelThreeTaxCodeXref',
        :'level_three_agency_xref' => :'levelThreeAgencyXref',
        :'level_three_services_flag' => :'levelThreeServicesFlag',
        :'level_three_expenses_flag' => :'levelThreeExpensesFlag',
        :'level_three_products_flag' => :'levelThreeProductsFlag',
        :'level_three_apply_single_unit_flag' => :'levelThreeApplySingleUnitFlag',
        :'level_three_apply_single_unit_min' => :'levelThreeApplySingleUnitMin',
        :'level_three_apply_single_unit_max' => :'levelThreeApplySingleUnitMax',
        :'level_four_rate' => :'levelFourRate',
        :'level_four_rate_type' => :'levelFourRateType',
        :'level_four_taxable_max' => :'levelFourTaxableMax',
        :'level_four_caption' => :'levelFourCaption',
        :'level_four_tax_code_xref' => :'levelFourTaxCodeXref',
        :'level_four_agency_xref' => :'levelFourAgencyXref',
        :'level_four_services_flag' => :'levelFourServicesFlag',
        :'level_four_expenses_flag' => :'levelFourExpensesFlag',
        :'level_four_products_flag' => :'levelFourProductsFlag',
        :'level_four_apply_single_unit_flag' => :'levelFourApplySingleUnitFlag',
        :'level_four_apply_single_unit_min' => :'levelFourApplySingleUnitMin',
        :'level_four_apply_single_unit_max' => :'levelFourApplySingleUnitMax',
        :'level_five_rate' => :'levelFiveRate',
        :'level_five_rate_type' => :'levelFiveRateType',
        :'level_five_taxable_max' => :'levelFiveTaxableMax',
        :'level_five_caption' => :'levelFiveCaption',
        :'level_five_tax_code_xref' => :'levelFiveTaxCodeXref',
        :'level_five_agency_xref' => :'levelFiveAgencyXref',
        :'level_five_services_flag' => :'levelFiveServicesFlag',
        :'level_five_expenses_flag' => :'levelFiveExpensesFlag',
        :'level_five_products_flag' => :'levelFiveProductsFlag',
        :'level_five_apply_single_unit_flag' => :'levelFiveApplySingleUnitFlag',
        :'level_five_apply_single_unit_min' => :'levelFiveApplySingleUnitMin',
        :'level_five_apply_single_unit_max' => :'levelFiveApplySingleUnitMax',
        :'work_role_ids' => :'workRoleIds',
        :'add_all_work_roles' => :'addAllWorkRoles',
        :'remove_all_work_roles' => :'removeAllWorkRoles',
        :'expense_type_ids' => :'expenseTypeIds',
        :'add_all_expense_types' => :'addAllExpenseTypes',
        :'remove_all_expense_types' => :'removeAllExpenseTypes',
        :'product_type_ids' => :'productTypeIds',
        :'add_all_product_types' => :'addAllProductTypes',
        :'remove_all_product_types' => :'removeAllProductTypes',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'identifier' => :'String',
        :'description' => :'String',
        :'invoice_caption' => :'String',
        :'country' => :'CountryReference',
        :'effective_date' => :'DateTime',
        :'default_flag' => :'BOOLEAN',
        :'display_on_invoice_flag' => :'BOOLEAN',
        :'canada_calculate_gst_flag' => :'BOOLEAN',
        :'cancel_date' => :'DateTime',
        :'level_one_rate' => :'Float',
        :'level_one_rate_type' => :'String',
        :'level_one_taxable_max' => :'Float',
        :'level_one_caption' => :'String',
        :'level_one_tax_code_xref' => :'String',
        :'level_one_agency_xref' => :'String',
        :'level_one_services_flag' => :'BOOLEAN',
        :'level_one_expenses_flag' => :'BOOLEAN',
        :'level_one_products_flag' => :'BOOLEAN',
        :'level_one_apply_single_unit_flag' => :'BOOLEAN',
        :'level_one_apply_single_unit_min' => :'Float',
        :'level_one_apply_single_unit_max' => :'Float',
        :'level_two_rate' => :'Float',
        :'level_two_rate_type' => :'String',
        :'level_two_taxable_max' => :'Float',
        :'level_two_caption' => :'String',
        :'level_two_tax_code_xref' => :'String',
        :'level_two_agency_xref' => :'String',
        :'level_two_services_flag' => :'BOOLEAN',
        :'level_two_expenses_flag' => :'BOOLEAN',
        :'level_two_products_flag' => :'BOOLEAN',
        :'level_two_apply_single_unit_flag' => :'BOOLEAN',
        :'level_two_apply_single_unit_min' => :'Float',
        :'level_two_apply_single_unit_max' => :'Float',
        :'level_three_rate' => :'Float',
        :'level_three_rate_type' => :'String',
        :'level_three_taxable_max' => :'Float',
        :'level_three_caption' => :'String',
        :'level_three_tax_code_xref' => :'String',
        :'level_three_agency_xref' => :'String',
        :'level_three_services_flag' => :'BOOLEAN',
        :'level_three_expenses_flag' => :'BOOLEAN',
        :'level_three_products_flag' => :'BOOLEAN',
        :'level_three_apply_single_unit_flag' => :'BOOLEAN',
        :'level_three_apply_single_unit_min' => :'Float',
        :'level_three_apply_single_unit_max' => :'Float',
        :'level_four_rate' => :'Float',
        :'level_four_rate_type' => :'String',
        :'level_four_taxable_max' => :'Float',
        :'level_four_caption' => :'String',
        :'level_four_tax_code_xref' => :'String',
        :'level_four_agency_xref' => :'String',
        :'level_four_services_flag' => :'BOOLEAN',
        :'level_four_expenses_flag' => :'BOOLEAN',
        :'level_four_products_flag' => :'BOOLEAN',
        :'level_four_apply_single_unit_flag' => :'BOOLEAN',
        :'level_four_apply_single_unit_min' => :'Float',
        :'level_four_apply_single_unit_max' => :'Float',
        :'level_five_rate' => :'Float',
        :'level_five_rate_type' => :'String',
        :'level_five_taxable_max' => :'Float',
        :'level_five_caption' => :'String',
        :'level_five_tax_code_xref' => :'String',
        :'level_five_agency_xref' => :'String',
        :'level_five_services_flag' => :'BOOLEAN',
        :'level_five_expenses_flag' => :'BOOLEAN',
        :'level_five_products_flag' => :'BOOLEAN',
        :'level_five_apply_single_unit_flag' => :'BOOLEAN',
        :'level_five_apply_single_unit_min' => :'Float',
        :'level_five_apply_single_unit_max' => :'Float',
        :'work_role_ids' => :'Array<Integer>',
        :'add_all_work_roles' => :'BOOLEAN',
        :'remove_all_work_roles' => :'BOOLEAN',
        :'expense_type_ids' => :'Array<Integer>',
        :'add_all_expense_types' => :'BOOLEAN',
        :'remove_all_expense_types' => :'BOOLEAN',
        :'product_type_ids' => :'Array<Integer>',
        :'add_all_product_types' => :'BOOLEAN',
        :'remove_all_product_types' => :'BOOLEAN',
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

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'invoiceCaption')
        self.invoice_caption = attributes[:'invoiceCaption']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'effectiveDate')
        self.effective_date = attributes[:'effectiveDate']
      end

      if attributes.has_key?(:'defaultFlag')
        self.default_flag = attributes[:'defaultFlag']
      end

      if attributes.has_key?(:'displayOnInvoiceFlag')
        self.display_on_invoice_flag = attributes[:'displayOnInvoiceFlag']
      end

      if attributes.has_key?(:'canadaCalculateGSTFlag')
        self.canada_calculate_gst_flag = attributes[:'canadaCalculateGSTFlag']
      end

      if attributes.has_key?(:'cancelDate')
        self.cancel_date = attributes[:'cancelDate']
      end

      if attributes.has_key?(:'levelOneRate')
        self.level_one_rate = attributes[:'levelOneRate']
      end

      if attributes.has_key?(:'levelOneRateType')
        self.level_one_rate_type = attributes[:'levelOneRateType']
      end

      if attributes.has_key?(:'levelOneTaxableMax')
        self.level_one_taxable_max = attributes[:'levelOneTaxableMax']
      end

      if attributes.has_key?(:'levelOneCaption')
        self.level_one_caption = attributes[:'levelOneCaption']
      end

      if attributes.has_key?(:'levelOneTaxCodeXref')
        self.level_one_tax_code_xref = attributes[:'levelOneTaxCodeXref']
      end

      if attributes.has_key?(:'levelOneAgencyXref')
        self.level_one_agency_xref = attributes[:'levelOneAgencyXref']
      end

      if attributes.has_key?(:'levelOneServicesFlag')
        self.level_one_services_flag = attributes[:'levelOneServicesFlag']
      end

      if attributes.has_key?(:'levelOneExpensesFlag')
        self.level_one_expenses_flag = attributes[:'levelOneExpensesFlag']
      end

      if attributes.has_key?(:'levelOneProductsFlag')
        self.level_one_products_flag = attributes[:'levelOneProductsFlag']
      end

      if attributes.has_key?(:'levelOneApplySingleUnitFlag')
        self.level_one_apply_single_unit_flag = attributes[:'levelOneApplySingleUnitFlag']
      end

      if attributes.has_key?(:'levelOneApplySingleUnitMin')
        self.level_one_apply_single_unit_min = attributes[:'levelOneApplySingleUnitMin']
      end

      if attributes.has_key?(:'levelOneApplySingleUnitMax')
        self.level_one_apply_single_unit_max = attributes[:'levelOneApplySingleUnitMax']
      end

      if attributes.has_key?(:'levelTwoRate')
        self.level_two_rate = attributes[:'levelTwoRate']
      end

      if attributes.has_key?(:'levelTwoRateType')
        self.level_two_rate_type = attributes[:'levelTwoRateType']
      end

      if attributes.has_key?(:'levelTwoTaxableMax')
        self.level_two_taxable_max = attributes[:'levelTwoTaxableMax']
      end

      if attributes.has_key?(:'levelTwoCaption')
        self.level_two_caption = attributes[:'levelTwoCaption']
      end

      if attributes.has_key?(:'levelTwoTaxCodeXref')
        self.level_two_tax_code_xref = attributes[:'levelTwoTaxCodeXref']
      end

      if attributes.has_key?(:'levelTwoAgencyXref')
        self.level_two_agency_xref = attributes[:'levelTwoAgencyXref']
      end

      if attributes.has_key?(:'levelTwoServicesFlag')
        self.level_two_services_flag = attributes[:'levelTwoServicesFlag']
      end

      if attributes.has_key?(:'levelTwoExpensesFlag')
        self.level_two_expenses_flag = attributes[:'levelTwoExpensesFlag']
      end

      if attributes.has_key?(:'levelTwoProductsFlag')
        self.level_two_products_flag = attributes[:'levelTwoProductsFlag']
      end

      if attributes.has_key?(:'levelTwoApplySingleUnitFlag')
        self.level_two_apply_single_unit_flag = attributes[:'levelTwoApplySingleUnitFlag']
      end

      if attributes.has_key?(:'levelTwoApplySingleUnitMin')
        self.level_two_apply_single_unit_min = attributes[:'levelTwoApplySingleUnitMin']
      end

      if attributes.has_key?(:'levelTwoApplySingleUnitMax')
        self.level_two_apply_single_unit_max = attributes[:'levelTwoApplySingleUnitMax']
      end

      if attributes.has_key?(:'levelThreeRate')
        self.level_three_rate = attributes[:'levelThreeRate']
      end

      if attributes.has_key?(:'levelThreeRateType')
        self.level_three_rate_type = attributes[:'levelThreeRateType']
      end

      if attributes.has_key?(:'levelThreeTaxableMax')
        self.level_three_taxable_max = attributes[:'levelThreeTaxableMax']
      end

      if attributes.has_key?(:'levelThreeCaption')
        self.level_three_caption = attributes[:'levelThreeCaption']
      end

      if attributes.has_key?(:'levelThreeTaxCodeXref')
        self.level_three_tax_code_xref = attributes[:'levelThreeTaxCodeXref']
      end

      if attributes.has_key?(:'levelThreeAgencyXref')
        self.level_three_agency_xref = attributes[:'levelThreeAgencyXref']
      end

      if attributes.has_key?(:'levelThreeServicesFlag')
        self.level_three_services_flag = attributes[:'levelThreeServicesFlag']
      end

      if attributes.has_key?(:'levelThreeExpensesFlag')
        self.level_three_expenses_flag = attributes[:'levelThreeExpensesFlag']
      end

      if attributes.has_key?(:'levelThreeProductsFlag')
        self.level_three_products_flag = attributes[:'levelThreeProductsFlag']
      end

      if attributes.has_key?(:'levelThreeApplySingleUnitFlag')
        self.level_three_apply_single_unit_flag = attributes[:'levelThreeApplySingleUnitFlag']
      end

      if attributes.has_key?(:'levelThreeApplySingleUnitMin')
        self.level_three_apply_single_unit_min = attributes[:'levelThreeApplySingleUnitMin']
      end

      if attributes.has_key?(:'levelThreeApplySingleUnitMax')
        self.level_three_apply_single_unit_max = attributes[:'levelThreeApplySingleUnitMax']
      end

      if attributes.has_key?(:'levelFourRate')
        self.level_four_rate = attributes[:'levelFourRate']
      end

      if attributes.has_key?(:'levelFourRateType')
        self.level_four_rate_type = attributes[:'levelFourRateType']
      end

      if attributes.has_key?(:'levelFourTaxableMax')
        self.level_four_taxable_max = attributes[:'levelFourTaxableMax']
      end

      if attributes.has_key?(:'levelFourCaption')
        self.level_four_caption = attributes[:'levelFourCaption']
      end

      if attributes.has_key?(:'levelFourTaxCodeXref')
        self.level_four_tax_code_xref = attributes[:'levelFourTaxCodeXref']
      end

      if attributes.has_key?(:'levelFourAgencyXref')
        self.level_four_agency_xref = attributes[:'levelFourAgencyXref']
      end

      if attributes.has_key?(:'levelFourServicesFlag')
        self.level_four_services_flag = attributes[:'levelFourServicesFlag']
      end

      if attributes.has_key?(:'levelFourExpensesFlag')
        self.level_four_expenses_flag = attributes[:'levelFourExpensesFlag']
      end

      if attributes.has_key?(:'levelFourProductsFlag')
        self.level_four_products_flag = attributes[:'levelFourProductsFlag']
      end

      if attributes.has_key?(:'levelFourApplySingleUnitFlag')
        self.level_four_apply_single_unit_flag = attributes[:'levelFourApplySingleUnitFlag']
      end

      if attributes.has_key?(:'levelFourApplySingleUnitMin')
        self.level_four_apply_single_unit_min = attributes[:'levelFourApplySingleUnitMin']
      end

      if attributes.has_key?(:'levelFourApplySingleUnitMax')
        self.level_four_apply_single_unit_max = attributes[:'levelFourApplySingleUnitMax']
      end

      if attributes.has_key?(:'levelFiveRate')
        self.level_five_rate = attributes[:'levelFiveRate']
      end

      if attributes.has_key?(:'levelFiveRateType')
        self.level_five_rate_type = attributes[:'levelFiveRateType']
      end

      if attributes.has_key?(:'levelFiveTaxableMax')
        self.level_five_taxable_max = attributes[:'levelFiveTaxableMax']
      end

      if attributes.has_key?(:'levelFiveCaption')
        self.level_five_caption = attributes[:'levelFiveCaption']
      end

      if attributes.has_key?(:'levelFiveTaxCodeXref')
        self.level_five_tax_code_xref = attributes[:'levelFiveTaxCodeXref']
      end

      if attributes.has_key?(:'levelFiveAgencyXref')
        self.level_five_agency_xref = attributes[:'levelFiveAgencyXref']
      end

      if attributes.has_key?(:'levelFiveServicesFlag')
        self.level_five_services_flag = attributes[:'levelFiveServicesFlag']
      end

      if attributes.has_key?(:'levelFiveExpensesFlag')
        self.level_five_expenses_flag = attributes[:'levelFiveExpensesFlag']
      end

      if attributes.has_key?(:'levelFiveProductsFlag')
        self.level_five_products_flag = attributes[:'levelFiveProductsFlag']
      end

      if attributes.has_key?(:'levelFiveApplySingleUnitFlag')
        self.level_five_apply_single_unit_flag = attributes[:'levelFiveApplySingleUnitFlag']
      end

      if attributes.has_key?(:'levelFiveApplySingleUnitMin')
        self.level_five_apply_single_unit_min = attributes[:'levelFiveApplySingleUnitMin']
      end

      if attributes.has_key?(:'levelFiveApplySingleUnitMax')
        self.level_five_apply_single_unit_max = attributes[:'levelFiveApplySingleUnitMax']
      end

      if attributes.has_key?(:'workRoleIds')
        if (value = attributes[:'workRoleIds']).is_a?(Array)
          self.work_role_ids = value
        end
      end

      if attributes.has_key?(:'addAllWorkRoles')
        self.add_all_work_roles = attributes[:'addAllWorkRoles']
      end

      if attributes.has_key?(:'removeAllWorkRoles')
        self.remove_all_work_roles = attributes[:'removeAllWorkRoles']
      end

      if attributes.has_key?(:'expenseTypeIds')
        if (value = attributes[:'expenseTypeIds']).is_a?(Array)
          self.expense_type_ids = value
        end
      end

      if attributes.has_key?(:'addAllExpenseTypes')
        self.add_all_expense_types = attributes[:'addAllExpenseTypes']
      end

      if attributes.has_key?(:'removeAllExpenseTypes')
        self.remove_all_expense_types = attributes[:'removeAllExpenseTypes']
      end

      if attributes.has_key?(:'productTypeIds')
        if (value = attributes[:'productTypeIds']).is_a?(Array)
          self.product_type_ids = value
        end
      end

      if attributes.has_key?(:'addAllProductTypes')
        self.add_all_product_types = attributes[:'addAllProductTypes']
      end

      if attributes.has_key?(:'removeAllProductTypes')
        self.remove_all_product_types = attributes[:'removeAllProductTypes']
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

      if @identifier.to_s.length > 8
        invalid_properties.push("invalid value for 'identifier', the character length must be smaller than or equal to 8.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @description.to_s.length > 50
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 50.")
      end

      if @invoice_caption.nil?
        invalid_properties.push("invalid value for 'invoice_caption', invoice_caption cannot be nil.")
      end

      if @invoice_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'invoice_caption', the character length must be smaller than or equal to 25.")
      end

      if @effective_date.nil?
        invalid_properties.push("invalid value for 'effective_date', effective_date cannot be nil.")
      end

      if !@level_one_taxable_max.nil? && @level_one_taxable_max > 214748.36
        invalid_properties.push("invalid value for 'level_one_taxable_max', must be smaller than or equal to 214748.36.")
      end

      if !@level_one_taxable_max.nil? && @level_one_taxable_max < 0
        invalid_properties.push("invalid value for 'level_one_taxable_max', must be greater than or equal to 0.")
      end

      if !@level_one_caption.nil? && @level_one_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'level_one_caption', the character length must be smaller than or equal to 25.")
      end

      if !@level_one_tax_code_xref.nil? && @level_one_tax_code_xref.to_s.length > 50
        invalid_properties.push("invalid value for 'level_one_tax_code_xref', the character length must be smaller than or equal to 50.")
      end

      if !@level_one_agency_xref.nil? && @level_one_agency_xref.to_s.length > 100
        invalid_properties.push("invalid value for 'level_one_agency_xref', the character length must be smaller than or equal to 100.")
      end

      if !@level_two_taxable_max.nil? && @level_two_taxable_max > 214748.36
        invalid_properties.push("invalid value for 'level_two_taxable_max', must be smaller than or equal to 214748.36.")
      end

      if !@level_two_taxable_max.nil? && @level_two_taxable_max < 0
        invalid_properties.push("invalid value for 'level_two_taxable_max', must be greater than or equal to 0.")
      end

      if !@level_two_caption.nil? && @level_two_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'level_two_caption', the character length must be smaller than or equal to 25.")
      end

      if !@level_two_tax_code_xref.nil? && @level_two_tax_code_xref.to_s.length > 50
        invalid_properties.push("invalid value for 'level_two_tax_code_xref', the character length must be smaller than or equal to 50.")
      end

      if !@level_two_agency_xref.nil? && @level_two_agency_xref.to_s.length > 100
        invalid_properties.push("invalid value for 'level_two_agency_xref', the character length must be smaller than or equal to 100.")
      end

      if !@level_three_taxable_max.nil? && @level_three_taxable_max > 214748.36
        invalid_properties.push("invalid value for 'level_three_taxable_max', must be smaller than or equal to 214748.36.")
      end

      if !@level_three_taxable_max.nil? && @level_three_taxable_max < 0
        invalid_properties.push("invalid value for 'level_three_taxable_max', must be greater than or equal to 0.")
      end

      if !@level_three_caption.nil? && @level_three_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'level_three_caption', the character length must be smaller than or equal to 25.")
      end

      if !@level_three_tax_code_xref.nil? && @level_three_tax_code_xref.to_s.length > 50
        invalid_properties.push("invalid value for 'level_three_tax_code_xref', the character length must be smaller than or equal to 50.")
      end

      if !@level_three_agency_xref.nil? && @level_three_agency_xref.to_s.length > 100
        invalid_properties.push("invalid value for 'level_three_agency_xref', the character length must be smaller than or equal to 100.")
      end

      if !@level_four_taxable_max.nil? && @level_four_taxable_max > 214748.36
        invalid_properties.push("invalid value for 'level_four_taxable_max', must be smaller than or equal to 214748.36.")
      end

      if !@level_four_taxable_max.nil? && @level_four_taxable_max < 0
        invalid_properties.push("invalid value for 'level_four_taxable_max', must be greater than or equal to 0.")
      end

      if !@level_four_caption.nil? && @level_four_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'level_four_caption', the character length must be smaller than or equal to 25.")
      end

      if !@level_four_tax_code_xref.nil? && @level_four_tax_code_xref.to_s.length > 50
        invalid_properties.push("invalid value for 'level_four_tax_code_xref', the character length must be smaller than or equal to 50.")
      end

      if !@level_four_agency_xref.nil? && @level_four_agency_xref.to_s.length > 100
        invalid_properties.push("invalid value for 'level_four_agency_xref', the character length must be smaller than or equal to 100.")
      end

      if !@level_five_taxable_max.nil? && @level_five_taxable_max > 214748.36
        invalid_properties.push("invalid value for 'level_five_taxable_max', must be smaller than or equal to 214748.36.")
      end

      if !@level_five_taxable_max.nil? && @level_five_taxable_max < 0
        invalid_properties.push("invalid value for 'level_five_taxable_max', must be greater than or equal to 0.")
      end

      if !@level_five_caption.nil? && @level_five_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'level_five_caption', the character length must be smaller than or equal to 25.")
      end

      if !@level_five_tax_code_xref.nil? && @level_five_tax_code_xref.to_s.length > 50
        invalid_properties.push("invalid value for 'level_five_tax_code_xref', the character length must be smaller than or equal to 50.")
      end

      if !@level_five_agency_xref.nil? && @level_five_agency_xref.to_s.length > 100
        invalid_properties.push("invalid value for 'level_five_agency_xref', the character length must be smaller than or equal to 100.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @identifier.nil?
      return false if @identifier.to_s.length > 8
      return false if @description.nil?
      return false if @description.to_s.length > 50
      return false if @invoice_caption.nil?
      return false if @invoice_caption.to_s.length > 25
      return false if @effective_date.nil?
      level_one_rate_type_validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      return false unless level_one_rate_type_validator.valid?(@level_one_rate_type)
      return false if !@level_one_taxable_max.nil? && @level_one_taxable_max > 214748.36
      return false if !@level_one_taxable_max.nil? && @level_one_taxable_max < 0
      return false if !@level_one_caption.nil? && @level_one_caption.to_s.length > 25
      return false if !@level_one_tax_code_xref.nil? && @level_one_tax_code_xref.to_s.length > 50
      return false if !@level_one_agency_xref.nil? && @level_one_agency_xref.to_s.length > 100
      level_two_rate_type_validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      return false unless level_two_rate_type_validator.valid?(@level_two_rate_type)
      return false if !@level_two_taxable_max.nil? && @level_two_taxable_max > 214748.36
      return false if !@level_two_taxable_max.nil? && @level_two_taxable_max < 0
      return false if !@level_two_caption.nil? && @level_two_caption.to_s.length > 25
      return false if !@level_two_tax_code_xref.nil? && @level_two_tax_code_xref.to_s.length > 50
      return false if !@level_two_agency_xref.nil? && @level_two_agency_xref.to_s.length > 100
      level_three_rate_type_validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      return false unless level_three_rate_type_validator.valid?(@level_three_rate_type)
      return false if !@level_three_taxable_max.nil? && @level_three_taxable_max > 214748.36
      return false if !@level_three_taxable_max.nil? && @level_three_taxable_max < 0
      return false if !@level_three_caption.nil? && @level_three_caption.to_s.length > 25
      return false if !@level_three_tax_code_xref.nil? && @level_three_tax_code_xref.to_s.length > 50
      return false if !@level_three_agency_xref.nil? && @level_three_agency_xref.to_s.length > 100
      level_four_rate_type_validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      return false unless level_four_rate_type_validator.valid?(@level_four_rate_type)
      return false if !@level_four_taxable_max.nil? && @level_four_taxable_max > 214748.36
      return false if !@level_four_taxable_max.nil? && @level_four_taxable_max < 0
      return false if !@level_four_caption.nil? && @level_four_caption.to_s.length > 25
      return false if !@level_four_tax_code_xref.nil? && @level_four_tax_code_xref.to_s.length > 50
      return false if !@level_four_agency_xref.nil? && @level_four_agency_xref.to_s.length > 100
      level_five_rate_type_validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      return false unless level_five_rate_type_validator.valid?(@level_five_rate_type)
      return false if !@level_five_taxable_max.nil? && @level_five_taxable_max > 214748.36
      return false if !@level_five_taxable_max.nil? && @level_five_taxable_max < 0
      return false if !@level_five_caption.nil? && @level_five_caption.to_s.length > 25
      return false if !@level_five_tax_code_xref.nil? && @level_five_tax_code_xref.to_s.length > 50
      return false if !@level_five_agency_xref.nil? && @level_five_agency_xref.to_s.length > 100
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if identifier.nil?
        fail ArgumentError, "identifier cannot be nil"
      end

      if identifier.to_s.length > 8
        fail ArgumentError, "invalid value for 'identifier', the character length must be smaller than or equal to 8."
      end

      @identifier = identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, "description cannot be nil"
      end

      if description.to_s.length > 50
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 50."
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_caption Value to be assigned
    def invoice_caption=(invoice_caption)
      if invoice_caption.nil?
        fail ArgumentError, "invoice_caption cannot be nil"
      end

      if invoice_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'invoice_caption', the character length must be smaller than or equal to 25."
      end

      @invoice_caption = invoice_caption
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level_one_rate_type Object to be assigned
    def level_one_rate_type=(level_one_rate_type)
      validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      unless validator.valid?(level_one_rate_type)
        fail ArgumentError, "invalid value for 'level_one_rate_type', must be one of #{validator.allowable_values}."
      end
      @level_one_rate_type = level_one_rate_type
    end

    # Custom attribute writer method with validation
    # @param [Object] level_one_taxable_max Value to be assigned
    def level_one_taxable_max=(level_one_taxable_max)

      if !level_one_taxable_max.nil? && level_one_taxable_max > 214748.36
        fail ArgumentError, "invalid value for 'level_one_taxable_max', must be smaller than or equal to 214748.36."
      end

      if !level_one_taxable_max.nil? && level_one_taxable_max < 0
        fail ArgumentError, "invalid value for 'level_one_taxable_max', must be greater than or equal to 0."
      end

      @level_one_taxable_max = level_one_taxable_max
    end

    # Custom attribute writer method with validation
    # @param [Object] level_one_caption Value to be assigned
    def level_one_caption=(level_one_caption)

      if !level_one_caption.nil? && level_one_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'level_one_caption', the character length must be smaller than or equal to 25."
      end

      @level_one_caption = level_one_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] level_one_tax_code_xref Value to be assigned
    def level_one_tax_code_xref=(level_one_tax_code_xref)

      if !level_one_tax_code_xref.nil? && level_one_tax_code_xref.to_s.length > 50
        fail ArgumentError, "invalid value for 'level_one_tax_code_xref', the character length must be smaller than or equal to 50."
      end

      @level_one_tax_code_xref = level_one_tax_code_xref
    end

    # Custom attribute writer method with validation
    # @param [Object] level_one_agency_xref Value to be assigned
    def level_one_agency_xref=(level_one_agency_xref)

      if !level_one_agency_xref.nil? && level_one_agency_xref.to_s.length > 100
        fail ArgumentError, "invalid value for 'level_one_agency_xref', the character length must be smaller than or equal to 100."
      end

      @level_one_agency_xref = level_one_agency_xref
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level_two_rate_type Object to be assigned
    def level_two_rate_type=(level_two_rate_type)
      validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      unless validator.valid?(level_two_rate_type)
        fail ArgumentError, "invalid value for 'level_two_rate_type', must be one of #{validator.allowable_values}."
      end
      @level_two_rate_type = level_two_rate_type
    end

    # Custom attribute writer method with validation
    # @param [Object] level_two_taxable_max Value to be assigned
    def level_two_taxable_max=(level_two_taxable_max)

      if !level_two_taxable_max.nil? && level_two_taxable_max > 214748.36
        fail ArgumentError, "invalid value for 'level_two_taxable_max', must be smaller than or equal to 214748.36."
      end

      if !level_two_taxable_max.nil? && level_two_taxable_max < 0
        fail ArgumentError, "invalid value for 'level_two_taxable_max', must be greater than or equal to 0."
      end

      @level_two_taxable_max = level_two_taxable_max
    end

    # Custom attribute writer method with validation
    # @param [Object] level_two_caption Value to be assigned
    def level_two_caption=(level_two_caption)

      if !level_two_caption.nil? && level_two_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'level_two_caption', the character length must be smaller than or equal to 25."
      end

      @level_two_caption = level_two_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] level_two_tax_code_xref Value to be assigned
    def level_two_tax_code_xref=(level_two_tax_code_xref)

      if !level_two_tax_code_xref.nil? && level_two_tax_code_xref.to_s.length > 50
        fail ArgumentError, "invalid value for 'level_two_tax_code_xref', the character length must be smaller than or equal to 50."
      end

      @level_two_tax_code_xref = level_two_tax_code_xref
    end

    # Custom attribute writer method with validation
    # @param [Object] level_two_agency_xref Value to be assigned
    def level_two_agency_xref=(level_two_agency_xref)

      if !level_two_agency_xref.nil? && level_two_agency_xref.to_s.length > 100
        fail ArgumentError, "invalid value for 'level_two_agency_xref', the character length must be smaller than or equal to 100."
      end

      @level_two_agency_xref = level_two_agency_xref
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level_three_rate_type Object to be assigned
    def level_three_rate_type=(level_three_rate_type)
      validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      unless validator.valid?(level_three_rate_type)
        fail ArgumentError, "invalid value for 'level_three_rate_type', must be one of #{validator.allowable_values}."
      end
      @level_three_rate_type = level_three_rate_type
    end

    # Custom attribute writer method with validation
    # @param [Object] level_three_taxable_max Value to be assigned
    def level_three_taxable_max=(level_three_taxable_max)

      if !level_three_taxable_max.nil? && level_three_taxable_max > 214748.36
        fail ArgumentError, "invalid value for 'level_three_taxable_max', must be smaller than or equal to 214748.36."
      end

      if !level_three_taxable_max.nil? && level_three_taxable_max < 0
        fail ArgumentError, "invalid value for 'level_three_taxable_max', must be greater than or equal to 0."
      end

      @level_three_taxable_max = level_three_taxable_max
    end

    # Custom attribute writer method with validation
    # @param [Object] level_three_caption Value to be assigned
    def level_three_caption=(level_three_caption)

      if !level_three_caption.nil? && level_three_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'level_three_caption', the character length must be smaller than or equal to 25."
      end

      @level_three_caption = level_three_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] level_three_tax_code_xref Value to be assigned
    def level_three_tax_code_xref=(level_three_tax_code_xref)

      if !level_three_tax_code_xref.nil? && level_three_tax_code_xref.to_s.length > 50
        fail ArgumentError, "invalid value for 'level_three_tax_code_xref', the character length must be smaller than or equal to 50."
      end

      @level_three_tax_code_xref = level_three_tax_code_xref
    end

    # Custom attribute writer method with validation
    # @param [Object] level_three_agency_xref Value to be assigned
    def level_three_agency_xref=(level_three_agency_xref)

      if !level_three_agency_xref.nil? && level_three_agency_xref.to_s.length > 100
        fail ArgumentError, "invalid value for 'level_three_agency_xref', the character length must be smaller than or equal to 100."
      end

      @level_three_agency_xref = level_three_agency_xref
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level_four_rate_type Object to be assigned
    def level_four_rate_type=(level_four_rate_type)
      validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      unless validator.valid?(level_four_rate_type)
        fail ArgumentError, "invalid value for 'level_four_rate_type', must be one of #{validator.allowable_values}."
      end
      @level_four_rate_type = level_four_rate_type
    end

    # Custom attribute writer method with validation
    # @param [Object] level_four_taxable_max Value to be assigned
    def level_four_taxable_max=(level_four_taxable_max)

      if !level_four_taxable_max.nil? && level_four_taxable_max > 214748.36
        fail ArgumentError, "invalid value for 'level_four_taxable_max', must be smaller than or equal to 214748.36."
      end

      if !level_four_taxable_max.nil? && level_four_taxable_max < 0
        fail ArgumentError, "invalid value for 'level_four_taxable_max', must be greater than or equal to 0."
      end

      @level_four_taxable_max = level_four_taxable_max
    end

    # Custom attribute writer method with validation
    # @param [Object] level_four_caption Value to be assigned
    def level_four_caption=(level_four_caption)

      if !level_four_caption.nil? && level_four_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'level_four_caption', the character length must be smaller than or equal to 25."
      end

      @level_four_caption = level_four_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] level_four_tax_code_xref Value to be assigned
    def level_four_tax_code_xref=(level_four_tax_code_xref)

      if !level_four_tax_code_xref.nil? && level_four_tax_code_xref.to_s.length > 50
        fail ArgumentError, "invalid value for 'level_four_tax_code_xref', the character length must be smaller than or equal to 50."
      end

      @level_four_tax_code_xref = level_four_tax_code_xref
    end

    # Custom attribute writer method with validation
    # @param [Object] level_four_agency_xref Value to be assigned
    def level_four_agency_xref=(level_four_agency_xref)

      if !level_four_agency_xref.nil? && level_four_agency_xref.to_s.length > 100
        fail ArgumentError, "invalid value for 'level_four_agency_xref', the character length must be smaller than or equal to 100."
      end

      @level_four_agency_xref = level_four_agency_xref
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level_five_rate_type Object to be assigned
    def level_five_rate_type=(level_five_rate_type)
      validator = EnumAttributeValidator.new('String', ["Amount", "Percent"])
      unless validator.valid?(level_five_rate_type)
        fail ArgumentError, "invalid value for 'level_five_rate_type', must be one of #{validator.allowable_values}."
      end
      @level_five_rate_type = level_five_rate_type
    end

    # Custom attribute writer method with validation
    # @param [Object] level_five_taxable_max Value to be assigned
    def level_five_taxable_max=(level_five_taxable_max)

      if !level_five_taxable_max.nil? && level_five_taxable_max > 214748.36
        fail ArgumentError, "invalid value for 'level_five_taxable_max', must be smaller than or equal to 214748.36."
      end

      if !level_five_taxable_max.nil? && level_five_taxable_max < 0
        fail ArgumentError, "invalid value for 'level_five_taxable_max', must be greater than or equal to 0."
      end

      @level_five_taxable_max = level_five_taxable_max
    end

    # Custom attribute writer method with validation
    # @param [Object] level_five_caption Value to be assigned
    def level_five_caption=(level_five_caption)

      if !level_five_caption.nil? && level_five_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'level_five_caption', the character length must be smaller than or equal to 25."
      end

      @level_five_caption = level_five_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] level_five_tax_code_xref Value to be assigned
    def level_five_tax_code_xref=(level_five_tax_code_xref)

      if !level_five_tax_code_xref.nil? && level_five_tax_code_xref.to_s.length > 50
        fail ArgumentError, "invalid value for 'level_five_tax_code_xref', the character length must be smaller than or equal to 50."
      end

      @level_five_tax_code_xref = level_five_tax_code_xref
    end

    # Custom attribute writer method with validation
    # @param [Object] level_five_agency_xref Value to be assigned
    def level_five_agency_xref=(level_five_agency_xref)

      if !level_five_agency_xref.nil? && level_five_agency_xref.to_s.length > 100
        fail ArgumentError, "invalid value for 'level_five_agency_xref', the character length must be smaller than or equal to 100."
      end

      @level_five_agency_xref = level_five_agency_xref
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          identifier == o.identifier &&
          description == o.description &&
          invoice_caption == o.invoice_caption &&
          country == o.country &&
          effective_date == o.effective_date &&
          default_flag == o.default_flag &&
          display_on_invoice_flag == o.display_on_invoice_flag &&
          canada_calculate_gst_flag == o.canada_calculate_gst_flag &&
          cancel_date == o.cancel_date &&
          level_one_rate == o.level_one_rate &&
          level_one_rate_type == o.level_one_rate_type &&
          level_one_taxable_max == o.level_one_taxable_max &&
          level_one_caption == o.level_one_caption &&
          level_one_tax_code_xref == o.level_one_tax_code_xref &&
          level_one_agency_xref == o.level_one_agency_xref &&
          level_one_services_flag == o.level_one_services_flag &&
          level_one_expenses_flag == o.level_one_expenses_flag &&
          level_one_products_flag == o.level_one_products_flag &&
          level_one_apply_single_unit_flag == o.level_one_apply_single_unit_flag &&
          level_one_apply_single_unit_min == o.level_one_apply_single_unit_min &&
          level_one_apply_single_unit_max == o.level_one_apply_single_unit_max &&
          level_two_rate == o.level_two_rate &&
          level_two_rate_type == o.level_two_rate_type &&
          level_two_taxable_max == o.level_two_taxable_max &&
          level_two_caption == o.level_two_caption &&
          level_two_tax_code_xref == o.level_two_tax_code_xref &&
          level_two_agency_xref == o.level_two_agency_xref &&
          level_two_services_flag == o.level_two_services_flag &&
          level_two_expenses_flag == o.level_two_expenses_flag &&
          level_two_products_flag == o.level_two_products_flag &&
          level_two_apply_single_unit_flag == o.level_two_apply_single_unit_flag &&
          level_two_apply_single_unit_min == o.level_two_apply_single_unit_min &&
          level_two_apply_single_unit_max == o.level_two_apply_single_unit_max &&
          level_three_rate == o.level_three_rate &&
          level_three_rate_type == o.level_three_rate_type &&
          level_three_taxable_max == o.level_three_taxable_max &&
          level_three_caption == o.level_three_caption &&
          level_three_tax_code_xref == o.level_three_tax_code_xref &&
          level_three_agency_xref == o.level_three_agency_xref &&
          level_three_services_flag == o.level_three_services_flag &&
          level_three_expenses_flag == o.level_three_expenses_flag &&
          level_three_products_flag == o.level_three_products_flag &&
          level_three_apply_single_unit_flag == o.level_three_apply_single_unit_flag &&
          level_three_apply_single_unit_min == o.level_three_apply_single_unit_min &&
          level_three_apply_single_unit_max == o.level_three_apply_single_unit_max &&
          level_four_rate == o.level_four_rate &&
          level_four_rate_type == o.level_four_rate_type &&
          level_four_taxable_max == o.level_four_taxable_max &&
          level_four_caption == o.level_four_caption &&
          level_four_tax_code_xref == o.level_four_tax_code_xref &&
          level_four_agency_xref == o.level_four_agency_xref &&
          level_four_services_flag == o.level_four_services_flag &&
          level_four_expenses_flag == o.level_four_expenses_flag &&
          level_four_products_flag == o.level_four_products_flag &&
          level_four_apply_single_unit_flag == o.level_four_apply_single_unit_flag &&
          level_four_apply_single_unit_min == o.level_four_apply_single_unit_min &&
          level_four_apply_single_unit_max == o.level_four_apply_single_unit_max &&
          level_five_rate == o.level_five_rate &&
          level_five_rate_type == o.level_five_rate_type &&
          level_five_taxable_max == o.level_five_taxable_max &&
          level_five_caption == o.level_five_caption &&
          level_five_tax_code_xref == o.level_five_tax_code_xref &&
          level_five_agency_xref == o.level_five_agency_xref &&
          level_five_services_flag == o.level_five_services_flag &&
          level_five_expenses_flag == o.level_five_expenses_flag &&
          level_five_products_flag == o.level_five_products_flag &&
          level_five_apply_single_unit_flag == o.level_five_apply_single_unit_flag &&
          level_five_apply_single_unit_min == o.level_five_apply_single_unit_min &&
          level_five_apply_single_unit_max == o.level_five_apply_single_unit_max &&
          work_role_ids == o.work_role_ids &&
          add_all_work_roles == o.add_all_work_roles &&
          remove_all_work_roles == o.remove_all_work_roles &&
          expense_type_ids == o.expense_type_ids &&
          add_all_expense_types == o.add_all_expense_types &&
          remove_all_expense_types == o.remove_all_expense_types &&
          product_type_ids == o.product_type_ids &&
          add_all_product_types == o.add_all_product_types &&
          remove_all_product_types == o.remove_all_product_types &&
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
      [id, identifier, description, invoice_caption, country, effective_date, default_flag, display_on_invoice_flag, canada_calculate_gst_flag, cancel_date, level_one_rate, level_one_rate_type, level_one_taxable_max, level_one_caption, level_one_tax_code_xref, level_one_agency_xref, level_one_services_flag, level_one_expenses_flag, level_one_products_flag, level_one_apply_single_unit_flag, level_one_apply_single_unit_min, level_one_apply_single_unit_max, level_two_rate, level_two_rate_type, level_two_taxable_max, level_two_caption, level_two_tax_code_xref, level_two_agency_xref, level_two_services_flag, level_two_expenses_flag, level_two_products_flag, level_two_apply_single_unit_flag, level_two_apply_single_unit_min, level_two_apply_single_unit_max, level_three_rate, level_three_rate_type, level_three_taxable_max, level_three_caption, level_three_tax_code_xref, level_three_agency_xref, level_three_services_flag, level_three_expenses_flag, level_three_products_flag, level_three_apply_single_unit_flag, level_three_apply_single_unit_min, level_three_apply_single_unit_max, level_four_rate, level_four_rate_type, level_four_taxable_max, level_four_caption, level_four_tax_code_xref, level_four_agency_xref, level_four_services_flag, level_four_expenses_flag, level_four_products_flag, level_four_apply_single_unit_flag, level_four_apply_single_unit_min, level_four_apply_single_unit_max, level_five_rate, level_five_rate_type, level_five_taxable_max, level_five_caption, level_five_tax_code_xref, level_five_agency_xref, level_five_services_flag, level_five_expenses_flag, level_five_products_flag, level_five_apply_single_unit_flag, level_five_apply_single_unit_min, level_five_apply_single_unit_max, work_role_ids, add_all_work_roles, remove_all_work_roles, expense_type_ids, add_all_expense_types, remove_all_expense_types, product_type_ids, add_all_product_types, remove_all_product_types, _info].hash
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
