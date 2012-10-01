class RvmDeployResource < Chef::Resource::Deploy
  provides :rvm_deploy

  def initialize(name, run_context=nil)
    super
    @resource_name = :rvm_deploy
    @provider = RvmDeployProvider
    @precompile_assets = true
  end

  def ruby_string(arg = nil)
    set_or_return(
      :ruby_string,
      arg,
      :kind_of => [String]
    )
  end

  def precompile_assets(arg = nil)
    set_or_return(
      :precompile_assets,
      arg,
      :kind_of => [TrueClass, FalseClass]
    )
  end
end
