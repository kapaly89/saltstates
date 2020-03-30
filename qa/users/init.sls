user_minion333:
  user.present:
    - name: minion333
    - fullname: minion333
    - shell: /bin/bash
    - home: /home/minion333
    - uid: 2030
    - gid_from_name: True
    - groups:
      - wheel

minion333_key:
  ssh_auth.present:
    - name: minion333
    - user: minion333
    - source: salt://users/keys/minion333.pub
