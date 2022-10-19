# Run

```sh
git clone https://github.com/raonigabriel/shit
cd shit
docker compose up --build --abort-on-container-exit --exit-code-from shit
echo $?
```

# Then

```sh
echo $?
```

# Then

* Change Dockerfile from

```Dockerfile
CMD ["/bin/error.sh"]
```

* ... to

```Dockerfile
CMD ["/bin/ok.sh"]
```

# Then

```sh
docker compose up --build --abort-on-container-exit --exit-code-from shit
echo $?
```
