# docker initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

if not command -s git > /dev/null
    echo "Please install 'git' first"
    exit 1
end

pushd $path
if not git submodule --quiet update --init --recursive
    echo "Error cloning https://github.com/barnybug/docker-fish-completion"
    popd
    exit 1
end
popd
