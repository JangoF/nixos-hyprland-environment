{

  programs.mako = {
    enable = true;

    extraConfig = ''
      font=JetBrains Mono 10
      width=300
      height=100
      margin=10
      padding=15
      border-size=1
      border-radius=6
      icons=1
      max-icon-size=48
      icon-location=left
      markup=1
      actions=1
      history=1
      text-alignment=left
      default-timeout=5000
      ignore-timeout=0
      max-visible=5
      layer=top
      anchor=top-right
    
      background-color=#20262C
      text-color=#f1fcf9
      border-color=#B4A1DB
      progress-color=over #B4A1DB
    
      [urgency=low]
      border-color=#B4A1DB
      default-timeout=2000
    
      [urgency=normal]
      border-color=#B4A1DB
      default-timeout=5000
    
      [urgency=high]
      border-color=#D04E9D
      text-color=#D04E9D
      default-timeout=0
    '';
  };
}
