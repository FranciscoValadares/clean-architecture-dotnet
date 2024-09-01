import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-sidebar',
  standalone: true,
  imports: [],
  templateUrl: './sidebar.component.html',
  styleUrl: './sidebar.component.scss'
})
export class SidebarComponent {

  constructor(private router: Router) { }

  vaParaComponenteBemVindo(): void {
  console.log("Testando Rota Componente Bem Vindo");
  // this.router.navigate(['/bem-vindo']); 
  this.router.navigate(['', { outlets: { conteudo_principal: ['bem-vindo'] } }]); // navigate via Router 
  
  }
}
