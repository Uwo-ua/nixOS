
let
	more = {pkgs, ...}: {
		programs = {
			bat.enable = true;
		        fzf = {
				enable = true;
				enableFishIntegration = true;
				defaultCommand = "fd --type file --follow"; # FZF_DEFAULT_COMMAND
				defaultOptions = [ "--height 20%" ]; # FZF_DEFAULT_OPTS
				fileWidgetCommand = "fd --type file --follow"; # FZF_CTRL_T_COMMAND
		       };
		};
	};
in
[
	./zsh
	./nvim
	more
]

