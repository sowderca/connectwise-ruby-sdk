
require 'date'

module ConnectWise

  class SalesQuota
    attr_accessor :id

    attr_accessor :member

    attr_accessor :forecast_year

    attr_accessor :location

    attr_accessor :department

    attr_accessor :category

    attr_accessor :sub_category

    attr_accessor :january_revenue

    attr_accessor :january_margin

    attr_accessor :february_revenue

    attr_accessor :february_margin

    attr_accessor :march_revenue

    attr_accessor :march_margin

    attr_accessor :april_revenue

    attr_accessor :april_margin

    attr_accessor :may_revenue

    attr_accessor :may_margin

    attr_accessor :june_revenue

    attr_accessor :june_margin

    attr_accessor :july_revenue

    attr_accessor :july_margin

    attr_accessor :august_revenue

    attr_accessor :august_margin

    attr_accessor :september_revenue

    attr_accessor :september_margin

    attr_accessor :october_revenue

    attr_accessor :october_margin

    attr_accessor :november_revenue

    attr_accessor :november_margin

    attr_accessor :december_revenue

    attr_accessor :december_margin

    attr_accessor :currency

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'member' => :'member',
        :'forecast_year' => :'forecastYear',
        :'location' => :'location',
        :'department' => :'department',
        :'category' => :'category',
        :'sub_category' => :'subCategory',
        :'january_revenue' => :'januaryRevenue',
        :'january_margin' => :'januaryMargin',
        :'february_revenue' => :'februaryRevenue',
        :'february_margin' => :'februaryMargin',
        :'march_revenue' => :'marchRevenue',
        :'march_margin' => :'marchMargin',
        :'april_revenue' => :'aprilRevenue',
        :'april_margin' => :'aprilMargin',
        :'may_revenue' => :'mayRevenue',
        :'may_margin' => :'mayMargin',
        :'june_revenue' => :'juneRevenue',
        :'june_margin' => :'juneMargin',
        :'july_revenue' => :'julyRevenue',
        :'july_margin' => :'julyMargin',
        :'august_revenue' => :'augustRevenue',
        :'august_margin' => :'augustMargin',
        :'september_revenue' => :'septemberRevenue',
        :'september_margin' => :'septemberMargin',
        :'october_revenue' => :'octoberRevenue',
        :'october_margin' => :'octoberMargin',
        :'november_revenue' => :'novemberRevenue',
        :'november_margin' => :'novemberMargin',
        :'december_revenue' => :'decemberRevenue',
        :'december_margin' => :'decemberMargin',
        :'currency' => :'currency',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'member' => :'MemberReference',
        :'forecast_year' => :'Integer',
        :'location' => :'SystemLocationReference',
        :'department' => :'SystemDepartmentReference',
        :'category' => :'ProductCategoryReference',
        :'sub_category' => :'ProductSubCategoryReference',
        :'january_revenue' => :'Float',
        :'january_margin' => :'Float',
        :'february_revenue' => :'Float',
        :'february_margin' => :'Float',
        :'march_revenue' => :'Float',
        :'march_margin' => :'Float',
        :'april_revenue' => :'Float',
        :'april_margin' => :'Float',
        :'may_revenue' => :'Float',
        :'may_margin' => :'Float',
        :'june_revenue' => :'Float',
        :'june_margin' => :'Float',
        :'july_revenue' => :'Float',
        :'july_margin' => :'Float',
        :'august_revenue' => :'Float',
        :'august_margin' => :'Float',
        :'september_revenue' => :'Float',
        :'september_margin' => :'Float',
        :'october_revenue' => :'Float',
        :'october_margin' => :'Float',
        :'november_revenue' => :'Float',
        :'november_margin' => :'Float',
        :'december_revenue' => :'Float',
        :'december_margin' => :'Float',
        :'currency' => :'CurrencyReference',
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

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'forecastYear')
        self.forecast_year = attributes[:'forecastYear']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'subCategory')
        self.sub_category = attributes[:'subCategory']
      end

      if attributes.has_key?(:'januaryRevenue')
        self.january_revenue = attributes[:'januaryRevenue']
      end

      if attributes.has_key?(:'januaryMargin')
        self.january_margin = attributes[:'januaryMargin']
      end

      if attributes.has_key?(:'februaryRevenue')
        self.february_revenue = attributes[:'februaryRevenue']
      end

      if attributes.has_key?(:'februaryMargin')
        self.february_margin = attributes[:'februaryMargin']
      end

      if attributes.has_key?(:'marchRevenue')
        self.march_revenue = attributes[:'marchRevenue']
      end

      if attributes.has_key?(:'marchMargin')
        self.march_margin = attributes[:'marchMargin']
      end

      if attributes.has_key?(:'aprilRevenue')
        self.april_revenue = attributes[:'aprilRevenue']
      end

      if attributes.has_key?(:'aprilMargin')
        self.april_margin = attributes[:'aprilMargin']
      end

      if attributes.has_key?(:'mayRevenue')
        self.may_revenue = attributes[:'mayRevenue']
      end

      if attributes.has_key?(:'mayMargin')
        self.may_margin = attributes[:'mayMargin']
      end

      if attributes.has_key?(:'juneRevenue')
        self.june_revenue = attributes[:'juneRevenue']
      end

      if attributes.has_key?(:'juneMargin')
        self.june_margin = attributes[:'juneMargin']
      end

      if attributes.has_key?(:'julyRevenue')
        self.july_revenue = attributes[:'julyRevenue']
      end

      if attributes.has_key?(:'julyMargin')
        self.july_margin = attributes[:'julyMargin']
      end

      if attributes.has_key?(:'augustRevenue')
        self.august_revenue = attributes[:'augustRevenue']
      end

      if attributes.has_key?(:'augustMargin')
        self.august_margin = attributes[:'augustMargin']
      end

      if attributes.has_key?(:'septemberRevenue')
        self.september_revenue = attributes[:'septemberRevenue']
      end

      if attributes.has_key?(:'septemberMargin')
        self.september_margin = attributes[:'septemberMargin']
      end

      if attributes.has_key?(:'octoberRevenue')
        self.october_revenue = attributes[:'octoberRevenue']
      end

      if attributes.has_key?(:'octoberMargin')
        self.october_margin = attributes[:'octoberMargin']
      end

      if attributes.has_key?(:'novemberRevenue')
        self.november_revenue = attributes[:'novemberRevenue']
      end

      if attributes.has_key?(:'novemberMargin')
        self.november_margin = attributes[:'novemberMargin']
      end

      if attributes.has_key?(:'decemberRevenue')
        self.december_revenue = attributes[:'decemberRevenue']
      end

      if attributes.has_key?(:'decemberMargin')
        self.december_margin = attributes[:'decemberMargin']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @member.nil?
        invalid_properties.push("invalid value for 'member', member cannot be nil.")
      end

      if !@forecast_year.nil? && @forecast_year > 3000
        invalid_properties.push("invalid value for 'forecast_year', must be smaller than or equal to 3000.")
      end

      if !@forecast_year.nil? && @forecast_year < 1900
        invalid_properties.push("invalid value for 'forecast_year', must be greater than or equal to 1900.")
      end

      if @location.nil?
        invalid_properties.push("invalid value for 'location', location cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @member.nil?
      return false if !@forecast_year.nil? && @forecast_year > 3000
      return false if !@forecast_year.nil? && @forecast_year < 1900
      return false if @location.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] forecast_year Value to be assigned
    def forecast_year=(forecast_year)

      if !forecast_year.nil? && forecast_year > 3000
        fail ArgumentError, "invalid value for 'forecast_year', must be smaller than or equal to 3000."
      end

      if !forecast_year.nil? && forecast_year < 1900
        fail ArgumentError, "invalid value for 'forecast_year', must be greater than or equal to 1900."
      end

      @forecast_year = forecast_year
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          member == o.member &&
          forecast_year == o.forecast_year &&
          location == o.location &&
          department == o.department &&
          category == o.category &&
          sub_category == o.sub_category &&
          january_revenue == o.january_revenue &&
          january_margin == o.january_margin &&
          february_revenue == o.february_revenue &&
          february_margin == o.february_margin &&
          march_revenue == o.march_revenue &&
          march_margin == o.march_margin &&
          april_revenue == o.april_revenue &&
          april_margin == o.april_margin &&
          may_revenue == o.may_revenue &&
          may_margin == o.may_margin &&
          june_revenue == o.june_revenue &&
          june_margin == o.june_margin &&
          july_revenue == o.july_revenue &&
          july_margin == o.july_margin &&
          august_revenue == o.august_revenue &&
          august_margin == o.august_margin &&
          september_revenue == o.september_revenue &&
          september_margin == o.september_margin &&
          october_revenue == o.october_revenue &&
          october_margin == o.october_margin &&
          november_revenue == o.november_revenue &&
          november_margin == o.november_margin &&
          december_revenue == o.december_revenue &&
          december_margin == o.december_margin &&
          currency == o.currency &&
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
      [id, member, forecast_year, location, department, category, sub_category, january_revenue, january_margin, february_revenue, february_margin, march_revenue, march_margin, april_revenue, april_margin, may_revenue, may_margin, june_revenue, june_margin, july_revenue, july_margin, august_revenue, august_margin, september_revenue, september_margin, october_revenue, october_margin, november_revenue, november_margin, december_revenue, december_margin, currency, _info].hash
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
