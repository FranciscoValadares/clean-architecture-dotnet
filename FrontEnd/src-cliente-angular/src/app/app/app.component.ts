import { NgIf } from '@angular/common';
import { Component } from '@angular/core';
import { Router, RouterOutlet } from '@angular/router';
import { FooterComponent } from "../shared/ui/footer/footer.component";
import { SidebarComponent } from "../shared/ui/sidebar/sidebar.component";
import { HeaderComponent } from "../shared/ui/header/header.component";
import { MainContentComponent } from "../shared/ui/main-content/main-content.component";
import { HomePrincipalComponent } from '../shared/ui/home-principal';
import { GuardsService } from '../auth/guards/guards.service';

@Component({
  selector: 'app-root',
  standalone: true,
  // declarations: [AppComponent],
  imports: [RouterOutlet,
    FooterComponent,
    SidebarComponent,
    HeaderComponent,
    MainContentComponent,
    HomePrincipalComponent,
    NgIf],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {

  public isLoged = false;

  title = 'projeto-src';

  constructor(private guardService: GuardsService, private router: Router) {

    if (this.guardService.isAuthenticated()) {
      this.router.navigate(['/home-principal']);
      this.carregarPermissoesDoUsuarioEmPermissionsService();
      this.isLoged = true;
    } else {
      this.router.navigate(['/login']);
    }
  }

  carregarPermissoesDoUsuarioEmPermissionsService() {
    //var permissoesUsuarioLogado = this.guardService.getPermissoesDoUsuarioLogadoNoSistema();
    //const permissoes = ["PROFISSIONAL"];
    //this.permissionsService.loadPermissions(permissoesUsuarioLogado);
    //this.verificarInformacoesTermoAsseiteParaUsuarioLogado();

  }

}
