echo "Set macOS defaults"
exec ./set-defaults.sh

echo "Update Mac App"
sudo softwareupdate -i -a
