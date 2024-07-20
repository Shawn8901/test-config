{ inputs, ... }:
{
  config.fp-rndp-lib.nixosConfigurations = {
    test = {
      nixpkgs = inputs.nixpkgs-stable;
      home-manager.shawn = {
        input = inputs.home-manager-stable;
      };
    };
  };
}
