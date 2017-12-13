
require 'date'

module ConnectWise

  class GLExportPurchaseTransactionDetail
    attr_accessor :id

    attr_accessor :document_date

    attr_accessor :gl_class

    attr_accessor :gl_type_id

    attr_accessor :gl_item_id

    attr_accessor :sales_code

    attr_accessor :description

    attr_accessor :cost

    attr_accessor :memo

    attr_accessor :tax_note

    attr_accessor :vendor_number

    attr_accessor :account_number

    attr_accessor :cost_account_number

    attr_accessor :inventory_account_number

    attr_accessor :vendor_account_number

    attr_accessor :item

    attr_accessor :item_description

    attr_accessor :sales_description

    attr_accessor :taxable

    attr_accessor :item_price

    attr_accessor :item_cost

    attr_accessor :unit_of_measure

    attr_accessor :quantity

    attr_accessor :total

    attr_accessor :currency

    attr_accessor :serialized_flag

    attr_accessor :serial_numbers

    attr_accessor :drop_shipped_flag

    attr_accessor :line_number

    attr_accessor :warehouse_bin

    attr_accessor :warehouse_site

    attr_accessor :sub_category

    attr_accessor :shipment_method

    attr_accessor :item_type_xref

    attr_accessor :inventory_xref

    attr_accessor :cogs_xref

    attr_accessor :uom_schedule_xref

    attr_accessor :price_level_xref

    attr_accessor :location_xref

    attr_accessor :tax_code

    attr_accessor :purchase_header_tax_group

    attr_accessor :tax_code_xref

    attr_accessor :tax_rate

    attr_accessor :tax_agency_xref


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'document_date' => :'documentDate',
        :'gl_class' => :'glClass',
        :'gl_type_id' => :'glTypeId',
        :'gl_item_id' => :'glItemId',
        :'sales_code' => :'salesCode',
        :'description' => :'description',
        :'cost' => :'cost',
        :'memo' => :'memo',
        :'tax_note' => :'taxNote',
        :'vendor_number' => :'vendorNumber',
        :'account_number' => :'accountNumber',
        :'cost_account_number' => :'costAccountNumber',
        :'inventory_account_number' => :'inventoryAccountNumber',
        :'vendor_account_number' => :'vendorAccountNumber',
        :'item' => :'item',
        :'item_description' => :'itemDescription',
        :'sales_description' => :'salesDescription',
        :'taxable' => :'taxable',
        :'item_price' => :'itemPrice',
        :'item_cost' => :'itemCost',
        :'unit_of_measure' => :'unitOfMeasure',
        :'quantity' => :'quantity',
        :'total' => :'total',
        :'currency' => :'currency',
        :'serialized_flag' => :'serializedFlag',
        :'serial_numbers' => :'serialNumbers',
        :'drop_shipped_flag' => :'dropShippedFlag',
        :'line_number' => :'lineNumber',
        :'warehouse_bin' => :'warehouseBin',
        :'warehouse_site' => :'warehouseSite',
        :'sub_category' => :'subCategory',
        :'shipment_method' => :'shipmentMethod',
        :'item_type_xref' => :'itemTypeXref',
        :'inventory_xref' => :'inventoryXref',
        :'cogs_xref' => :'cogsXref',
        :'uom_schedule_xref' => :'uomScheduleXref',
        :'price_level_xref' => :'priceLevelXref',
        :'location_xref' => :'locationXref',
        :'tax_code' => :'taxCode',
        :'purchase_header_tax_group' => :'purchaseHeaderTaxGroup',
        :'tax_code_xref' => :'taxCodeXref',
        :'tax_rate' => :'taxRate',
        :'tax_agency_xref' => :'taxAgencyXref'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'document_date' => :'DateTime',
        :'gl_class' => :'String',
        :'gl_type_id' => :'String',
        :'gl_item_id' => :'String',
        :'sales_code' => :'String',
        :'description' => :'String',
        :'cost' => :'Float',
        :'memo' => :'String',
        :'tax_note' => :'String',
        :'vendor_number' => :'String',
        :'account_number' => :'String',
        :'cost_account_number' => :'String',
        :'inventory_account_number' => :'String',
        :'vendor_account_number' => :'String',
        :'item' => :'IvItemReference',
        :'item_description' => :'String',
        :'sales_description' => :'String',
        :'taxable' => :'BOOLEAN',
        :'item_price' => :'Float',
        :'item_cost' => :'Float',
        :'unit_of_measure' => :'UnitOfMeasureReference',
        :'quantity' => :'Float',
        :'total' => :'Float',
        :'currency' => :'CurrencyReference',
        :'serialized_flag' => :'BOOLEAN',
        :'serial_numbers' => :'String',
        :'drop_shipped_flag' => :'BOOLEAN',
        :'line_number' => :'Integer',
        :'warehouse_bin' => :'WarehouseBinReference',
        :'warehouse_site' => :'SiteReference',
        :'sub_category' => :'ProductSubCategoryReference',
        :'shipment_method' => :'ShipmentMethodReference',
        :'item_type_xref' => :'String',
        :'inventory_xref' => :'String',
        :'cogs_xref' => :'String',
        :'uom_schedule_xref' => :'String',
        :'price_level_xref' => :'String',
        :'location_xref' => :'String',
        :'tax_code' => :'TaxCodeReference',
        :'purchase_header_tax_group' => :'String',
        :'tax_code_xref' => :'String',
        :'tax_rate' => :'Float',
        :'tax_agency_xref' => :'String'
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

      if attributes.has_key?(:'glClass')
        self.gl_class = attributes[:'glClass']
      end

      if attributes.has_key?(:'glTypeId')
        self.gl_type_id = attributes[:'glTypeId']
      end

      if attributes.has_key?(:'glItemId')
        self.gl_item_id = attributes[:'glItemId']
      end

      if attributes.has_key?(:'salesCode')
        self.sales_code = attributes[:'salesCode']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.has_key?(:'taxNote')
        self.tax_note = attributes[:'taxNote']
      end

      if attributes.has_key?(:'vendorNumber')
        self.vendor_number = attributes[:'vendorNumber']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'costAccountNumber')
        self.cost_account_number = attributes[:'costAccountNumber']
      end

      if attributes.has_key?(:'inventoryAccountNumber')
        self.inventory_account_number = attributes[:'inventoryAccountNumber']
      end

      if attributes.has_key?(:'vendorAccountNumber')
        self.vendor_account_number = attributes[:'vendorAccountNumber']
      end

      if attributes.has_key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.has_key?(:'itemDescription')
        self.item_description = attributes[:'itemDescription']
      end

      if attributes.has_key?(:'salesDescription')
        self.sales_description = attributes[:'salesDescription']
      end

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'itemPrice')
        self.item_price = attributes[:'itemPrice']
      end

      if attributes.has_key?(:'itemCost')
        self.item_cost = attributes[:'itemCost']
      end

      if attributes.has_key?(:'unitOfMeasure')
        self.unit_of_measure = attributes[:'unitOfMeasure']
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

      if attributes.has_key?(:'serializedFlag')
        self.serialized_flag = attributes[:'serializedFlag']
      end

      if attributes.has_key?(:'serialNumbers')
        self.serial_numbers = attributes[:'serialNumbers']
      end

      if attributes.has_key?(:'dropShippedFlag')
        self.drop_shipped_flag = attributes[:'dropShippedFlag']
      end

      if attributes.has_key?(:'lineNumber')
        self.line_number = attributes[:'lineNumber']
      end

      if attributes.has_key?(:'warehouseBin')
        self.warehouse_bin = attributes[:'warehouseBin']
      end

      if attributes.has_key?(:'warehouseSite')
        self.warehouse_site = attributes[:'warehouseSite']
      end

      if attributes.has_key?(:'subCategory')
        self.sub_category = attributes[:'subCategory']
      end

      if attributes.has_key?(:'shipmentMethod')
        self.shipment_method = attributes[:'shipmentMethod']
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

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'purchaseHeaderTaxGroup')
        self.purchase_header_tax_group = attributes[:'purchaseHeaderTaxGroup']
      end

      if attributes.has_key?(:'taxCodeXref')
        self.tax_code_xref = attributes[:'taxCodeXref']
      end

      if attributes.has_key?(:'taxRate')
        self.tax_rate = attributes[:'taxRate']
      end

      if attributes.has_key?(:'taxAgencyXref')
        self.tax_agency_xref = attributes[:'taxAgencyXref']
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
          gl_class == o.gl_class &&
          gl_type_id == o.gl_type_id &&
          gl_item_id == o.gl_item_id &&
          sales_code == o.sales_code &&
          description == o.description &&
          cost == o.cost &&
          memo == o.memo &&
          tax_note == o.tax_note &&
          vendor_number == o.vendor_number &&
          account_number == o.account_number &&
          cost_account_number == o.cost_account_number &&
          inventory_account_number == o.inventory_account_number &&
          vendor_account_number == o.vendor_account_number &&
          item == o.item &&
          item_description == o.item_description &&
          sales_description == o.sales_description &&
          taxable == o.taxable &&
          item_price == o.item_price &&
          item_cost == o.item_cost &&
          unit_of_measure == o.unit_of_measure &&
          quantity == o.quantity &&
          total == o.total &&
          currency == o.currency &&
          serialized_flag == o.serialized_flag &&
          serial_numbers == o.serial_numbers &&
          drop_shipped_flag == o.drop_shipped_flag &&
          line_number == o.line_number &&
          warehouse_bin == o.warehouse_bin &&
          warehouse_site == o.warehouse_site &&
          sub_category == o.sub_category &&
          shipment_method == o.shipment_method &&
          item_type_xref == o.item_type_xref &&
          inventory_xref == o.inventory_xref &&
          cogs_xref == o.cogs_xref &&
          uom_schedule_xref == o.uom_schedule_xref &&
          price_level_xref == o.price_level_xref &&
          location_xref == o.location_xref &&
          tax_code == o.tax_code &&
          purchase_header_tax_group == o.purchase_header_tax_group &&
          tax_code_xref == o.tax_code_xref &&
          tax_rate == o.tax_rate &&
          tax_agency_xref == o.tax_agency_xref
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, document_date, gl_class, gl_type_id, gl_item_id, sales_code, description, cost, memo, tax_note, vendor_number, account_number, cost_account_number, inventory_account_number, vendor_account_number, item, item_description, sales_description, taxable, item_price, item_cost, unit_of_measure, quantity, total, currency, serialized_flag, serial_numbers, drop_shipped_flag, line_number, warehouse_bin, warehouse_site, sub_category, shipment_method, item_type_xref, inventory_xref, cogs_xref, uom_schedule_xref, price_level_xref, location_xref, tax_code, purchase_header_tax_group, tax_code_xref, tax_rate, tax_agency_xref].hash
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
