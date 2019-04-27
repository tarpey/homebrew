# Check for Homebrew
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSl https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Recipes
brew update

# Formulae
formulae=(
    wget
    tree
    cask
)

echo "Installing Formulae..."
brew install ${formulae[@]}

# Applications
apps=(
    1password
    alfred
    dash
    firefox
    google-chrome
    iterm2
    little-snitch
    spotify
    spotify-notifications
    visual-studio-code
    vlc
)

echo "Installing Applications..."
brew cask install --appdir="/Applications" ${apps[@]}

# Clean up
brew cleanup
echo "Homebrew Setup Complete!"