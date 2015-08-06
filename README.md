# pass2gorilla
Convert a command line password manager repository (pass), to a password-gorilla container file.

##Getting started:

run the script:

```bash
./pass2gorilla.sh ./password-store > import.csv
```
pass2gorilla is optimised for this kind of data organisation:

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

multiline password: The first line is stored as password. Additional information is stored as note.
