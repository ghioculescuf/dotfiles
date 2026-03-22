# Dotfiles

Reproducible dev environment via [chezmoi](https://www.chezmoi.io/).

## Bootstrap (any machine)

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply ghioculescuf
```

## What's included

- **CLI tools**: ripgrep, tmux, mosh, bat, fd, fzf, htop, bubblewrap
- **Dev tools**: Node.js (fnm), Claude Code, gh, doctl, cco, Vercel CLI, Supabase CLI, uv, Python
- **Infra**: Tailscale, Docker (cloud VMs only)
- **Configs**: tmux, git, bash aliases, Claude Code settings

## Update

```bash
chezmoi update
```

## Cloud VM setup

```bash
doctl compute droplet create my-vm \
  --user-data-file cloud-init.yml \
  --region fra1 --size s-1vcpu-1gb --image ubuntu-24-04-x64 --wait
```
