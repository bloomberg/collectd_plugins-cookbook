require 'spec_helper'

describe_recipe 'collectd_plugins::df' do
  context 'with default attributes' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
      end.converge(described_recipe)
    end

    it { expect(chef_run).to include_recipe('collectd::default') }
    it do
      expect(chef_run).to create_collectd_plugin('df')
      .with(user: 'collectd', group: 'collectd')
      .with(options: {
        'report_reserved' => false,
        'ignore_selected' => true,
        'f_s_type' => %w{proc sysfs fusectl debugfs securityfs devtmpfs devpts tmpfs}
      })
    end
    it { chef_run }
  end
end
