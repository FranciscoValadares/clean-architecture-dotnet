import { NgModule, Optional, SkipSelf } from '@angular/core';



@NgModule({
  declarations: [],
  imports: []
})
export class CoreModule {

  constructor(@Optional() @SkipSelf() parentModule: CoreModule) {
    if (parentModule) {
      throw new Error('CoreModule já foi carregado. Import somente uma vez o AppModule');
    }
  }

}
