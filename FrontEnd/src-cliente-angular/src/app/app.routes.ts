import { Routes } from '@angular/router';
import { AuthGuard } from './auth/guards/auth.guard';
import { LoginComponent } from './auth/login/login.component';
import { BemVindoComponent } from './features/bem-vindo/bem-vindo.component';
import { ConselheirosComponent } from './features/conselheiros/conselheiros.component';
import { EventosComponent } from './features/eventos/eventos.component';
import { RankingComponent } from './features/ranking/ranking.component';
import { ConfiguracoesComponent } from './features/configuracoes/configuracoes.component';


export const routes: Routes = [

  {
    path: '',
    redirectTo: 'app-root',
    pathMatch: 'full',
  },

  {
    path: 'login',
    loadComponent: () =>
      import('./auth/login/login.component').then(m => m.LoginComponent),
  },

  {
    path: 'app-root',
    canActivate: [AuthGuard],
    loadComponent: () =>
      import('./app/app.component').then(m => m.AppComponent),
  },

  {
    path: 'home-principal',
    canActivate: [AuthGuard],
    loadComponent: () =>
      import('./shared/ui/home-principal/home-principal.component').then(m => m.HomePrincipalComponent),
  },


  { path: 'bem-vindo', component: BemVindoComponent , outlet: 'router_content'},
  { path: 'conselheiros', component: ConselheirosComponent , outlet: 'router_content' },
  { path: 'eventos', component: EventosComponent , outlet: 'router_content'},
  { path: 'ranking', component: RankingComponent , outlet: 'router_content'},
  { path: 'configuracoes', component: ConfiguracoesComponent , outlet: 'router_content'},


  { path: '**', redirectTo: 'app-root' },
];
