require 'test_helper'

class Ams1908Test < ActionDispatch::IntegrationTest

  def setup
    Thing.destroy_all
    Thing.create(
      config: {attr: ["foo", "bar", "baz"]},
      data: {attr: ["foo", "bar", "baz"]}
    )
  end

  def test_serialized_hash_output_is_correct
   get '/things/1'
   json = JSON.parse(response.body)
   assert json['config'] == {'attr' => ["foo", "bar", "baz"]}, response.body
  end

  def test_serialized_json_output_is_correct
   get '/things/1'
   json = JSON.parse(response.body)
   assert json['data'] == {'attr' => ["foo", "bar", "baz"]}, response.body
  end

end
