
require 'date'

module ConnectWise

  class CompanyManagementSummary
    attr_accessor :id

    attr_accessor :management_solution

    attr_accessor :group_identifier

    # deviceType is required if the managementSolution is Legacy
    attr_accessor :device_type

    attr_accessor :agreement

    attr_accessor :snmp_machines

    attr_accessor :total_workstations

    attr_accessor :total_servers

    attr_accessor :total_windows_servers

    attr_accessor :total_windows_workstations

    attr_accessor :total_managed_machines

    attr_accessor :servers_offline

    attr_accessor :servers_disk_space_low

    attr_accessor :failed_backup_jobs

    attr_accessor :total_notifications

    attr_accessor :successful_backup_jobs

    attr_accessor :server_availability

    attr_accessor :viruses_removed

    attr_accessor :spyware_items_removed

    attr_accessor :windows_patches_installed

    attr_accessor :disk_cleanups

    attr_accessor :disk_defragmentations

    attr_accessor :fully_patched_machines

    attr_accessor :missing_one_two_patches_machines

    attr_accessor :missing_three_five_patches_machines

    attr_accessor :missing_more_five_patches_machines

    attr_accessor :missing_unscanned_patches_machines

    attr_accessor :alerts_generated

    attr_accessor :internet_connectivity

    attr_accessor :disk_space_cleaned_mb

    attr_accessor :missing_security_patches

    attr_accessor :cpu_utilization

    attr_accessor :memory_utilization

    attr_accessor :company

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
        :'management_solution' => :'managementSolution',
        :'group_identifier' => :'groupIdentifier',
        :'device_type' => :'deviceType',
        :'agreement' => :'agreement',
        :'snmp_machines' => :'snmpMachines',
        :'total_workstations' => :'totalWorkstations',
        :'total_servers' => :'totalServers',
        :'total_windows_servers' => :'totalWindowsServers',
        :'total_windows_workstations' => :'totalWindowsWorkstations',
        :'total_managed_machines' => :'totalManagedMachines',
        :'servers_offline' => :'serversOffline',
        :'servers_disk_space_low' => :'serversDiskSpaceLow',
        :'failed_backup_jobs' => :'failedBackupJobs',
        :'total_notifications' => :'totalNotifications',
        :'successful_backup_jobs' => :'successfulBackupJobs',
        :'server_availability' => :'serverAvailability',
        :'viruses_removed' => :'virusesRemoved',
        :'spyware_items_removed' => :'spywareItemsRemoved',
        :'windows_patches_installed' => :'windowsPatchesInstalled',
        :'disk_cleanups' => :'diskCleanups',
        :'disk_defragmentations' => :'diskDefragmentations',
        :'fully_patched_machines' => :'fullyPatchedMachines',
        :'missing_one_two_patches_machines' => :'missingOneTwoPatchesMachines',
        :'missing_three_five_patches_machines' => :'missingThreeFivePatchesMachines',
        :'missing_more_five_patches_machines' => :'missingMoreFivePatchesMachines',
        :'missing_unscanned_patches_machines' => :'missingUnscannedPatchesMachines',
        :'alerts_generated' => :'alertsGenerated',
        :'internet_connectivity' => :'internetConnectivity',
        :'disk_space_cleaned_mb' => :'diskSpaceCleanedMb',
        :'missing_security_patches' => :'missingSecurityPatches',
        :'cpu_utilization' => :'cpuUtilization',
        :'memory_utilization' => :'memoryUtilization',
        :'company' => :'company',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'management_solution' => :'ManagementSolutionReference',
        :'group_identifier' => :'String',
        :'device_type' => :'String',
        :'agreement' => :'AgreementReference',
        :'snmp_machines' => :'Integer',
        :'total_workstations' => :'Integer',
        :'total_servers' => :'Integer',
        :'total_windows_servers' => :'Integer',
        :'total_windows_workstations' => :'Integer',
        :'total_managed_machines' => :'Integer',
        :'servers_offline' => :'Integer',
        :'servers_disk_space_low' => :'Integer',
        :'failed_backup_jobs' => :'Integer',
        :'total_notifications' => :'Integer',
        :'successful_backup_jobs' => :'Integer',
        :'server_availability' => :'Integer',
        :'viruses_removed' => :'Integer',
        :'spyware_items_removed' => :'Integer',
        :'windows_patches_installed' => :'Integer',
        :'disk_cleanups' => :'Integer',
        :'disk_defragmentations' => :'Integer',
        :'fully_patched_machines' => :'Integer',
        :'missing_one_two_patches_machines' => :'Integer',
        :'missing_three_five_patches_machines' => :'Integer',
        :'missing_more_five_patches_machines' => :'Integer',
        :'missing_unscanned_patches_machines' => :'Integer',
        :'alerts_generated' => :'String',
        :'internet_connectivity' => :'Float',
        :'disk_space_cleaned_mb' => :'Integer',
        :'missing_security_patches' => :'String',
        :'cpu_utilization' => :'Float',
        :'memory_utilization' => :'Float',
        :'company' => :'CompanyReference',
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

      if attributes.has_key?(:'managementSolution')
        self.management_solution = attributes[:'managementSolution']
      end

      if attributes.has_key?(:'groupIdentifier')
        self.group_identifier = attributes[:'groupIdentifier']
      end

      if attributes.has_key?(:'deviceType')
        self.device_type = attributes[:'deviceType']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'snmpMachines')
        self.snmp_machines = attributes[:'snmpMachines']
      end

      if attributes.has_key?(:'totalWorkstations')
        self.total_workstations = attributes[:'totalWorkstations']
      end

      if attributes.has_key?(:'totalServers')
        self.total_servers = attributes[:'totalServers']
      end

      if attributes.has_key?(:'totalWindowsServers')
        self.total_windows_servers = attributes[:'totalWindowsServers']
      end

      if attributes.has_key?(:'totalWindowsWorkstations')
        self.total_windows_workstations = attributes[:'totalWindowsWorkstations']
      end

      if attributes.has_key?(:'totalManagedMachines')
        self.total_managed_machines = attributes[:'totalManagedMachines']
      end

      if attributes.has_key?(:'serversOffline')
        self.servers_offline = attributes[:'serversOffline']
      end

      if attributes.has_key?(:'serversDiskSpaceLow')
        self.servers_disk_space_low = attributes[:'serversDiskSpaceLow']
      end

      if attributes.has_key?(:'failedBackupJobs')
        self.failed_backup_jobs = attributes[:'failedBackupJobs']
      end

      if attributes.has_key?(:'totalNotifications')
        self.total_notifications = attributes[:'totalNotifications']
      end

      if attributes.has_key?(:'successfulBackupJobs')
        self.successful_backup_jobs = attributes[:'successfulBackupJobs']
      end

      if attributes.has_key?(:'serverAvailability')
        self.server_availability = attributes[:'serverAvailability']
      end

      if attributes.has_key?(:'virusesRemoved')
        self.viruses_removed = attributes[:'virusesRemoved']
      end

      if attributes.has_key?(:'spywareItemsRemoved')
        self.spyware_items_removed = attributes[:'spywareItemsRemoved']
      end

      if attributes.has_key?(:'windowsPatchesInstalled')
        self.windows_patches_installed = attributes[:'windowsPatchesInstalled']
      end

      if attributes.has_key?(:'diskCleanups')
        self.disk_cleanups = attributes[:'diskCleanups']
      end

      if attributes.has_key?(:'diskDefragmentations')
        self.disk_defragmentations = attributes[:'diskDefragmentations']
      end

      if attributes.has_key?(:'fullyPatchedMachines')
        self.fully_patched_machines = attributes[:'fullyPatchedMachines']
      end

      if attributes.has_key?(:'missingOneTwoPatchesMachines')
        self.missing_one_two_patches_machines = attributes[:'missingOneTwoPatchesMachines']
      end

      if attributes.has_key?(:'missingThreeFivePatchesMachines')
        self.missing_three_five_patches_machines = attributes[:'missingThreeFivePatchesMachines']
      end

      if attributes.has_key?(:'missingMoreFivePatchesMachines')
        self.missing_more_five_patches_machines = attributes[:'missingMoreFivePatchesMachines']
      end

      if attributes.has_key?(:'missingUnscannedPatchesMachines')
        self.missing_unscanned_patches_machines = attributes[:'missingUnscannedPatchesMachines']
      end

      if attributes.has_key?(:'alertsGenerated')
        self.alerts_generated = attributes[:'alertsGenerated']
      end

      if attributes.has_key?(:'internetConnectivity')
        self.internet_connectivity = attributes[:'internetConnectivity']
      end

      if attributes.has_key?(:'diskSpaceCleanedMb')
        self.disk_space_cleaned_mb = attributes[:'diskSpaceCleanedMb']
      end

      if attributes.has_key?(:'missingSecurityPatches')
        self.missing_security_patches = attributes[:'missingSecurityPatches']
      end

      if attributes.has_key?(:'cpuUtilization')
        self.cpu_utilization = attributes[:'cpuUtilization']
      end

      if attributes.has_key?(:'memoryUtilization')
        self.memory_utilization = attributes[:'memoryUtilization']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @group_identifier.nil?
        invalid_properties.push("invalid value for 'group_identifier', group_identifier cannot be nil.")
      end

      if @group_identifier.to_s.length > 100
        invalid_properties.push("invalid value for 'group_identifier', the character length must be smaller than or equal to 100.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @group_identifier.nil?
      return false if @group_identifier.to_s.length > 100
      device_type_validator = EnumAttributeValidator.new('String', ["WorkstationsAndServers", "BackupStats", "Servers", "Workstations"])
      return false unless device_type_validator.valid?(@device_type)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] group_identifier Value to be assigned
    def group_identifier=(group_identifier)
      if group_identifier.nil?
        fail ArgumentError, "group_identifier cannot be nil"
      end

      if group_identifier.to_s.length > 100
        fail ArgumentError, "invalid value for 'group_identifier', the character length must be smaller than or equal to 100."
      end

      @group_identifier = group_identifier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] device_type Object to be assigned
    def device_type=(device_type)
      validator = EnumAttributeValidator.new('String', ["WorkstationsAndServers", "BackupStats", "Servers", "Workstations"])
      unless validator.valid?(device_type)
        fail ArgumentError, "invalid value for 'device_type', must be one of #{validator.allowable_values}."
      end
      @device_type = device_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          management_solution == o.management_solution &&
          group_identifier == o.group_identifier &&
          device_type == o.device_type &&
          agreement == o.agreement &&
          snmp_machines == o.snmp_machines &&
          total_workstations == o.total_workstations &&
          total_servers == o.total_servers &&
          total_windows_servers == o.total_windows_servers &&
          total_windows_workstations == o.total_windows_workstations &&
          total_managed_machines == o.total_managed_machines &&
          servers_offline == o.servers_offline &&
          servers_disk_space_low == o.servers_disk_space_low &&
          failed_backup_jobs == o.failed_backup_jobs &&
          total_notifications == o.total_notifications &&
          successful_backup_jobs == o.successful_backup_jobs &&
          server_availability == o.server_availability &&
          viruses_removed == o.viruses_removed &&
          spyware_items_removed == o.spyware_items_removed &&
          windows_patches_installed == o.windows_patches_installed &&
          disk_cleanups == o.disk_cleanups &&
          disk_defragmentations == o.disk_defragmentations &&
          fully_patched_machines == o.fully_patched_machines &&
          missing_one_two_patches_machines == o.missing_one_two_patches_machines &&
          missing_three_five_patches_machines == o.missing_three_five_patches_machines &&
          missing_more_five_patches_machines == o.missing_more_five_patches_machines &&
          missing_unscanned_patches_machines == o.missing_unscanned_patches_machines &&
          alerts_generated == o.alerts_generated &&
          internet_connectivity == o.internet_connectivity &&
          disk_space_cleaned_mb == o.disk_space_cleaned_mb &&
          missing_security_patches == o.missing_security_patches &&
          cpu_utilization == o.cpu_utilization &&
          memory_utilization == o.memory_utilization &&
          company == o.company &&
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
      [id, management_solution, group_identifier, device_type, agreement, snmp_machines, total_workstations, total_servers, total_windows_servers, total_windows_workstations, total_managed_machines, servers_offline, servers_disk_space_low, failed_backup_jobs, total_notifications, successful_backup_jobs, server_availability, viruses_removed, spyware_items_removed, windows_patches_installed, disk_cleanups, disk_defragmentations, fully_patched_machines, missing_one_two_patches_machines, missing_three_five_patches_machines, missing_more_five_patches_machines, missing_unscanned_patches_machines, alerts_generated, internet_connectivity, disk_space_cleaned_mb, missing_security_patches, cpu_utilization, memory_utilization, company, _info].hash
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
