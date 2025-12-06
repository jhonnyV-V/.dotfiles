#!/usr/bin/env bash

if [! -d "$HOME/Code/odin/odin" ]; then
  git clone git@github.com:odin-lang/odin.git $HOME/Code/odin/odin
fi

cd $HOME/Code/odin/odin

echo "odin: installing dependencies"
if [! -f "/usr/bin/llvm-as-20" ]; then
  wget https://apt.llvm.org/llvm.sh
  chmod +x llvm.sh
  sudo ./llvm.sh 20
  rm llvm.sh
  sudo nala install -y clang-20 clangd-20 clang
fi
echo "odin: building"
git switch master
git pull origin
git switch --detach dev-2025-11
sudo make CMAKE_BUILD_TYPE=Release
echo "odin: installing"
make release-native
sudo nala install libglfw3-dev libglfw3 -y
odinPath=$(which odin)
if [[ -z "$odinPath"]]; then
   echo 'export PATH="/path/to/Odin/folder:$PATH"' >> ~/.bashrc
fi
vulkanSdk=$(which vulkan-sdk)
if [[ -z "$vulkanSdk" ]]; then
  cd $HOME/Code/tools
  mkdir vulkan
  cd vulkan
  # Get the latest version (a simple text string is returned)
  SDK_VERSION=`curl https://vulkan.lunarg.com/sdk/latest/linux.txt`
  # Get the latest SDK with the latest version variable
  curl -O https://sdk.lunarg.com/sdk/download/${SDK_VERSION}/linux/vulkan_sdk.tar.xz
  tar -xf ./vulkan_sdk.tar.xz
  rm vulkan_sdk.tar.xz
  ln -s $SDK_VERSION default
  cd $SDK_VERSION
  ./vulkansdk
  chmod +x ./setup-env.sh
  echo "source ~/Code/tools/vulkan/default/setup-env.sh" >> $HOME/.bashrc
  ##Run the system update command:
  sudo nala update
  sudo nala install vulkan-tools libvulkan1
fi
