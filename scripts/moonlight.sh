#!/bin/bash
cd /mnt/ssd1/repos/moonlight-installer
git pull
sudo cargo run --bin moonlight-cli -- patch /opt/discord/Discord
