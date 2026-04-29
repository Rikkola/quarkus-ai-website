require 'minitest/autorun'
require_relative '../lib/snippet_fetcher'

class SnippetFetcherTest < Minitest::Test
  def test_url_for_builds_raw_github_url
    snippet = { 'repo' => 'foo/bar', 'sha' => 'abc123', 'path' => 'src/Main.java' }
    assert_equal 'https://raw.githubusercontent.com/foo/bar/abc123/src/Main.java',
                 SnippetFetcher.url_for(snippet)
  end

  def test_extract_lines_with_range
    content = "line1\nline2\nline3\nline4\nline5\n"
    assert_equal "line2\nline3\n", SnippetFetcher.extract_lines(content, '2-3')
  end

  def test_extract_lines_with_nil_range_returns_full_content
    content = "line1\nline2\n"
    assert_equal "line1\nline2\n", SnippetFetcher.extract_lines(content, nil)
  end

  def test_cache_path_for_uses_id_and_extension
    snippet = { 'id' => 'foo', 'path' => 'src/Main.java' }
    assert_equal 'cache/foo.java', SnippetFetcher.cache_path_for(snippet, 'cache')
  end

  def test_cache_path_for_handles_no_extension
    snippet = { 'id' => 'foo', 'path' => 'Dockerfile' }
    assert_equal 'cache/foo', SnippetFetcher.cache_path_for(snippet, 'cache')
  end

  def test_source_link_for_with_range
    snippet = { 'repo' => 'foo/bar', 'sha' => 'abc123', 'path' => 'src/Main.java', 'lines' => '2-3' }
    assert_equal 'https://github.com/foo/bar/blob/abc123/src/Main.java#L2-L3',
                 SnippetFetcher.source_link_for(snippet)
  end

  def test_source_link_for_without_range
    snippet = { 'repo' => 'foo/bar', 'sha' => 'abc123', 'path' => 'src/Main.java' }
    assert_equal 'https://github.com/foo/bar/blob/abc123/src/Main.java',
                 SnippetFetcher.source_link_for(snippet)
  end
end
