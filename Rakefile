

desc 'Generate guides (for authors), use ONLY=foo to process just "foo.textile"'
task :guides do
  ruby "ce_guides.rb"
end

task :default => :guides


desc "Watch the source files and regenerate when one changes"
task :watch do
  require 'fssm'

  def rebuild_site(relative)
    puts ">>> Change Detected to: #{relative} <<<"
    name = relative.gsub(".textile", '')
    `ruby ce_guides.rb #{name}`
    puts '>>> Update Complete <<<'
  end
  
  puts ">>> Watching for Changes <<<"
  FSSM.monitor("#{File.dirname(__FILE__)}/source", '**/*') do
    update {|base, relative| rebuild_site(relative)}
    delete {|base, relative| rebuild_site(relative)}
    create {|base, relative| rebuild_site(relative)}
  end
end