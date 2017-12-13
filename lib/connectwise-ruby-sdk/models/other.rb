
require 'date'

module ConnectWise

  class Other
    attr_accessor :id

    attr_accessor :default_ldap

    attr_accessor :default_from_address

    attr_accessor :portal_url_override

    attr_accessor :site_url

    attr_accessor :logo_path

    attr_accessor :contact_sync

    attr_accessor :server_time_zone

    attr_accessor :default_calendar

    attr_accessor :default_address_format

    attr_accessor :use_ssl_flag

    attr_accessor :sync_leads_flag

    attr_accessor :include_portal_link_flag

    attr_accessor :use_expanded_format_time_flag

    attr_accessor :use_expanded_format_activity_flag

    # If true, all Members time zone will also be set to serverTimeZone. Otherwise, only My Company time zone will be updated.
    attr_accessor :update_member_time_zones_flag

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
        :'default_ldap' => :'defaultLdap',
        :'default_from_address' => :'defaultFromAddress',
        :'portal_url_override' => :'portalUrlOverride',
        :'site_url' => :'siteUrl',
        :'logo_path' => :'logoPath',
        :'contact_sync' => :'contactSync',
        :'server_time_zone' => :'serverTimeZone',
        :'default_calendar' => :'defaultCalendar',
        :'default_address_format' => :'defaultAddressFormat',
        :'use_ssl_flag' => :'useSslFlag',
        :'sync_leads_flag' => :'syncLeadsFlag',
        :'include_portal_link_flag' => :'includePortalLinkFlag',
        :'use_expanded_format_time_flag' => :'useExpandedFormatTimeFlag',
        :'use_expanded_format_activity_flag' => :'useExpandedFormatActivityFlag',
        :'update_member_time_zones_flag' => :'updateMemberTimeZonesFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'default_ldap' => :'LdapConfigurationReference',
        :'default_from_address' => :'String',
        :'portal_url_override' => :'String',
        :'site_url' => :'String',
        :'logo_path' => :'String',
        :'contact_sync' => :'String',
        :'server_time_zone' => :'TimeZoneSetupReference',
        :'default_calendar' => :'CalendarReference',
        :'default_address_format' => :'AddressFormatReference',
        :'use_ssl_flag' => :'BOOLEAN',
        :'sync_leads_flag' => :'BOOLEAN',
        :'include_portal_link_flag' => :'BOOLEAN',
        :'use_expanded_format_time_flag' => :'BOOLEAN',
        :'use_expanded_format_activity_flag' => :'BOOLEAN',
        :'update_member_time_zones_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'defaultLdap')
        self.default_ldap = attributes[:'defaultLdap']
      end

      if attributes.has_key?(:'defaultFromAddress')
        self.default_from_address = attributes[:'defaultFromAddress']
      end

      if attributes.has_key?(:'portalUrlOverride')
        self.portal_url_override = attributes[:'portalUrlOverride']
      end

      if attributes.has_key?(:'siteUrl')
        self.site_url = attributes[:'siteUrl']
      end

      if attributes.has_key?(:'logoPath')
        self.logo_path = attributes[:'logoPath']
      end

      if attributes.has_key?(:'contactSync')
        self.contact_sync = attributes[:'contactSync']
      end

      if attributes.has_key?(:'serverTimeZone')
        self.server_time_zone = attributes[:'serverTimeZone']
      end

      if attributes.has_key?(:'defaultCalendar')
        self.default_calendar = attributes[:'defaultCalendar']
      end

      if attributes.has_key?(:'defaultAddressFormat')
        self.default_address_format = attributes[:'defaultAddressFormat']
      end

      if attributes.has_key?(:'useSslFlag')
        self.use_ssl_flag = attributes[:'useSslFlag']
      end

      if attributes.has_key?(:'syncLeadsFlag')
        self.sync_leads_flag = attributes[:'syncLeadsFlag']
      end

      if attributes.has_key?(:'includePortalLinkFlag')
        self.include_portal_link_flag = attributes[:'includePortalLinkFlag']
      end

      if attributes.has_key?(:'useExpandedFormatTimeFlag')
        self.use_expanded_format_time_flag = attributes[:'useExpandedFormatTimeFlag']
      end

      if attributes.has_key?(:'useExpandedFormatActivityFlag')
        self.use_expanded_format_activity_flag = attributes[:'useExpandedFormatActivityFlag']
      end

      if attributes.has_key?(:'updateMemberTimeZonesFlag')
        self.update_member_time_zones_flag = attributes[:'updateMemberTimeZonesFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @default_from_address.nil?
        invalid_properties.push("invalid value for 'default_from_address', default_from_address cannot be nil.")
      end

      if @default_from_address.to_s.length > 50
        invalid_properties.push("invalid value for 'default_from_address', the character length must be smaller than or equal to 50.")
      end

      if @portal_url_override.nil?
        invalid_properties.push("invalid value for 'portal_url_override', portal_url_override cannot be nil.")
      end

      if @portal_url_override.to_s.length > 100
        invalid_properties.push("invalid value for 'portal_url_override', the character length must be smaller than or equal to 100.")
      end

      if @site_url.nil?
        invalid_properties.push("invalid value for 'site_url', site_url cannot be nil.")
      end

      if @site_url.to_s.length > 100
        invalid_properties.push("invalid value for 'site_url', the character length must be smaller than or equal to 100.")
      end

      if !@logo_path.nil? && @logo_path.to_s.length > 200
        invalid_properties.push("invalid value for 'logo_path', the character length must be smaller than or equal to 200.")
      end

      if @server_time_zone.nil?
        invalid_properties.push("invalid value for 'server_time_zone', server_time_zone cannot be nil.")
      end

      if @default_calendar.nil?
        invalid_properties.push("invalid value for 'default_calendar', default_calendar cannot be nil.")
      end

      if @default_address_format.nil?
        invalid_properties.push("invalid value for 'default_address_format', default_address_format cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @default_from_address.nil?
      return false if @default_from_address.to_s.length > 50
      return false if @portal_url_override.nil?
      return false if @portal_url_override.to_s.length > 100
      return false if @site_url.nil?
      return false if @site_url.to_s.length > 100
      return false if !@logo_path.nil? && @logo_path.to_s.length > 200
      contact_sync_validator = EnumAttributeValidator.new('String', ["FL", "LF", "CFL", "CLF"])
      return false unless contact_sync_validator.valid?(@contact_sync)
      return false if @server_time_zone.nil?
      return false if @default_calendar.nil?
      return false if @default_address_format.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] default_from_address Value to be assigned
    def default_from_address=(default_from_address)
      if default_from_address.nil?
        fail ArgumentError, "default_from_address cannot be nil"
      end

      if default_from_address.to_s.length > 50
        fail ArgumentError, "invalid value for 'default_from_address', the character length must be smaller than or equal to 50."
      end

      @default_from_address = default_from_address
    end

    # Custom attribute writer method with validation
    # @param [Object] portal_url_override Value to be assigned
    def portal_url_override=(portal_url_override)
      if portal_url_override.nil?
        fail ArgumentError, "portal_url_override cannot be nil"
      end

      if portal_url_override.to_s.length > 100
        fail ArgumentError, "invalid value for 'portal_url_override', the character length must be smaller than or equal to 100."
      end

      @portal_url_override = portal_url_override
    end

    # Custom attribute writer method with validation
    # @param [Object] site_url Value to be assigned
    def site_url=(site_url)
      if site_url.nil?
        fail ArgumentError, "site_url cannot be nil"
      end

      if site_url.to_s.length > 100
        fail ArgumentError, "invalid value for 'site_url', the character length must be smaller than or equal to 100."
      end

      @site_url = site_url
    end

    # Custom attribute writer method with validation
    # @param [Object] logo_path Value to be assigned
    def logo_path=(logo_path)

      if !logo_path.nil? && logo_path.to_s.length > 200
        fail ArgumentError, "invalid value for 'logo_path', the character length must be smaller than or equal to 200."
      end

      @logo_path = logo_path
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] contact_sync Object to be assigned
    def contact_sync=(contact_sync)
      validator = EnumAttributeValidator.new('String', ["FL", "LF", "CFL", "CLF"])
      unless validator.valid?(contact_sync)
        fail ArgumentError, "invalid value for 'contact_sync', must be one of #{validator.allowable_values}."
      end
      @contact_sync = contact_sync
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          default_ldap == o.default_ldap &&
          default_from_address == o.default_from_address &&
          portal_url_override == o.portal_url_override &&
          site_url == o.site_url &&
          logo_path == o.logo_path &&
          contact_sync == o.contact_sync &&
          server_time_zone == o.server_time_zone &&
          default_calendar == o.default_calendar &&
          default_address_format == o.default_address_format &&
          use_ssl_flag == o.use_ssl_flag &&
          sync_leads_flag == o.sync_leads_flag &&
          include_portal_link_flag == o.include_portal_link_flag &&
          use_expanded_format_time_flag == o.use_expanded_format_time_flag &&
          use_expanded_format_activity_flag == o.use_expanded_format_activity_flag &&
          update_member_time_zones_flag == o.update_member_time_zones_flag &&
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
      [id, default_ldap, default_from_address, portal_url_override, site_url, logo_path, contact_sync, server_time_zone, default_calendar, default_address_format, use_ssl_flag, sync_leads_flag, include_portal_link_flag, use_expanded_format_time_flag, use_expanded_format_activity_flag, update_member_time_zones_flag, _info].hash
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
