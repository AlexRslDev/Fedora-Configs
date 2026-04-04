# System Notes

### How to encrypt with age

**Para cifrar:** age -p archivo.txt > archivo.txt.age (te pedirá una frase de paso).

**Para descifrar:** age -d archivo.txt.age > archivo.txt

### How to Update pnpm

```bash
pnpm add -g pnpm
```

### pnpm Commands

- **Añadir un paquete:**	npm install react -	pnpm add react
- **Añadir a devDependencies:**	npm install -D typescript -	pnpm add -D typescript
- **Quitar un paquete:**	npm uninstall lodash - pnpm rm lodash
- **Ejecutar un script:**	npm run dev -	pnpm dev (ni siquiera necesitas el run)
- **Ejecutar binarios:** (npx)	npx tauri -	pnpm dlx tauri
