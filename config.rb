# configuration_file.rb
# Note that "#" is a comment, cause it's just ruby

settings do
  # Where to find solr server to write to
  provide "solr.url", "http://example.org/solr"

  # solr.version doesn't currently do anything, but set it
  # anyway, in the future it will warn you if you have settings
  # that may not work with your version.
  provide "solr.version", "4.3.0"

  # default source type is binary, traject can't guess
  # you have to tell it.
  provide "marc_source.type", "xml"

  # various others...
  provide "solr_writer.commit_on_close", "true"

  # The default writer is the Traject::SolrJsonWriter. The default
  # reader is Marc4JReader (using Java Marc4J library) on Jruby,
  # MarcReader (using ruby-marc) otherwise.
end
