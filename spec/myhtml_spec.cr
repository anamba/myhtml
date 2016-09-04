require "./spec_helper"

describe Myhtml do
  it "parser work" do
    parser = Myhtml::Parser.new
    parser.parse("<html>BLA</html>")

    parser.root!.tag_name.should eq "html"
    parser.root!.child!.tag_name.should eq "head"
    parser.root!.child!.next!.tag_name.should eq "body"
    parser.root!.child!.next!.child!.tag_text.should eq "BLA"
  end

  it "version" do
    v = Myhtml.version_string
    v.size.should be > 0
  end

end
