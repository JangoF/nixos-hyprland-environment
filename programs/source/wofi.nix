{ config, lib, pkgs, ... }: with lib; let cfg = config.programs.wofi; in {

  options.programs.wofi = {
    enable = mkEnableOption "wofi";

    settings = mkOption {
      type = types.attrs;
      default = {};
      example = literalExpression ''
      '';

      description = ''
        Configuration options to add to
        <filename>$XDG_CONFIG_HOME/wofi/config</filename>.
      '';
    };

    colors = mkOption {
      type = types.str;
      default = "";
      example = literalExpression ''
        #ffffff
        #000000
      '';

      description = ''
        Configuration options to add to
        <filename>$XDG_CONFIG_HOME/wofi/colors</filename>.
      '';
    };

    style = mkOption {
      type = types.str;
      default = "";
      example = literalExpression ''
      '';

      description = ''
        Configuration options to add to
        <filename>$XDG_CONFIG_HOME/wofi/style.css</filename>.
      '';
    };

    package = mkOption {
      type = types.package;
      default = pkgs.wofi;
      defaultText = literalExpression "pkgs.wofi";
      description = "Package containing the <command>wofi</command> program.";
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ cfg.package ];

    xdg.configFile."wofi/config" = let
      formatOption = n: v:
        let v' = if isBool v then (if v then "true" else "false") else toString v;
        in "${n}=${v'}";

      before = optionalAttrs (cfg.settings ? header_layout) {
        inherit (cfg.settings) header_layout;
      };

      settings = removeAttrs cfg.settings (attrNames before);
      formatOptions = mapAttrsToList formatOption;

    in mkIf (cfg.settings != { }) {
      text = concatStringsSep "\n" (formatOptions before ++ formatOptions settings) + "\n";
    };

    xdg.configFile."wofi/colors" = mkIf (cfg.colors != "") {
      text = cfg.colors;
    };

    xdg.configFile."wofi/style.css" = mkIf (cfg.style != "") {
      text = cfg.style;
    };
  };
}
