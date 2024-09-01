import { Injectable } from '@angular/core';
import {
  CanActivate,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
  Router,
  UrlTree,
  createUrlTreeFromSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';
import { map, take } from 'rxjs/operators';

// import { AuthFacade } from '../store/auth.facade';
import { GuardsService } from './guards.service';

@Injectable({
  providedIn: 'root',
})
export class AuthGuard implements CanActivate {

  constructor(private guardsService: GuardsService, private router: Router) {}

  canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ): boolean | UrlTree {

    if (this.guardsService.isAuthenticated()) {
      //registrar usuario logado na session
      return true;
    } else {
      this.router.navigate(['/login']);
      return false;
    }
  }


}


