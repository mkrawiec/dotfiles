if [[ `hostname` == szwalnia-* ]]; then
  export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
fi
