{ pkgs, ... }: {

  gtk = {
    enable = true;

    theme = {
      name = "Catppuccin-Frappe-Standard-Blue-Dark";
      package = pkgs.catppuccin-gtk;
    };

    iconTheme = {
      name = "Qogir-dark";
      package = pkgs.qogir-icon-theme;
    };

    cursorTheme = {
      name = "Qogir";
      package = pkgs.qogir-icon-theme;
    };
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
  };
}
