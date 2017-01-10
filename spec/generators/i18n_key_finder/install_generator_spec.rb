require 'generator_spec'
require 'generators/i18n_key_finder/install_generator'

describe I18nKeyFinder::Generators::InstallGenerator, type: :generator do
  destination File.expand_path("../../tmp", __FILE__)

  before(:all) do
    prepare_destination
    run_generator
  end

  after(:all) do
    rm_rf 'spec/generators/tmp'
  end

  it 'creates the initializers file' do
    assert_file 'config/initializers/i18n_key_finder.rb'
  end
end