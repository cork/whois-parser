# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.uk/status_invalid.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.uk.rb'

describe Whois::Record::Parser::WhoisNicUk, "status_invalid.expected" do

  subject do
    file = fixture("responses", "whois.nic.uk/status_invalid.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect(subject.status).to eq(:invalid)
    end
  end
  describe "#valid?" do
    it do
      expect(subject.valid?).to eq(false)
    end
  end
  describe "#invalid?" do
    it do
      expect(subject.invalid?).to eq(true)
    end
  end
end