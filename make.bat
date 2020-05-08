del /F /Q .\html\*

set GOARCH=wasm
set GOOS=js
go build -o .\html\test.wasm .\gofiles\main.go
copy C:\Go\misc\wasm\wasm_exec.html .\html\index.html
copy C:\Go\misc\wasm\wasm_exec.js .\html\wasm_exec.js
set GOOS=
set GOARCH=
go run server.go