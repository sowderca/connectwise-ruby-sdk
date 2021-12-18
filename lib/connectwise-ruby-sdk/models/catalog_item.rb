
require 'date'

module ConnectWise

  class CatalogItem
    attr_accessor :id

    attr_accessor :identifier

    attr_accessor :description

    attr_accessor :inactive_flag

    attr_accessor :subcategory

    attr_accessor :type

    # Defaults to Non-Inventory
    attr_accessor :product_class

    attr_accessor :serialized_flag

    attr_accessor :serialized_cost_flag

    attr_accessor :phase_product_flag

    attr_accessor :unit_of_measure

    attr_accessor :min_stock_level

    attr_accessor :price

    attr_accessor :cost

    attr_accessor :price_attribute

    attr_accessor :taxable_flag

    attr_accessor :customer_description

    attr_accessor :manufacturer

    attr_accessor :manufacturer_part_number

    attr_accessor :vendor

    attr_accessor :vendor_sku

    attr_accessor :notes

    attr_accessor :integration_x_ref

    attr_accessor :date_entered

    attr_accessor :category

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :custom_fields

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
        :'inactive_flag' => :'inactiveFlag',
        :'subcategory' => :'subcategory',
        :'type' => :'type',
        :'product_class' => :'productClass',
        :'serialized_flag' => :'serializedFlag',
        :'serialized_cost_flag' => :'serializedCostFlag',
        :'phase_product_flag' => :'phaseProductFlag',
        :'unit_of_measure' => :'unitOfMeasure',
        :'min_stock_level' => :'minStockLevel',
        :'price' => :'price',
        :'cost' => :'cost',
        :'price_attribute' => :'priceAttribute',
        :'taxable_flag' => :'taxableFlag',
        :'customer_description' => :'customerDescription',
        :'manufacturer' => :'manufacturer',
        :'manufacturer_part_number' => :'manufacturerPartNumber',
        :'vendor' => :'vendor',
        :'vendor_sku' => :'vendorSku',
        :'notes' => :'notes',
        :'integration_x_ref' => :'integrationXRef',
        :'date_entered' => :'dateEntered',
        :'category' => :'category',
        :'_info' => :'_info',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'identifier' => :'String',
        :'description' => :'String',
        :'inactive_flag' => :'BOOLEAN',
        :'subcategory' => :'ProductSubCategoryReference',
        :'type' => :'ProductTypeReference',
        :'product_class' => :'String',
        :'serialized_flag' => :'BOOLEAN',
        :'serialized_cost_flag' => :'BOOLEAN',
        :'phase_product_flag' => :'BOOLEAN',
        :'unit_of_measure' => :'UnitOfMeasureReference',
        :'min_stock_level' => :'Integer',
        :'price' => :'Float',
        :'cost' => :'Float',
        :'price_attribute' => :'String',
        :'taxable_flag' => :'BOOLEAN',
        :'customer_description' => :'String',
        :'manufacturer' => :'ManufacturerReference',
        :'manufacturer_part_number' => :'String',
        :'vendor' => :'CompanyReference',
        :'vendor_sku' => :'String',
        :'notes' => :'String',
        :'integration_x_ref' => :'String',
        :'date_entered' => :'String',
        :'category' => :'ProductCategoryReference',
        :'_info' => :'Metadata',
        :'custom_fields' => :'Array<CustomFieldValue>'
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

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'subcategory')
        self.subcategory = attributes[:'subcategory']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'productClass')
        self.product_class = attributes[:'productClass']
      end

      if attributes.has_key?(:'serializedFlag')
        self.serialized_flag = attributes[:'serializedFlag']
      end

      if attributes.has_key?(:'serializedCostFlag')
        self.serialized_cost_flag = attributes[:'serializedCostFlag']
      end

      if attributes.has_key?(:'phaseProductFlag')
        self.phase_product_flag = attributes[:'phaseProductFlag']
      end

      if attributes.has_key?(:'unitOfMeasure')
        self.unit_of_measure = attributes[:'unitOfMeasure']
      end

      if attributes.has_key?(:'minStockLevel')
        self.min_stock_level = attributes[:'minStockLevel']
      end

      if attributes.has_key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'priceAttribute')
        self.price_attribute = attributes[:'priceAttribute']
      end

      if attributes.has_key?(:'taxableFlag')
        self.taxable_flag = attributes[:'taxableFlag']
      end

      if attributes.has_key?(:'customerDescription')
        self.customer_description = attributes[:'customerDescription']
      end

      if attributes.has_key?(:'manufacturer')
        self.manufacturer = attributes[:'manufacturer']
      end

      if attributes.has_key?(:'manufacturerPartNumber')
        self.manufacturer_part_number = attributes[:'manufacturerPartNumber']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.has_key?(:'vendorSku')
        self.vendor_sku = attributes[:'vendorSku']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'integrationXRef')
        self.integration_x_ref = attributes[:'integrationXRef']
      end

      if attributes.has_key?(:'dateEntered')
        self.date_entered = attributes[:'dateEntered']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @identifier.nil?
        invalid_properties.push("invalid value for 'identifier', identifier cannot be nil.")
      end

      if @identifier.to_s.length > 60
        invalid_properties.push("invalid value for 'identifier', the character length must be smaller than or equal to 60.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @description.to_s.length > 60
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 60.")
      end

      if @subcategory.nil?
        invalid_properties.push("invalid value for 'subcategory', subcategory cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @customer_description.nil?
        invalid_properties.push("invalid value for 'customer_description', customer_description cannot be nil.")
      end

      if @customer_description.to_s.length > 6000
        invalid_properties.push("invalid value for 'customer_description', the character length must be smaller than or equal to 6000.")
      end

      if !@manufacturer_part_number.nil? && @manufacturer_part_number.to_s.length > 50
        invalid_properties.push("invalid value for 'manufacturer_part_number', the character length must be smaller than or equal to 50.")
      end

      if !@vendor_sku.nil? && @vendor_sku.to_s.length > 50
        invalid_properties.push("invalid value for 'vendor_sku', the character length must be smaller than or equal to 50.")
      end

      if !@integration_x_ref.nil? && @integration_x_ref.to_s.length > 50
        invalid_properties.push("invalid value for 'integration_x_ref', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @identifier.nil?
      return false if @identifier.to_s.length > 60
      return false if @description.nil?
      return false if @description.to_s.length > 60
      return false if @subcategory.nil?
      return false if @type.nil?
      product_class_validator = EnumAttributeValidator.new('String', ["Agreement", "Bundle", "Inventory", "NonInventory", "Service"])
      return false unless product_class_validator.valid?(@product_class)
      price_attribute_validator = EnumAttributeValidator.new('String', ["FixedFee", "NotToExceed", "TimeAndMaterials", "OverrideRate"])
      return false unless price_attribute_validator.valid?(@price_attribute)
      return false if @customer_description.nil?
      return false if @customer_description.to_s.length > 6000
      return false if !@manufacturer_part_number.nil? && @manufacturer_part_number.to_s.length > 50
      return false if !@vendor_sku.nil? && @vendor_sku.to_s.length > 50
      return false if !@integration_x_ref.nil? && @integration_x_ref.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if identifier.nil?
        fail ArgumentError, "identifier cannot be nil"
      end

      if identifier.to_s.length > 60
        fail ArgumentError, "invalid value for 'identifier', the character length must be smaller than or equal to 60."
      end

      @identifier = identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, "description cannot be nil"
      end

      if description.to_s.length > 60
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 60."
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_class Object to be assigned
    def product_class=(product_class)
      validator = EnumAttributeValidator.new('String', ["Agreement", "Bundle", "Inventory", "NonInventory", "Service"])
      unless validator.valid?(product_class)
        fail ArgumentError, "invalid value for 'product_class', must be one of #{validator.allowable_values}."
      end
      @product_class = product_class
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_attribute Object to be assigned
    def price_attribute=(price_attribute)
      validator = EnumAttributeValidator.new('String', ["FixedFee", "NotToExceed", "TimeAndMaterials", "OverrideRate"])
      unless validator.valid?(price_attribute)
        fail ArgumentError, "invalid value for 'price_attribute', must be one of #{validator.allowable_values}."
      end
      @price_attribute = price_attribute
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_description Value to be assigned
    def customer_description=(customer_description)
      if customer_description.nil?
        fail ArgumentError, "customer_description cannot be nil"
      end

      if customer_description.to_s.length > 6000
        fail ArgumentError, "invalid value for 'customer_description', the character length must be smaller than or equal to 6000."
      end

      @customer_description = customer_description
    end

    # Custom attribute writer method with validation
    # @param [Object] manufacturer_part_number Value to be assigned
    def manufacturer_part_number=(manufacturer_part_number)

      if !manufacturer_part_number.nil? && manufacturer_part_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'manufacturer_part_number', the character length must be smaller than or equal to 50."
      end

      @manufacturer_part_number = manufacturer_part_number
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_sku Value to be assigned
    def vendor_sku=(vendor_sku)

      if !vendor_sku.nil? && vendor_sku.to_s.length > 50
        fail ArgumentError, "invalid value for 'vendor_sku', the character length must be smaller than or equal to 50."
      end

      @vendor_sku = vendor_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] integration_x_ref Value to be assigned
    def integration_x_ref=(integration_x_ref)

      if !integration_x_ref.nil? && integration_x_ref.to_s.length > 50
        fail ArgumentError, "invalid value for 'integration_x_ref', the character length must be smaller than or equal to 50."
      end

      @integration_x_ref = integration_x_ref
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          identifier == o.identifier &&
          description == o.description &&
          inactive_flag == o.inactive_flag &&
          subcategory == o.subcategory &&
          type == o.type &&
          product_class == o.product_class &&
          serialized_flag == o.serialized_flag &&
          serialized_cost_flag == o.serialized_cost_flag &&
          phase_product_flag == o.phase_product_flag &&
          unit_of_measure == o.unit_of_measure &&
          min_stock_level == o.min_stock_level &&
          price == o.price &&
          cost == o.cost &&
          price_attribute == o.price_attribute &&
          taxable_flag == o.taxable_flag &&
          customer_description == o.customer_description &&
          manufacturer == o.manufacturer &&
          manufacturer_part_number == o.manufacturer_part_number &&
          vendor == o.vendor &&
          vendor_sku == o.vendor_sku &&
          notes == o.notes &&
          integration_x_ref == o.integration_x_ref &&
          date_entered == o.date_entered &&
          category == o.category &&
          _info == o._info &&
          custom_fields == o.custom_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, identifier, description, inactive_flag, subcategory, type, product_class, serialized_flag, serialized_cost_flag, phase_product_flag, unit_of_measure, min_stock_level, price, cost, price_attribute, taxable_flag, customer_description, manufacturer, manufacturer_part_number, vendor, vendor_sku, notes, integration_x_ref, date_entered, category, _info, custom_fields].hash
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
