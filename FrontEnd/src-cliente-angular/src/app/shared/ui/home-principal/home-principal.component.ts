import { Component, ViewChild } from '@angular/core';
import { RouterModule, RouterOutlet,Router, ActivatedRoute, } from '@angular/router';

import { FooterComponent } from '../footer/footer.component';
import { SidebarComponent } from '../sidebar/sidebar.component';
import { HeaderComponent } from '../header/header.component';
import { MainContentComponent } from '../main-content/main-content.component';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatSidenav, MatSidenavModule } from '@angular/material/sidenav';
import { BreakpointObserver } from '@angular/cdk/layout';
import { MatListModule } from '@angular/material/list';
import { CommonModule, NgIf } from '@angular/common';



@Component({
  selector: 'app-home-principal',
  standalone: true,
  imports: [
    RouterOutlet,
    FooterComponent,
    SidebarComponent,
    HeaderComponent,
    MainContentComponent,
    // CommonModule,
    NgIf,
    RouterModule,
    MatIconModule,
    MatButtonModule,
    MatToolbarModule,
    MatSidenavModule,
    MatListModule,
    MatSidenav,




  ],
  templateUrl: './home-principal.component.html',
  styleUrl: './home-principal.component.scss'
})
export class HomePrincipalComponent {


  title = 'material-responsive-sidenav';
  @ViewChild(MatSidenav)
  sidenav!: MatSidenav;
  isMobile= true;

  isCollapsed = false;

  constructor(private observer: BreakpointObserver,
    private route: ActivatedRoute,
    private router: Router
  ) {}


  ngOnInit() {
    this.observer.observe(['(max-width: 800px)']).subscribe((screenSize) => {
      if(screenSize.matches){
        this.isMobile = true;
      } else {
        this.isMobile = false;
      }
    });
  }


  toggleMenu() {
    if(this.isMobile){
      this.sidenav.toggle();
      this.isCollapsed = false; // On mobile, the menu can never be collapsed
    } else {
      this.sidenav.open(); // On desktop/tablet, the menu can never be fully closed
      this.isCollapsed = !this.isCollapsed;
    }
  }

  irParaRota(nome_rota: string) {
    console.log("Testando o login");
    console.log(nome_rota);

    //this.router.navigate([nome_rota]);  // Substitua '/dashboard' pela rota desejada
    this.router.navigate([{ outlets: { ['router_content']: [nome_rota] } }]);


  }
}



