import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from 'app/app.component';

const routes: Routes = [
  {
    path: 'tasks',
    component: AppComponent,
  },
  {
    path: '',
    redirectTo: '/tasks',
    pathMatch: 'full'
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
