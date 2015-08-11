# pass2gorilla
Convert a command line password manager repository (pass), to a password-gorilla container file.

##Getting started:

run the script:

```bash
./pass2gorilla.sh ./password-store > in.csv
```

Import the ```in.csv``` file with password-gorilla.

Dont forget to delete ```in.csv```:

```bash
shred -u in.csv
```

##Organisation 

pass2gorilla.sh is optimised for this kind of data organisation:

```bash
├── email
│   ├── google.com
│   │   ├── user1@gmail.com
│   │   └── spaminside@gmail.com
│   └── mydomain.com
│       └── foo
├── github.com
│   └── nickname
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

##See also

https://github.com/d4ndo/gorilla2pass
