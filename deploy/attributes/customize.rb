node[:deploy].each do |application, deploy|
  normal[:deploy][application][:purge_before_symlink] = ['log', 'tmp/pids']
  normal[:deploy][application][:symlinks] = {"pids" => "tmp/pids", "log" => "log"}
end

