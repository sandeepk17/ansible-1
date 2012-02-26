=begin
Project Ansible  - An extensible home automation scripting framework
----------------------------------------------------
Copyright (c) 2011 Elias Karakoulakis <elias.karakoulakis@gmail.com>

SOFTWARE NOTICE AND LICENSE

Project Ansible is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published
by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version.

Project Ansible is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with Project Ansible.  If not, see <http://www.gnu.org/licenses/>.

for more information on the LGPL, see:
http://en.wikipedia.org/wiki/GNU_Lesser_General_Public_License
=end

module OpenZWave

    # hashmap of ZWave's command class symbol id to byte value
    CommandClassesByName = {
        :COMMAND_CLASS_VERSION		=>	0x86,
        :COMMAND_CLASS_BATTERY		=>	0x80,
        :COMMAND_CLASS_WAKE_UP		=>	0x84,
        :COMMAND_CLASS_CONTROLLER_REPLICATION    =>	0x21,
        :COMMAND_CLASS_BASIC			=>	0x20,
        :COMMAND_CLASS_SWITCH_MULTILEVEL	    =>	0x26,
        :COMMAND_CLASS_SWITCH_ALL	  =>	0x27,
        :COMMAND_CLASS_SENSOR_BINARY	=>	0x30,
        :COMMAND_CLASS_SENSOR_MULTILEVEL	=>	0x31,
        :COMMAND_CLASS_ALARM				=>	0x71,
        :COMMAND_CLASS_MULTI_CMD			=>	0x8F,
        :COMMAND_CLASS_CLIMATE_CONTROL_SCHEDULE	=>	0x46,
        :COMMAND_CLASS_CLOCK			=>	0x81,
        :COMMAND_CLASS_ASSOCIATION	=>	0x85,
        :COMMAND_CLASS_CONFIGURATION	=>	0x70,
        :COMMAND_CLASS_MANUFACTURER_SPECIFIC		=>	0x72,
        :COMMAND_CLASS_APPLICATION_STATUS		=>	0x22,
        :COMMAND_CLASS_ASSOCIATION_COMMAND_CONFIGURATION		=>	0x9B,
        :COMMAND_CLASS_AV_CONTENT_DIRECTORY_MD	=>	0x95,
        :COMMAND_CLASS_AV_CONTENT_SEARCH_MD		=>	0x97,
        :COMMAND_CLASS_AV_RENDERER_STATUS		=>	0x96,
        :COMMAND_CLASS_AV_TAGGING_MD				=>	0x99,
        :COMMAND_CLASS_BASIC_WINDOW_COVERING		=>	0x50,
        :COMMAND_CLASS_CHIMNEY_FAN				=>	0x2A,
        :COMMAND_CLASS_COMPOSITE					=>	0x8D,
        :COMMAND_CLASS_DOOR_LOCK					=>	0x62,
        :COMMAND_CLASS_ENERGY_PRODUCTION			=>	0x90,
        :COMMAND_CLASS_FIRMWARE_UPDATE_MD		=>	0x7a,
        :COMMAND_CLASS_GEOGRAPHIC_LOCATION		=>	0x8C,
        :COMMAND_CLASS_GROUPING_NAME				=>	0x7B,
        :COMMAND_CLASS_HAIL					=>	0x82,
        :COMMAND_CLASS_INDICATOR					=>	0x87,
        :COMMAND_CLASS_IP_CONFIGURATION				=>	0x9A,
        :COMMAND_CLASS_LANGUAGE					=>	0x89,
        :COMMAND_CLASS_LOCK					=>	0x76,
        :COMMAND_CLASS_MANUFACTURER_PROPRIETARY			=>	0x91,
        :COMMAND_CLASS_METER_PULSE				=>	0x35,
        :COMMAND_CLASS_METER					=>	0x32,
        :COMMAND_CLASS_MTP_WINDOW_COVERING	        =>	0x51,
        :COMMAND_CLASS_MULTI_INSTANCE_ASSOCIATION	=>	0x8E,
        :COMMAND_CLASS_MULTI_INSTANCE		=>	0x60,
        :COMMAND_CLASS_NO_OPERATION				=>	0x00,
        :COMMAND_CLASS_NODE_NAMING				=>	0x77,
        :COMMAND_CLASS_NON_INTEROPERABLE				=>	0xf0,
        :COMMAND_CLASS_POWERLEVEL				=>	0x73,
        :COMMAND_CLASS_PROPRIETARY				=>	0x88,
        :COMMAND_CLASS_PROTECTION				=>	0x75,
        :COMMAND_CLASS_REMOTE_ASSOCIATION_ACTIVATE		=>	0x7c,
        :COMMAND_CLASS_REMOTE_ASSOCIATION			=>	0x7d,
        :COMMAND_CLASS_SCENE_ACTIVATION				=>	0x2b,
        :COMMAND_CLASS_SCENE_ACTUATOR_CONF			=>	0x2C,
        :COMMAND_CLASS_SCENE_CONTROLLER_CONF			=>	0x2D,
        :COMMAND_CLASS_SCREEN_ATTRIBUTES				=>	0x93,
        :COMMAND_CLASS_SCREEN_MD					=>	0x92,
        :COMMAND_CLASS_SECURITY					=>	0x98,
        :COMMAND_CLASS_SENSOR_ALARM			=>	0x9C,
        :COMMAND_CLASS_SENSOR_CONFIGURATION			=>	0x9E,
        :COMMAND_CLASS_SILENCE_ALARM				=>	0x9d,
        :COMMAND_CLASS_SIMPLE_AV_CONTROL				=>	0x94,
        :COMMAND_CLASS_SWITCH_BINARY				=>	0x25,
        :COMMAND_CLASS_SWITCH_TOGGLE_BINARY			=>	0x28,
        :COMMAND_CLASS_SWITCH_TOGGLE_MULTILEVEL			=>	0x29,
        :COMMAND_CLASS_THERMOSTAT_FAN_MODE			=>	0x44,
        :COMMAND_CLASS_THERMOSTAT_FAN_STATE			=>	0x45,
        :COMMAND_CLASS_THERMOSTAT_HEATING			=>	0x38,
        :COMMAND_CLASS_THERMOSTAT_MODE		=>	0x40,
        :COMMAND_CLASS_THERMOSTAT_OPERATING_STATE		=>	0x42,
        :COMMAND_CLASS_THERMOSTAT_SETBACK			=>	0x47,
        :COMMAND_CLASS_THERMOSTAT_SETPOINT			=>	0x43,
        :COMMAND_CLASS_TIME_PARAMETERS				=>	0x8B,
        :COMMAND_CLASS_TIME					=>	0x8a,
        :COMMAND_CLASS_USER_CODE					=>	0x63,
        :COMMAND_CLASS_ZIP_ADV_CLIENT				=>	0x34,
        :COMMAND_CLASS_ZIP_ADV_SERVER				=>	0x33,
        :COMMAND_CLASS_ZIP_ADV_SERVICES				=>	0x2F,
        :COMMAND_CLASS_ZIP_CLIENT				=>	0x2e,
        :COMMAND_CLASS_ZIP_SERVER				=>	0x24,
        :COMMAND_CLASS_ZIP_SERVICES				=>	0x23
    }
        
    # hashmap of ZWave's command class byte to symbol
    CommandClassesByID = {}
    CommandClassesByName.each {|key, value| CommandClassesByID[value] = key }

end #module