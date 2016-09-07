require 'spec_helper'

describe ApiVersionConstraint do
  it 'has a version number' do
    expect(ApiVersionConstraint::VERSION).not_to be nil
  end

  class FakeRequest
    attr_accessor :params
  end

  describe 'matching functionality' do
    let(:request) do
      FakeRequest.new.tap do |r|
        r.params = { v: request_api_version }
      end
    end
    let(:api_version) { SecureRandom.hex }
    subject { described_class.new(api_version) }

    context 'request has correct api verison' do
      let(:request_api_version) { api_version }

      specify do
        expect(subject.matches?(request)).to be_truthy
      end
    end

    context 'request does not have correct api version' do
      let(:request_api_version) { SecureRandom.hex }

      specify do
        expect(subject.matches?(request)).to be_falsey
      end
    end
  end
end
