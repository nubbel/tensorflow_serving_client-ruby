require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Compile protobufs"
task :protoc do
  sh 'grpc_tools_ruby_protoc',
      '-I', 'tensorflow_serving/tensorflow',
      '-I', 'tensorflow_serving',
      '--ruby_out=lib',
      '--grpc_out=lib',
      *Dir['tensorflow_serving/tensorflow/tensorflow/core/framework/*.proto'],
      *Dir['tensorflow_serving/tensorflow/tensorflow/core/example/*.proto'],
      *Dir['tensorflow_serving/tensorflow_serving/apis/*.proto']
end
