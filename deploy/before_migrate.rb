deploy_to = deploy_resource.deploy_to

dirs_to_protect = [ "public" ]
dirs_to_protect.each {|dir| 
    bash "save #{dir}" do
      code <<-EOL
        cp -a #{release_path}/#{dir}/* #{deploy_to}/shared/#{dir} 
      EOL
    end
}
