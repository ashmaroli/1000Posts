# Get the generated markup from the path, extract just post-body without using
# regex (y not? ;)) and re-align the markup.
# Finally print the markup!
#
puts File.read(File.expand_path(File.join(__dir__, "../_site/2018/04/24/hello-world.html")))
  .split('<div class="post-content e-content" itemprop="articleBody">')[1]
  .split('</div><a class="u-url" href')[0]
  .strip.gsub("\n", "").gsub("</p><p>", "</p>\n\n<p>")
