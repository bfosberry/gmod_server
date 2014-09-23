Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d|
     d.vagrant_vagrantfile = "#{ENV['COREOS_DIR'] || "../coreos-vagrant"}/Vagrantfile"
     d.vagrant_machine = "core-01"
  end

  config.vm.define "gmod" do |app|
    app.vm.provider "docker" do |d|
      d.build_dir = "./"
      d.name =  "gmod"
      d.env = {
        "ETCD_SERVER" => "172.17.8.101:4001",
        "SERVER_ID" => "1234"
      }
    end
  end
end
