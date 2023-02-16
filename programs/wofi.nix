{

  programs.wofi = {
    enable = true;

    settings = {

      ## General
      show="drun";
      prompt="Apps";
      normal_window=true;
      layer="top";
      term="foot";

      ## Geometry
      width="500px";
      height="210px";
      # lines=32;
      location=2;
      orientation="vertical";
      halign="fill";
      line_wrap="off";
      dynamic_lines=true;

      ## Images
      allow_markup=true;
      allow_images=true;
      image_size=16;

      ## Search
      exec_search=false;
      hide_search=false;
      parse_search=false;
      insensitive=true;
      # matching=;

      ## Other
      hide_scroll=true;
      no_actions=true;
      # sort_order="alphabetical";
      gtk_dark=true;
      filter_rate=100;

      ## Keys
      key_expand="Tab";
      key_exit="Escape";
      key_up="Control_L-p";
      key_down="Control_L-n";
    };

    colors = ''
      #20262C
      #2A3036
      #f1fcf9
      #B4A1DB
    '';

    style = ''
      * {
        all: unset;
        font-size: 12px;
      }

      #window {
        background-color: --wofi-color0;
      }

      #outer-box {
        background-color: --wofi-color0;
      }

      #input {
        background-color: --wofi-color1;
        margin: 10px 10px 10px 10px;
      }

      #input > * {
        /* background-color: darkviolet; */
        min-width: 25px;
        min-height: 25px;
        margin: 10px;
      }

      #scroll {
        margin: 0px 10px 10px 10px;
      }

      #entry {
        background-color: --wofi-color1;
      }

      #entry:selected {
        background-color: --wofi-color3;
      }

      #entry > box > #img {
        /* background-color: darkviolet; */
        min-width: 25px;
        min-height: 25px;
        margin: 10px;
      }
    '';
  };
}
