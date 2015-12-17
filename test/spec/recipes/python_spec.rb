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
        module_name = 'test_mod'
        node.set['collectd-plugins']['python']['Import'] = module_name
        node.set['collectd-plugins']['python']['Module'] = { :id => module_name,
                                                             :PluginName => module_name }
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
