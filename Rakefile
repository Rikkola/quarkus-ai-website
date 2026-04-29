require 'yaml'
require 'fileutils'
require 'rake/testtask'
require_relative 'lib/snippet_fetcher'

CACHE_DIR = '_includes/snippets/cache'

namespace :snippets do
  desc 'Fetch upstream code snippets at pinned SHAs'
  task :fetch do
    snippets_path = '_data/snippets.yml'
    unless File.exist?(snippets_path)
      puts "No #{snippets_path} found — nothing to fetch."
      next
    end

    snippets = YAML.load_file(snippets_path)
    FileUtils.mkdir_p(CACHE_DIR)

    snippets.each do |s|
      next unless s['source'] == 'upstream'

      url = SnippetFetcher.url_for(s)
      print "Fetching #{s['id']} from #{url}... "
      content = SnippetFetcher.fetch(s)
      content = SnippetFetcher.extract_lines(content, s['lines'])
      path = SnippetFetcher.cache_path_for(s, CACHE_DIR)
      File.write(path, content)
      puts "ok (#{path})"
    end
  end
end

Rake::TestTask.new do |t|
  t.libs << 'lib' << 'test'
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
end

task default: :test
