{ inputs, config, ... }: {
  config.fp-rndp-lib.nixosConfigurations = {
    test = {
      nixpkgs = inputs.nixpkgs-stable;
      hmInput = inputs.home-manager-stable;
      homeManager.shawn = { };
    };
  };
}
