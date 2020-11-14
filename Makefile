test:
	go test -v -race -cover .

build:
	go build

all:
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o gitkit-darwin-amd64
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o gitkit-linux-amd64
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o gitkit-windows-amd64.exe

setup:
	go go mod vendor
