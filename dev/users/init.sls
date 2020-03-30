user_minion222:
  user.present:
    - name: miniion222
    - fullname: minion222
    - shell: /bin/bash
    - home: /home/minion222
    - uid: 2020
    - gid_from_name: True
    - groups:
      - wheel

minion222_key:
  ssh_auth.present:
    - name: minion222
    - user: minion222
    - source: salt://users/keys/minion222.pub
