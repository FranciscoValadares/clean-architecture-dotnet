import { bootstrapApplication } from '@angular/platform-browser';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { appConfig } from './app/app.config';
import { AppModule } from './app/app.module';
import { LoginComponent } from './app/auth/login';
import '@angular/compiler';
import { AppComponent } from './app/app';
import { Store } from '@ngrx/store';




/** Customizando os logs */
// Função de log personalizada
const log = {
  info: (message: string) => console.info(`[INFO]: ${message}`),
  warn: (message: string) => console.warn(`[WARN]: ${message}`),
  error: (message: string, error?: any) => {
    console.log(`[ERROR]: ${message}`);
    if (error) {
      console.log('Detailed Error:', error);
    }
  }
};

// Mensagem de log ao iniciar o bootstrap
log.info('Starting Angular application...');

// Iniciar o módulo e tratar erros com logs detalhados
// bootstrapApplication()
//   .bootstrapModule(AppModule)
//   .then(() => {
//     log.info('Angular application bootstrapped successfully.');
//   })
//   .catch(err => {
//     log.error('Failed to bootstrap Angular application', err);
//   })
//   .finally(() => {
//     log.info('Bootstrap process complete.');
//   });



// Código original
bootstrapApplication(AppComponent,appConfig)
  .then(() => {
    log.info('Angular application bootstrapped successfully.');
  })
  .catch(err => {
    log.error('Failed to bootstrap Angular application', err);
  })
  .finally(() => {
    log.info('Bootstrap process complete.');
  });


// platformBrowserDynamic()
//   .bootstrapModule(AppModule)
//   .catch(err => console.error(err));

// Código originário
// import { AppComponent } from './app/app/app.component';
// bootstrapApplication(AppComponent, appConfig)
//   .catch((err) => console.error(err));
