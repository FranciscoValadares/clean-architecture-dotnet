import { Component, inject } from '@angular/core';
import { FormControl, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';

import { Router, ActivatedRoute, ParamMap } from '@angular/router';
import { GuardsService } from '../guards/guards.service';

@Component({
  selector: 'login',
  standalone: true,
  imports: [
    ReactiveFormsModule,
  ],
  templateUrl: './login.component.html',
  styleUrl: './login.component.scss'
})
export class LoginComponent {



  constructor(
    private guardsService: GuardsService,
    private route: ActivatedRoute,
    private router: Router  ) {
      console.log("Testing constructor...");
    }

  readonly loginForm = new FormGroup({
    usuario: new FormControl('', {
      validators: [Validators.required],
      nonNullable: true,
    }),
    senha: new FormControl('', {
      validators: [Validators.required],
      nonNullable: true,
    }),
  });



  submit() {

    console.log("Testando o login...");
    this.router.navigate(['/app-root']);  // Substitua '/dashboard' pela rota desejada

    // const { username, password } = this.loginForm.value;
    const username = this.loginForm.value.usuario;
    const password = this.loginForm.value.senha;
    // this.authFacade.login(username as string, password as string);
    this.guardsService.loginUser(username as string, password as string);


  }


}


