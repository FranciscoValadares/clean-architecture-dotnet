import { NgModule } from '@angular/core';
import { provideAnimationsAsync } from '@angular/platform-browser/animations/async';

import { routes } from './app.routes';
import { CoreModule } from './core/core.module';
import { PreloadAllModules, RouterModule } from '@angular/router';

import { MainContentComponent } from './shared/ui/main-content/main-content.component';
import { SidebarComponent } from './shared/ui/sidebar/sidebar.component';
import { FooterComponent } from './shared/ui/footer/footer.component';
import { HeaderComponent } from './shared/ui/header/header.component';
import { AuthModule } from './auth/auth.module';

import { Store, StoreModule } from '@ngrx/store';
import { AppComponent } from './app/app.component';

import { LoginComponent } from './auth/login/login.component';
import { provideHttpClient } from '@angular/common/http';
import { SharedModule } from './shared/shared.module';
import { HomePrincipalComponent } from './shared/ui/home-principal';
import { CommonModule } from '@angular/common';
import { FeaturesModule } from './features/features.module';



@NgModule({
  imports: [

    // Angular
    // BrowserModule,

    // Core
    CoreModule,

    // Submodules
    AuthModule,
    StoreModule,
    SharedModule,
    // CommonModule,


    // Routing

    // Application
    AppComponent,
    LoginComponent,
    HeaderComponent,
    FooterComponent,
    SidebarComponent,
    MainContentComponent,
    HomePrincipalComponent,

    // Modulos do Angular Material
    // BrowserAnimationsModule,
    // MatIconModule,
    // MatButtonModule,
    // MatToolbarModule,
    // MatSidenavModule,
    // MatListModule,

    // BrowserModule,
    // BrowserAnimationsModule,
    // MatIconModule,
    // MatButtonModule,
    // MatToolbarModule,
    // MatSidenavModule,
    // MatListModule,
    // MatSidenav,



    RouterModule.forRoot(routes, {
      scrollPositionRestoration: 'enabled',
      preloadingStrategy: PreloadAllModules,
    }),

  ],
  providers: [
    provideAnimationsAsync(),
    Store,
    // provideHttpClient()
  ],
  // bootstrap: [LoginComponent],
})
export class AppModule {}


