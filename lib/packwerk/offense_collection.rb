# typed: strict
# frozen_string_literal: true

module Packwerk
  class OffenseCollection
    extend T::Sig
    extend T::Helpers

    sig do
      params(
        root_path: String,
        deprecated_references: T::Hash[Packwerk::Package, Packwerk::DeprecatedReferences]
      ).void
    end
    def initialize(root_path, deprecated_references = {})
      @root_path = root_path
      @deprecated_references = T.let(deprecated_references, T::Hash[Packwerk::Package, Packwerk::DeprecatedReferences])
      @new_violations = T.let([], T::Array[T.any(Packwerk::ReferenceOffense, Packwerk::ZeitwerkOffense)])
      @errors = T.let([], T::Array[Packwerk::Offense])
    end

    sig { returns(T::Array[T.any(Packwerk::ReferenceOffense, Packwerk::ZeitwerkOffense)]) }
    attr_reader :new_violations

    sig { returns(T::Array[Packwerk::Offense]) }
    attr_reader :errors

    sig do
      params(offense: Packwerk::Offense)
        .returns(T::Boolean)
    end
    def listed?(offense)
      return false unless offense.is_a?(ReferenceOffense)
      reference = offense.reference
      deprecated_references_for(reference.source_package).listed?(reference, violation_type: offense.violation_type)
    end

    sig do
      params(offense: Packwerk::Offense).void
    end
    def add_offense(offense)
      unless offense.is_a?(ReferenceOffense) || offense.is_a?(ZeitwerkOffense)
        @errors << offense
        return
      end

      if offense.is_a?(ReferenceOffense)
        deprecated_references = deprecated_references_for(offense.reference.source_package)
        unless deprecated_references.add_entries(offense.reference, offense.violation_type)
          new_violations << offense
        end
      end

      if offense.is_a?(ZeitwerkOffense)
        unless zeitwerk_violations.add_entries(offense)
          new_violations << offense
        end
      end
    end

    sig { returns(T::Boolean) }
    def stale_violations?
      @deprecated_references.values.any?(&:stale_violations?)
    end

    sig { returns(T.nilable(T::Boolean)) }
    def stale_zeitwerk_violations?
      @zeitwerk_violations&.stale_violations?
    end

    sig { void }
    def dump_deprecated_references_files
      @deprecated_references.each do |_, deprecated_references_file|
        deprecated_references_file.dump
      end
    end

    sig { returns(Packwerk::ZeitwerkViolations) }
    def zeitwerk_violations
      @zeitwerk_violations = T.let(@zeitwerk_violations, T.nilable(Packwerk::ZeitwerkViolations))
      @zeitwerk_violations ||= Packwerk::ZeitwerkViolations.new(zeitwerk_violations_file, root_path: @root_path)
    end

    sig { void }
    def dump_zeitwerk_violations_file
      zeitwerk_violations.dump
    end

    sig { returns(T::Array[Packwerk::Offense]) }
    def outstanding_offenses
      errors + new_violations
    end

    private

    sig { params(package: Packwerk::Package).returns(Packwerk::DeprecatedReferences) }
    def deprecated_references_for(package)
      @deprecated_references[package] ||= Packwerk::DeprecatedReferences.new(
        package,
        deprecated_references_file_for(package),
      )
    end

    sig { params(package: Packwerk::Package).returns(String) }
    def deprecated_references_file_for(package)
      File.join(@root_path, package.name, "deprecated_references.yml")
    end

    sig { returns(String) }
    def zeitwerk_violations_file
      File.join(@root_path, "zeitwerk_violations.yml")
    end
  end
end
