
require 'date'

module ConnectWise

  class GLExportTransactionDetail
    attr_accessor :id

    attr_accessor :document_date

    attr_accessor :document_type

    attr_accessor :account_number

    attr_accessor :gl_class

    attr_accessor :gl_type_id

    attr_accessor :gl_item_id

    attr_accessor :invoice_summary_option

    attr_accessor :cost

    attr_accessor :sales_code

    attr_accessor :memo

    attr_accessor :description

    attr_accessor :quantity

    attr_accessor :total

    attr_accessor :currency

    attr_accessor :time_entry

    attr_accessor :cost_account_number

    attr_accessor :inventory_account_number

    attr_accessor :product_account_number

    attr_accessor :tax_code

    attr_accessor :tax_code_xref

    attr_accessor :tax_agency_xref

    attr_accessor :tax_note

    attr_accessor :tax_rate

    attr_accessor :tax_rate_percent

    attr_accessor :taxable_flag

    attr_accessor :taxable2_flag

    attr_accessor :taxable3_flag

    attr_accessor :taxable4_flag

    attr_accessor :taxable5_flag

    attr_accessor :item

    attr_accessor :item_taxable_flag

    attr_accessor :item_price

    attr_accessor :item_cost

    attr_accessor :item_description

    attr_accessor :sales_description

    attr_accessor :unit_of_measure

    attr_accessor :sub_category

    attr_accessor :serialized_flag

    attr_accessor :serial_numbers

    attr_accessor :warehouse_site

    attr_accessor :warehouse_bin

    attr_accessor :shipment_method

    attr_accessor :drop_shipped_flag

    attr_accessor :item_type_xref

    attr_accessor :inventory_xref

    attr_accessor :cogs_xref

    attr_accessor :uom_schedule_xref

    attr_accessor :price_level_xref

    attr_accessor :location_xref


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'document_date' => :'documentDate',
        :'document_type' => :'documentType',
        :'account_number' => :'accountNumber',
        :'gl_class' => :'glClass',
        :'gl_type_id' => :'glTypeId',
        :'gl_item_id' => :'glItemId',
        :'invoice_summary_option' => :'invoiceSummaryOption',
        :'cost' => :'cost',
        :'sales_code' => :'salesCode',
        :'memo' => :'memo',
        :'description' => :'description',
        :'quantity' => :'quantity',
        :'total' => :'total',
        :'currency' => :'currency',
        :'time_entry' => :'timeEntry',
        :'cost_account_number' => :'costAccountNumber',
        :'inventory_account_number' => :'inventoryAccountNumber',
        :'product_account_number' => :'productAccountNumber',
        :'tax_code' => :'taxCode',
        :'tax_code_xref' => :'taxCodeXref',
        :'tax_agency_xref' => :'taxAgencyXref',
        :'tax_note' => :'taxNote',
        :'tax_rate' => :'taxRate',
        :'tax_rate_percent' => :'taxRatePercent',
        :'taxable_flag' => :'taxableFlag',
        :'taxable2_flag' => :'taxable2Flag',
        :'taxable3_flag' => :'taxable3Flag',
        :'taxable4_flag' => :'taxable4Flag',
        :'taxable5_flag' => :'taxable5Flag',
        :'item' => :'item',
        :'item_taxable_flag' => :'itemTaxableFlag',
        :'item_price' => :'itemPrice',
        :'item_cost' => :'itemCost',
        :'item_description' => :'itemDescription',
        :'sales_description' => :'salesDescription',
        :'unit_of_measure' => :'unitOfMeasure',
        :'sub_category' => :'subCategory',
        :'serialized_flag' => :'serializedFlag',
        :'serial_numbers' => :'serialNumbers',
        :'warehouse_site' => :'warehouseSite',
        :'warehouse_bin' => :'warehouseBin',
        :'shipment_method' => :'shipmentMethod',
        :'drop_shipped_flag' => :'dropShippedFlag',
        :'item_type_xref' => :'itemTypeXref',
        :'inventory_xref' => :'inventoryXref',
        :'cogs_xref' => :'cogsXref',
        :'uom_schedule_xref' => :'uomScheduleXref',
        :'price_level_xref' => :'priceLevelXref',
        :'location_xref' => :'locationXref'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'document_date' => :'DateTime',
        :'document_type' => :'String',
        :'account_number' => :'String',
        :'gl_class' => :'String',
        :'gl_type_id' => :'String',
        :'gl_item_id' => :'String',
        :'invoice_summary_option' => :'Integer',
        :'cost' => :'Float',
        :'sales_code' => :'String',
        :'memo' => :'String',
        :'description' => :'String',
        :'quantity' => :'Float',
        :'total' => :'Float',
        :'currency' => :'CurrencyReference',
        :'time_entry' => :'TimeEntryReference',
        :'cost_account_number' => :'String',
        :'inventory_account_number' => :'String',
        :'product_account_number' => :'String',
        :'tax_code' => :'TaxCodeReference',
        :'tax_code_xref' => :'String',
        :'tax_agency_xref' => :'String',
        :'tax_note' => :'String',
        :'tax_rate' => :'Float',
        :'tax_rate_percent' => :'Float',
        :'taxable_flag' => :'BOOLEAN',
        :'taxable2_flag' => :'BOOLEAN',
        :'taxable3_flag' => :'BOOLEAN',
        :'taxable4_flag' => :'BOOLEAN',
        :'taxable5_flag' => :'BOOLEAN',
        :'item' => :'IvItemReference',
        :'item_taxable_flag' => :'BOOLEAN',
        :'item_price' => :'Float',
        :'item_cost' => :'Float',
        :'item_description' => :'String',
        :'sales_description' => :'String',
        :'unit_of_measure' => :'UnitOfMeasureReference',
        :'sub_category' => :'ProductSubCategoryReference',
        :'serialized_flag' => :'BOOLEAN',
        :'serial_numbers' => :'String',
        :'warehouse_site' => :'SiteReference',
        :'warehouse_bin' => :'WarehouseBinReference',
        :'shipment_method' => :'ShipmentMethodReference',
        :'drop_shipped_flag' => :'BOOLEAN',
        :'item_type_xref' => :'String',
        :'inventory_xref' => :'String',
        :'cogs_xref' => :'String',
        :'uom_schedule_xref' => :'String',
        :'price_level_xref' => :'String',
        :'location_xref' => :'String'
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

      if attributes.has_key?(:'documentDate')
        self.document_date = attributes[:'documentDate']
      end

      if attributes.has_key?(:'documentType')
        self.document_type = attributes[:'documentType']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'glClass')
        self.gl_class = attributes[:'glClass']
      end

      if attributes.has_key?(:'glTypeId')
        self.gl_type_id = attributes[:'glTypeId']
      end

      if attributes.has_key?(:'glItemId')
        self.gl_item_id = attributes[:'glItemId']
      end

      if attributes.has_key?(:'invoiceSummaryOption')
        self.invoice_summary_option = attributes[:'invoiceSummaryOption']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'salesCode')
        self.sales_code = attributes[:'salesCode']
      end

      if attributes.has_key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'timeEntry')
        self.time_entry = attributes[:'timeEntry']
      end

      if attributes.has_key?(:'costAccountNumber')
        self.cost_account_number = attributes[:'costAccountNumber']
      end

      if attributes.has_key?(:'inventoryAccountNumber')
        self.inventory_account_number = attributes[:'inventoryAccountNumber']
      end

      if attributes.has_key?(:'productAccountNumber')
        self.product_account_number = attributes[:'productAccountNumber']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'taxCodeXref')
        self.tax_code_xref = attributes[:'taxCodeXref']
      end

      if attributes.has_key?(:'taxAgencyXref')
        self.tax_agency_xref = attributes[:'taxAgencyXref']
      end

      if attributes.has_key?(:'taxNote')
        self.tax_note = attributes[:'taxNote']
      end

      if attributes.has_key?(:'taxRate')
        self.tax_rate = attributes[:'taxRate']
      end

      if attributes.has_key?(:'taxRatePercent')
        self.tax_rate_percent = attributes[:'taxRatePercent']
      end

      if attributes.has_key?(:'taxableFlag')
        self.taxable_flag = attributes[:'taxableFlag']
      end

      if attributes.has_key?(:'taxable2Flag')
        self.taxable2_flag = attributes[:'taxable2Flag']
      end

      if attributes.has_key?(:'taxable3Flag')
        self.taxable3_flag = attributes[:'taxable3Flag']
      end

      if attributes.has_key?(:'taxable4Flag')
        self.taxable4_flag = attributes[:'taxable4Flag']
      end

      if attributes.has_key?(:'taxable5Flag')
        self.taxable5_flag = attributes[:'taxable5Flag']
      end

      if attributes.has_key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.has_key?(:'itemTaxableFlag')
        self.item_taxable_flag = attributes[:'itemTaxableFlag']
      end

      if attributes.has_key?(:'itemPrice')
        self.item_price = attributes[:'itemPrice']
      end

      if attributes.has_key?(:'itemCost')
        self.item_cost = attributes[:'itemCost']
      end

      if attributes.has_key?(:'itemDescription')
        self.item_description = attributes[:'itemDescription']
      end

      if attributes.has_key?(:'salesDescription')
        self.sales_description = attributes[:'salesDescription']
      end

      if attributes.has_key?(:'unitOfMeasure')
        self.unit_of_measure = attributes[:'unitOfMeasure']
      end

      if attributes.has_key?(:'subCategory')
        self.sub_category = attributes[:'subCategory']
      end

      if attributes.has_key?(:'serializedFlag')
        self.serialized_flag = attributes[:'serializedFlag']
      end

      if attributes.has_key?(:'serialNumbers')
        self.serial_numbers = attributes[:'serialNumbers']
      end

      if attributes.has_key?(:'warehouseSite')
        self.warehouse_site = attributes[:'warehouseSite']
      end

      if attributes.has_key?(:'warehouseBin')
        self.warehouse_bin = attributes[:'warehouseBin']
      end

      if attributes.has_key?(:'shipmentMethod')
        self.shipment_method = attributes[:'shipmentMethod']
      end

      if attributes.has_key?(:'dropShippedFlag')
        self.drop_shipped_flag = attributes[:'dropShippedFlag']
      end

      if attributes.has_key?(:'itemTypeXref')
        self.item_type_xref = attributes[:'itemTypeXref']
      end

      if attributes.has_key?(:'inventoryXref')
        self.inventory_xref = attributes[:'inventoryXref']
      end

      if attributes.has_key?(:'cogsXref')
        self.cogs_xref = attributes[:'cogsXref']
      end

      if attributes.has_key?(:'uomScheduleXref')
        self.uom_schedule_xref = attributes[:'uomScheduleXref']
      end

      if attributes.has_key?(:'priceLevelXref')
        self.price_level_xref = attributes[:'priceLevelXref']
      end

      if attributes.has_key?(:'locationXref')
        self.location_xref = attributes[:'locationXref']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          document_date == o.document_date &&
          document_type == o.document_type &&
          account_number == o.account_number &&
          gl_class == o.gl_class &&
          gl_type_id == o.gl_type_id &&
          gl_item_id == o.gl_item_id &&
          invoice_summary_option == o.invoice_summary_option &&
          cost == o.cost &&
          sales_code == o.sales_code &&
          memo == o.memo &&
          description == o.description &&
          quantity == o.quantity &&
          total == o.total &&
          currency == o.currency &&
          time_entry == o.time_entry &&
          cost_account_number == o.cost_account_number &&
          inventory_account_number == o.inventory_account_number &&
          product_account_number == o.product_account_number &&
          tax_code == o.tax_code &&
          tax_code_xref == o.tax_code_xref &&
          tax_agency_xref == o.tax_agency_xref &&
          tax_note == o.tax_note &&
          tax_rate == o.tax_rate &&
          tax_rate_percent == o.tax_rate_percent &&
          taxable_flag == o.taxable_flag &&
          taxable2_flag == o.taxable2_flag &&
          taxable3_flag == o.taxable3_flag &&
          taxable4_flag == o.taxable4_flag &&
          taxable5_flag == o.taxable5_flag &&
          item == o.item &&
          item_taxable_flag == o.item_taxable_flag &&
          item_price == o.item_price &&
          item_cost == o.item_cost &&
          item_description == o.item_description &&
          sales_description == o.sales_description &&
          unit_of_measure == o.unit_of_measure &&
          sub_category == o.sub_category &&
          serialized_flag == o.serialized_flag &&
          serial_numbers == o.serial_numbers &&
          warehouse_site == o.warehouse_site &&
          warehouse_bin == o.warehouse_bin &&
          shipment_method == o.shipment_method &&
          drop_shipped_flag == o.drop_shipped_flag &&
          item_type_xref == o.item_type_xref &&
          inventory_xref == o.inventory_xref &&
          cogs_xref == o.cogs_xref &&
          uom_schedule_xref == o.uom_schedule_xref &&
          price_level_xref == o.price_level_xref &&
          location_xref == o.location_xref
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, document_date, document_type, account_number, gl_class, gl_type_id, gl_item_id, invoice_summary_option, cost, sales_code, memo, description, quantity, total, currency, time_entry, cost_account_number, inventory_account_number, product_account_number, tax_code, tax_code_xref, tax_agency_xref, tax_note, tax_rate, tax_rate_percent, taxable_flag, taxable2_flag, taxable3_flag, taxable4_flag, taxable5_flag, item, item_taxable_flag, item_price, item_cost, item_description, sales_description, unit_of_measure, sub_category, serialized_flag, serial_numbers, warehouse_site, warehouse_bin, shipment_method, drop_shipped_flag, item_type_xref, inventory_xref, cogs_xref, uom_schedule_xref, price_level_xref, location_xref].hash
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
