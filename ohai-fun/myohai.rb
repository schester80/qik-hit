Ohai.plugin(:Myohai) do
  provides 'myohai'

  def shared_function()
    myohai['message'] = 'hello world'
  end

  collect_data(:default) do
    myohai Mash.new
    shared_function()
  end
end
