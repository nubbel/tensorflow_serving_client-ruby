# tensorflow_serving_client

A Ruby client library for Tensorflow Serving.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tensorflow_serving_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tensorflow_serving_client

## Usage

```ruby
require 'tensorflow_serving_client'

stub = Tensorflow::Serving::PredictionService::Stub.new('localhost:9000', :this_channel_is_insecure)

req = Tensorflow::Serving::PredictRequest.new
req.model_spec = Tensorflow::Serving::ModelSpec.new name: 'mnist'
req.inputs['images'] = Tensorflow::TensorProto.new float_val: [0]*784, tensor_shape: Tensorflow::TensorShapeProto.new(dim: [Tensorflow::TensorShapeProto::Dim.new(size: 1),Tensorflow::TensorShapeProto::Dim.new(size: 784)]), dtype: Tensorflow::DataType::DT_FLOAT

res = stub.predict req
res.outputs
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nubbel/tensorflow_serving_client-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

