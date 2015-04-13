require "serverkit/resources/base"

module Serverkit
  module Resources
    class AtomPackage < Base
      attribute :name, required: true, type: String
      attribute :version, type: String

      # @note Override
      def apply
        run_command("apm install #{name_with_version}")
      end

      # @note Override
      def check
        check_command("apm list --bare --installed #{name} | grep -E '#{name_pattern_with_version}'")
      end

      private

      # @note Override
      def default_id
        name
      end

      # @return [String]
      # @example "^git-plus@4.4.11$"
      def name_pattern_with_version
        if version
          "^#{name}@#{version}$"
        else
          "^#{name}@"
        end
      end

      # @return [String]
      # @example "git-plus@4.4.11"
      def name_with_version
        if version
          "#{name}@#{version}"
        else
          name
        end
      end
    end
  end
end
