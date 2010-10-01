atom_feed do |feed|
  feed.title(feed_title)
  unless this_blog.blog_subtitle.blank?
    feed.subtitle(this_blog.blog_subtitle, "type" => "html")
  end
  feed.updated items.first.updated_at if items.first
  feed.generator "Typo", :uri => "http://www.typosphere.org", :version => '5.x'

  items.each do |value|
    value.to_atom(feed)
  end
end
