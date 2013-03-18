guard 'rspec', cli: (File.read(".rspec").delete("\n") rescue "") do
  watch(%r{^lib/(.+)\.rb$})                { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^app/models/(.+)\.rb$})         { |m| "spec/models/#{m[1]}_spec.rb" }
  watch(%r{^app/policies/(.+)\.rb$})       { |m| "spec/policies/#{m[1]}_spec.rb" }
  watch(%r{^app/uploaders/(.+)\.rb$})      { |m| "spec/uploaders/#{m[1]}_spec.rb" }
  watch(%r{^app/helpers/(.+)\.rb$})        { |m| "spec/helpers/#{m[1]}_spec.rb" }

  watch(%r{^spec/policies})
  watch(%r{^spec/requests})
  watch(%r{^spec/helpers})
  watch(%r{^spec/stories})

  watch(%r{^app/helpers/(.+)\.rb$})   { "spec/stories" }
  watch(%r{^app/policies/(.+)\.rb$})  { "spec/stories" }
  watch(%r{^app/models/(.+)\.rb$})    { "spec/stories" }
  watch(%r{^app/controllers})         { "spec/stories" }
  watch(%r{^app/views/})              { "spec/stories" }
  watch(%r{^app/presenters/})         { "spec/stories" }
  watch(%r{^spec/stories/steps/})     { "spec/stories" }
  watch('config/routes.rb')           { "spec/stories" }
  watch('spec/turnip_helper.rb')      { "spec/stories" }

  watch("db/schema.rb")              { "spec" }
  watch("Gemfile.lock")              { "spec" }
  watch(".rspec")                    { "spec" }
  watch(%r{^config})                 { "spec" }
  watch(%r{^app/mailers/})           { "spec" }
  watch(%r{^spec/support/(.+)\.rb$}) { "spec" }
  watch('spec/spec_helper.rb')       { "spec" }
  watch("spec/factories.rb")         { "spec" }
  watch("spec/factories/*")          { "spec" }
end

guard 'bundler' do
  watch('Gemfile')
end

guard 'pow' do
  watch('.powrc')
  watch('.powenv')
  watch('Gemfile.lock')
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.*\.rb$})
  watch(%r{^config/initializers/.*\.rb$})
end


