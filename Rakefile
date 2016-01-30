VERSION_RB_SRC = <<-RUBY
module Turbolinks
  module Source
    VERSION = %s
  end
end
RUBY

ROOT = File.expand_path("..", __FILE__)
TURBOLINKS_ROOT = ENV["TURBOLINKS_ROOT"]

task "build" do
  unless TURBOLINKS_ROOT
    warn "Please run \`rake build TURBOLINKS_ROOT=/path/to/turbolinks\`"
    exit 1
  end

  javascript_path = File.expand_path("dist/turbolinks.js", TURBOLINKS_ROOT)
  version_path = File.expand_path("src/turbolinks/VERSION", TURBOLINKS_ROOT)

  unless File.exists?(javascript_path) && File.exists?(version_path)
    warn "Can't find Turbolinks source in TURBOLINKS_ROOT"
    exit 1
  end

  version = File.read(version_path).strip

  FileUtils.cp(javascript_path, File.expand_path("lib/assets/javascripts"))
  File.open(File.expand_path("lib/turbolinks/source/version.rb"), "w") do |file|
    file << VERSION_RB_SRC % version.inspect
  end

  puts "Built turbolinks-source #{version}"
end
