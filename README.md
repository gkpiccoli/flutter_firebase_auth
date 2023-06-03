# flutter_firebase_auth

A new Flutter project.

1 - Adicionar as seguintes dependências ao pubspec.yaml:
```
firebase_auth: ^4.6.2
firebase_core: ^2.13.1
```

2 - Configurar o servidor Firebase:

- Após fazer login no Firebase, vá até o console e adicione um novo projeto.
- Adicionar o método de login na aba de autenticação.
- No projeto, abra o terminal e execute:
```
flutterfire configure
```
- Selecione o projeto(servidor) criado anteriormente e adicione as plataformas desejadas, neste caso o Android.

3 - Atualizar o arquivo build.gradle:
```
dependencies: 
classpath 'com.google.gms:google-services:4.3.14'
```
4 - 