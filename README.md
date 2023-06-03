# flutter_firebase_auth

A new Flutter project.

1 - Adicionar as seguintes dependências ao pubspec.yaml:

        ```
        firebase_auth: ^4.6.2
        firebase_core: ^2.13.1
        ```

2 - Configurar o servidor Firebase:

Após fazer login no Firebase, vá até o console e crie um novo projeto.
Dê um nome para o projeto.
Pode deixar o Analytics ativado.
Criar projeto (...)

3 - Atualizar o arquivo build.gradle:
```
dependencies: 
classpath 'com.google.gms:google-services:4.3.10' para >>>
classpath 'com.google.gms:google-services:4.3.14'
```
