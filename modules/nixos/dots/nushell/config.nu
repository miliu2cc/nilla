$env.config.show_banner = false

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

alias fang = sudo ~/Project/AWCC/result/bin/awcc g
alias fanp = sudo ~/Project/AWCC/result/bin/awcc p
