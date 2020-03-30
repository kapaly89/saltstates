user_minion111:
  user.present:
    - name: minion111
    - fullname: minion111
    - shell: /bin/bash
    - home: /home/minion111
    - uid: 2000
    - gid_from_name: True
    - groups:
      - wheel

minion111_key:
  ssh_auth.present:
    - name: minion111
    - user: minion111
    - source: salt://users/keys/minion111.pub
