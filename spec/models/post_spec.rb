require 'spec_helper'

describe Post do

  it 'validates title presence' do
    @post = Post.new
    @post.should_not be_valid
    @post.title = 'A good title'
    @post.should be_valid
  end

end
