## Folder Structure

```
smtp-single/
├── Dockerfile
└── entrypoint.sh
```

### 1. Build the Docker image

```bash
docker build -t single-mailbox .
```

### 2. Run the container

```bash
docker run --name single-mail-test -it --rm single-mailbox
```

### 3. Inside the container: test email flow

```bash
# As alice, send mail to bob
su - alice
echo "Hi Bob!" | mail -s "Hello Bob" bob

# As bob, check mail
su - bob
cat ~/Maildir/new/*
```
