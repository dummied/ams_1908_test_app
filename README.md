# Demonstration app

This small API-mode Rails 5 app is intended to demostrate issue
[#1908](https://github.com/rails-api/active_model_serializers/issues/1908)
for `active_model_serializers`.

In short, attributes serialized as a Hash on the model end results in an
empty Hash when output by AMS.

A short-term workaround for this is to serlialize your attribute as JSON
instead (also tested).

`rails test` or `rake test` to run the tests.

The test code itself is `test/integration/ams_1908_test.rb`
