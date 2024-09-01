# Templat - clean-architecture-dotnet


## Introdução 

Essa branch foi gerada para fazer a restruturação do projeto utilizando uma abordagem de arquitetura limpa.

[Arquitetura Limpa](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)




## TODO

<!-- - [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files -->

- [x] Criação da estrutura base utilizando clian arch.
- [ ] Restruturação e modelagem do banco de dados.
- [x] Configurações básicas do FrontEnd usando Angular.
- [x] Configurações básicas  dos arquivos Dockerfile necessário.
- [x] Configurações básicas  dos docker-compose necessários{desenvolvimento, homologação, produção}.

```
cd existing_repo
git remote add origin https://gitlab.cfc.org.br/cfc/projeto-src.git
git branch -M main
git push -uf origin main
```
<!-- 
## Integrate with your tools

- [ ] [Set up project integrations](https://gitlab.cfc.org.br/cfc/projeto-src/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Automatically merge when pipeline succeeds](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing(SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

*** -->


### Acessar informações das API via Swagger.

http://localhost:5000/index.html

### Principais comandos git.
```

git remote add origin https://gitlab.cfc.org.br/cfc/projeto-src.git
git branch -M main
git push -uf origin main

## Comanda uteis do git
Delete a local branch
git branch -d branch_name

Delete a remote branch
git push origin --delete branch_name

Renomear uma branch
git branch -m <oldname> <newname>

Revert a Git repository to a previous commit?
git checkout 0d1d7fc32

Subir alteracoes para repositorio remoto:
git push -f origin master

#comando para iniciar features
git flow feature start wellington_servicos_relatorio_termo_aceite

#comando para finalizar features
git flow feature finish wellington_servicos_relatorio_termo_aceite

Forçar um revert para um comit expecífico:
1) git reset --hard 717edc4a
2) git push -f origin develop

Atualizar Release branch a partir da develop:
git switch develop    #if you don't have it already
#git checkout feature/x  #if you don't have it already
git pull
git switch my-feature/x
git merge develop

#Visualisar branches remotas
git branch -a

#Puxar branch remota
git checkout -b origin/feature/teste_develop



  # Angular CLI util
  # ng generate directive diretivas\possuiPermissao --module=app
  # ng generate interceptor HttpTokenInterceptor --module=app

```

  # docker

  docker-compose -f .\docker-compose.desenvolvimento.yml down -v
  docker-compose -f .\docker-compose.desenvolvimento.yml up --build -d
  docker-compose -f .\docker-compose.desenvolvimento.yml logs -f

<!-- sudo find / -name "package.json" 2>/dev/null -->
