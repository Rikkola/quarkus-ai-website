require 'open-uri'

module SnippetFetcher
  GITHUB_RAW_BASE = 'https://raw.githubusercontent.com'
  GITHUB_BLOB_BASE = 'https://github.com'

  def self.url_for(snippet)
    "#{GITHUB_RAW_BASE}/#{snippet['repo']}/#{snippet['sha']}/#{snippet['path']}"
  end

  def self.extract_lines(content, range)
    return content if range.nil? || range.empty?
    parts = range.split('-').map(&:to_i)
    first = parts[0]
    last  = parts[1] || first
    raise ArgumentError, "Reversed line range '#{range}'" if last < first
    content.lines[(first - 1)..(last - 1)].join
  end

  def self.cache_path_for(snippet, cache_dir)
    ext = File.extname(snippet['path'])
    "#{cache_dir}/#{snippet['id']}#{ext}"
  end

  def self.source_link_for(snippet)
    base = "#{GITHUB_BLOB_BASE}/#{snippet['repo']}/blob/#{snippet['sha']}/#{snippet['path']}"
    snippet['lines'] ? "#{base}#L#{snippet['lines'].sub('-', '-L')}" : base
  end

  def self.fetch(snippet)
    URI.open(url_for(snippet), 'r:UTF-8').read
  end
end
