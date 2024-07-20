{ withSystem, ... }:
{
  perSystem =
    { pkgs, ... }:
    let
      packages = {
        pg-upgrade = pkgs.callPackage ./pg-upgrade { };
      };
    in
    {
      inherit packages;
      hydraJobs = packages;
    };

  flake = withSystem "x86_64-linux" (
    { system, pkgs, ... }:
    let
      packages = {
        rtc-helper = pkgs.callPackage ./shellscripts/rtc-helper.nix { };
      };
    in
    {
      packages."${system}" = packages;
      hydraJobs."${system}" = packages;
    }
  );
}
