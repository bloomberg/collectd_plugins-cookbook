require 'spec_helper'

describe_recipe 'collectd_plugins::python' do
  context 'with default attributes' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
      end.converge(described_recipe)
    end

    it { expect(chef_run).to include_recipe('collectd::default') }
    it do
      expect(chef_run).to create_collectd_plugin('python')
      .with(user: 'collectd', group: 'collectd')
      .with(options: {})
    end
    it { chef_run }
  end


  context 'with options' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['collectd-plugins']['python']['Import'] = 'test_mod'
      end.converge(described_recipe)
    end

    it { expect(chef_run).to include_recipe('collectd::default') }
    it do
      expect(chef_run).to create_collectd_plugin('python')
      .with(user: 'collectd', group: 'collectd')
      .with(options: { 'Import' => 'test_mod', 
                       'Module' => { 'id' => 'test_mod',   
                                     'PluginName' => 'test_mod' }})
    end
    it { chef_run }
  end
end
