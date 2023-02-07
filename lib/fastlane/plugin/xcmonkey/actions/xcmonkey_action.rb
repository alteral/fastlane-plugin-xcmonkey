module Fastlane
  module Actions
    class XcmonkeyAction < Action
      def self.run(params)
        Actions.verify_gem!('xcmonkey')

        require 'xcmonkey'

        options = {}
        params.all_keys.each { |k| options[k] = params[k] }

        ::Xcmonkey.new(options).run
      end

      def self.description
        'xcmonkey is a tool for doing randomised UI testing of iOS apps'
      end

      def self.authors
        ['Alexey Alter-Pesotskiy']
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :udid,
            description: 'Set device UDID',
            optional: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :bundle_id,
            description: 'Set target bundle identifier',
            optional: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :session_path,
            description: 'Path where test session should be saved',
            optional: true
          ),
          FastlaneCore::ConfigItem.new(
            key: :event_count,
            description: 'Set events count',
            optional: true,
            is_string: false,
            default_value: 60
          ),
          FastlaneCore::ConfigItem.new(
            key: :exclude_taps,
            description: 'Exclude taps from gestures list',
            optional: true,
            is_string: false,
            default_value: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :exclude_swipes,
            description: 'Exclude swipes from gestures list',
            optional: true,
            is_string: false,
            default_value: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :exclude_presses,
            description: 'Exclude presses from gestures list',
            optional: true,
            is_string: false,
            default_value: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :disable_simulator_keyboard,
            description: 'Disable simulator keyboard',
            optional: true,
            is_string: false,
            default_value: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :ignore_crashes,
            description: 'Ignore app crashes',
            optional: true,
            is_string: false,
            default_value: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :throttle,
            description: 'Fixed delay between events in milliseconds',
            optional: true,
            is_string: false,
            default_value: 0
          )
        ]
      end

      def self.is_supported?(platform)
        [:ios].include?(platform)
      end
    end
  end
end
