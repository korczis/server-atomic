# - name: create cadvisor container
#  docker_container:
#    name: cadvisor
#    image: google/cadvisor:latest
#    detach: true
#    privileged: true
#    restart_policy: "unless-stopped"
#    ports:
#      - "8080:8080"
#    volumes:
#      - "/:/rootfs:ro"
#      - "/cgroup:/cgroup:ro"
#      - "/var/run:/var/run:rw"
#      - "/sys:/sys:ro"
#      - "/var/lib/docker/:/var/lib/docker:ro"
