
require 'date'

module ConnectWise

  class Purchasing
    attr_accessor :id

    attr_accessor :starting_purchase_order_num

    attr_accessor :purchase_order_prefix

    attr_accessor :purchase_order_suffix

    attr_accessor :prefix_suffix_type

    attr_accessor :disable_cost_updates_flag

    attr_accessor :disable_negative_inventory_flag

    attr_accessor :costing_method

    attr_accessor :auto_close_purchase_order_flag

    attr_accessor :auto_close_purchase_order_item_flag

    attr_accessor :auto_approve_purchase_order_flag

    attr_accessor :tax_purchase_order_flag

    attr_accessor :tax_freight_flag

    attr_accessor :use_vendor_tax_code_flag

    attr_accessor :num_decimal_places

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
        :'starting_purchase_order_num' => :'startingPurchaseOrderNum',
        :'purchase_order_prefix' => :'purchaseOrderPrefix',
        :'purchase_order_suffix' => :'purchaseOrderSuffix',
        :'prefix_suffix_type' => :'prefixSuffixType',
        :'disable_cost_updates_flag' => :'disableCostUpdatesFlag',
        :'disable_negative_inventory_flag' => :'disableNegativeInventoryFlag',
        :'costing_method' => :'costingMethod',
        :'auto_close_purchase_order_flag' => :'autoClosePurchaseOrderFlag',
        :'auto_close_purchase_order_item_flag' => :'autoClosePurchaseOrderItemFlag',
        :'auto_approve_purchase_order_flag' => :'autoApprovePurchaseOrderFlag',
        :'tax_purchase_order_flag' => :'taxPurchaseOrderFlag',
        :'tax_freight_flag' => :'taxFreightFlag',
        :'use_vendor_tax_code_flag' => :'useVendorTaxCodeFlag',
        :'num_decimal_places' => :'numDecimalPlaces',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'starting_purchase_order_num' => :'Integer',
        :'purchase_order_prefix' => :'String',
        :'purchase_order_suffix' => :'String',
        :'prefix_suffix_type' => :'String',
        :'disable_cost_updates_flag' => :'BOOLEAN',
        :'disable_negative_inventory_flag' => :'BOOLEAN',
        :'costing_method' => :'String',
        :'auto_close_purchase_order_flag' => :'BOOLEAN',
        :'auto_close_purchase_order_item_flag' => :'BOOLEAN',
        :'auto_approve_purchase_order_flag' => :'BOOLEAN',
        :'tax_purchase_order_flag' => :'BOOLEAN',
        :'tax_freight_flag' => :'BOOLEAN',
        :'use_vendor_tax_code_flag' => :'BOOLEAN',
        :'num_decimal_places' => :'Integer',
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

      if attributes.has_key?(:'startingPurchaseOrderNum')
        self.starting_purchase_order_num = attributes[:'startingPurchaseOrderNum']
      end

      if attributes.has_key?(:'purchaseOrderPrefix')
        self.purchase_order_prefix = attributes[:'purchaseOrderPrefix']
      end

      if attributes.has_key?(:'purchaseOrderSuffix')
        self.purchase_order_suffix = attributes[:'purchaseOrderSuffix']
      end

      if attributes.has_key?(:'prefixSuffixType')
        self.prefix_suffix_type = attributes[:'prefixSuffixType']
      end

      if attributes.has_key?(:'disableCostUpdatesFlag')
        self.disable_cost_updates_flag = attributes[:'disableCostUpdatesFlag']
      end

      if attributes.has_key?(:'disableNegativeInventoryFlag')
        self.disable_negative_inventory_flag = attributes[:'disableNegativeInventoryFlag']
      end

      if attributes.has_key?(:'costingMethod')
        self.costing_method = attributes[:'costingMethod']
      end

      if attributes.has_key?(:'autoClosePurchaseOrderFlag')
        self.auto_close_purchase_order_flag = attributes[:'autoClosePurchaseOrderFlag']
      end

      if attributes.has_key?(:'autoClosePurchaseOrderItemFlag')
        self.auto_close_purchase_order_item_flag = attributes[:'autoClosePurchaseOrderItemFlag']
      end

      if attributes.has_key?(:'autoApprovePurchaseOrderFlag')
        self.auto_approve_purchase_order_flag = attributes[:'autoApprovePurchaseOrderFlag']
      end

      if attributes.has_key?(:'taxPurchaseOrderFlag')
        self.tax_purchase_order_flag = attributes[:'taxPurchaseOrderFlag']
      end

      if attributes.has_key?(:'taxFreightFlag')
        self.tax_freight_flag = attributes[:'taxFreightFlag']
      end

      if attributes.has_key?(:'useVendorTaxCodeFlag')
        self.use_vendor_tax_code_flag = attributes[:'useVendorTaxCodeFlag']
      end

      if attributes.has_key?(:'numDecimalPlaces')
        self.num_decimal_places = attributes[:'numDecimalPlaces']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @starting_purchase_order_num.nil?
        invalid_properties.push("invalid value for 'starting_purchase_order_num', starting_purchase_order_num cannot be nil.")
      end

      if @starting_purchase_order_num > 2147483647
        invalid_properties.push("invalid value for 'starting_purchase_order_num', must be smaller than or equal to 2147483647.")
      end

      if @starting_purchase_order_num < 0
        invalid_properties.push("invalid value for 'starting_purchase_order_num', must be greater than or equal to 0.")
      end

      if !@purchase_order_prefix.nil? && @purchase_order_prefix.to_s.length > 5
        invalid_properties.push("invalid value for 'purchase_order_prefix', the character length must be smaller than or equal to 5.")
      end

      if !@purchase_order_suffix.nil? && @purchase_order_suffix.to_s.length > 5
        invalid_properties.push("invalid value for 'purchase_order_suffix', the character length must be smaller than or equal to 5.")
      end

      if @costing_method.nil?
        invalid_properties.push("invalid value for 'costing_method', costing_method cannot be nil.")
      end

      if !@num_decimal_places.nil? && @num_decimal_places > 2147483647
        invalid_properties.push("invalid value for 'num_decimal_places', must be smaller than or equal to 2147483647.")
      end

      if !@num_decimal_places.nil? && @num_decimal_places < 0
        invalid_properties.push("invalid value for 'num_decimal_places', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @starting_purchase_order_num.nil?
      return false if @starting_purchase_order_num > 2147483647
      return false if @starting_purchase_order_num < 0
      return false if !@purchase_order_prefix.nil? && @purchase_order_prefix.to_s.length > 5
      return false if !@purchase_order_suffix.nil? && @purchase_order_suffix.to_s.length > 5
      prefix_suffix_type_validator = EnumAttributeValidator.new('String', ["Prefix", "Suffix"])
      return false unless prefix_suffix_type_validator.valid?(@prefix_suffix_type)
      return false if @costing_method.nil?
      costing_method_validator = EnumAttributeValidator.new('String', ["FIFO", "LIFO", "AverageCosting"])
      return false unless costing_method_validator.valid?(@costing_method)
      return false if !@num_decimal_places.nil? && @num_decimal_places > 2147483647
      return false if !@num_decimal_places.nil? && @num_decimal_places < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] starting_purchase_order_num Value to be assigned
    def starting_purchase_order_num=(starting_purchase_order_num)
      if starting_purchase_order_num.nil?
        fail ArgumentError, "starting_purchase_order_num cannot be nil"
      end

      if starting_purchase_order_num > 2147483647
        fail ArgumentError, "invalid value for 'starting_purchase_order_num', must be smaller than or equal to 2147483647."
      end

      if starting_purchase_order_num < 0
        fail ArgumentError, "invalid value for 'starting_purchase_order_num', must be greater than or equal to 0."
      end

      @starting_purchase_order_num = starting_purchase_order_num
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_order_prefix Value to be assigned
    def purchase_order_prefix=(purchase_order_prefix)

      if !purchase_order_prefix.nil? && purchase_order_prefix.to_s.length > 5
        fail ArgumentError, "invalid value for 'purchase_order_prefix', the character length must be smaller than or equal to 5."
      end

      @purchase_order_prefix = purchase_order_prefix
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_order_suffix Value to be assigned
    def purchase_order_suffix=(purchase_order_suffix)

      if !purchase_order_suffix.nil? && purchase_order_suffix.to_s.length > 5
        fail ArgumentError, "invalid value for 'purchase_order_suffix', the character length must be smaller than or equal to 5."
      end

      @purchase_order_suffix = purchase_order_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prefix_suffix_type Object to be assigned
    def prefix_suffix_type=(prefix_suffix_type)
      validator = EnumAttributeValidator.new('String', ["Prefix", "Suffix"])
      unless validator.valid?(prefix_suffix_type)
        fail ArgumentError, "invalid value for 'prefix_suffix_type', must be one of #{validator.allowable_values}."
      end
      @prefix_suffix_type = prefix_suffix_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] costing_method Object to be assigned
    def costing_method=(costing_method)
      validator = EnumAttributeValidator.new('String', ["FIFO", "LIFO", "AverageCosting"])
      unless validator.valid?(costing_method)
        fail ArgumentError, "invalid value for 'costing_method', must be one of #{validator.allowable_values}."
      end
      @costing_method = costing_method
    end

    # Custom attribute writer method with validation
    # @param [Object] num_decimal_places Value to be assigned
    def num_decimal_places=(num_decimal_places)

      if !num_decimal_places.nil? && num_decimal_places > 2147483647
        fail ArgumentError, "invalid value for 'num_decimal_places', must be smaller than or equal to 2147483647."
      end

      if !num_decimal_places.nil? && num_decimal_places < 0
        fail ArgumentError, "invalid value for 'num_decimal_places', must be greater than or equal to 0."
      end

      @num_decimal_places = num_decimal_places
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          starting_purchase_order_num == o.starting_purchase_order_num &&
          purchase_order_prefix == o.purchase_order_prefix &&
          purchase_order_suffix == o.purchase_order_suffix &&
          prefix_suffix_type == o.prefix_suffix_type &&
          disable_cost_updates_flag == o.disable_cost_updates_flag &&
          disable_negative_inventory_flag == o.disable_negative_inventory_flag &&
          costing_method == o.costing_method &&
          auto_close_purchase_order_flag == o.auto_close_purchase_order_flag &&
          auto_close_purchase_order_item_flag == o.auto_close_purchase_order_item_flag &&
          auto_approve_purchase_order_flag == o.auto_approve_purchase_order_flag &&
          tax_purchase_order_flag == o.tax_purchase_order_flag &&
          tax_freight_flag == o.tax_freight_flag &&
          use_vendor_tax_code_flag == o.use_vendor_tax_code_flag &&
          num_decimal_places == o.num_decimal_places &&
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
      [id, starting_purchase_order_num, purchase_order_prefix, purchase_order_suffix, prefix_suffix_type, disable_cost_updates_flag, disable_negative_inventory_flag, costing_method, auto_close_purchase_order_flag, auto_close_purchase_order_item_flag, auto_approve_purchase_order_flag, tax_purchase_order_flag, tax_freight_flag, use_vendor_tax_code_flag, num_decimal_places, _info].hash
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
