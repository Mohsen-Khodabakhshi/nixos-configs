{ config, pkgs, ... }:

{
  hardware.opengl = {
    enable = true;
  };

  services.xserver.videoDrivers = [ "nvidia" "modesetting" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = true;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  # Hybrid Graphics (Nvidia Optimus)
  hardware.nvidia.prime = {
    
    # offload option
    offload = {
     enable = true;
     enableOffloadCmd = true;
    };
    intelBusId = "PCI:0:2:0";
    nvidiaBusId = "PCI:1:0:0";

    # sync option
    # sync.enable = true;
    # intelBusId = "PCI:0:2:0";
    # nvidiaBusId = "PCI:1:0:0";

    # reverse sync
    # reverseSync.enable = true;
    # allowExternalGpu = false;
    # intelBusId = "PCI:0:2:0";
    # nvidiaBusId = "PCI:1:0:0";
  };

}
