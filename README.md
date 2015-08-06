# pass2gorilla
convert the standard unix password manager repository to a password gorilla data file

This is how to run the script:

```bash
pass2gorilla.sh ./password-store > import.csv
```
pass2gorilla is optimised for this data organisation:

```bash
├── email
│   ├── user@mydomain.com
│   └── user@gmail.com
├── github.com
│   └── github_nickname
├── openstreetmap.org
│   └── user@gmail.com
├── ssh
│   ├── mydomain.de
│   │   ├── user1
│   │   └── user2
│   └── github.com
│       └── user1
[..]
```

Parent dir holding the url. Username containing the password. 

(multiline password) The first line is stored as password. Additional information is stored as note. (multiline password)
