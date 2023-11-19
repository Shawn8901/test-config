{ ... }: {

  users = {
    mutableUsers = false;
    users.shawn = {
      isNormalUser = true;
      password = "test1234";
      extraGroups = [ "wheel" ];
    };
  };
}
