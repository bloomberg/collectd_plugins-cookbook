require 'spec_helper'

describe_recipe 'collectd_plugins::nginx' do
  context 'with default attributes' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
      end.converge(described_recipe)
    end

    it { expect(chef_run).to include_recipe('collectd::default') }
    it do
      expect(chef_run).to create_collectd_plugin('nginx')
      .with(user: 'collectd', group: 'collectd')
      .with(options: {})
    end
    it { chef_run }
  end
end
