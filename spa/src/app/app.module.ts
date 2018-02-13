import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule, HttpClientXsrfModule, HTTP_INTERCEPTORS } from '@angular/common/http';

import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppComponent } from './app.component';
import { DialogComponent } from './dialog/dialog.component';

import { FlexLayoutModule } from '@angular/flex-layout';

import {
  MatButtonModule,
  MatCardModule,
  MatCheckboxModule,
  MatDialogModule,
  MatIconModule,
  MatInputModule,
  MatListModule,
  MatMenuModule,
  MatSelectModule,
  MatSidenavModule,
  MatSlideToggleModule,
  MatTabsModule,
  MatToolbarModule
} from '@angular/material';

import 'hammerjs';
import { TaskService } from 'app/taskservice';
import { AppRoutingModule } from 'app/app-routing.module';
import { APP_BASE_HREF } from '@angular/common';
import { getBaseLocation } from 'app/shared/path.util';
import { TaskCreatorService } from 'app/taskcreatorservice';
import { CurrentUserService } from 'app/currentuserservice';
import { HttpModule } from '@angular/http';
import { AddCsrfHeaderInterceptor } from 'app/AddCsrfHeaderInterceptor';


@NgModule({
  declarations: [
    AppComponent,
    DialogComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule, //TODO remove (switch taskservice to new HttpClient)
    HttpClientModule,
    BrowserAnimationsModule,
    AppRoutingModule,

    // Material
    MatButtonModule,
    MatCardModule,
    MatCheckboxModule,
    MatDialogModule,
    MatIconModule,
    MatInputModule,
    MatListModule,
    MatMenuModule,
    MatSelectModule,
    MatSidenavModule,
    MatSlideToggleModule,
    MatTabsModule,
    MatToolbarModule,


    // Flex-layout
    FlexLayoutModule
  ],
  providers: [{
    provide: APP_BASE_HREF,
    useFactory: getBaseLocation
  },
  {
    provide: HTTP_INTERCEPTORS,
    useClass: AddCsrfHeaderInterceptor,
    multi: true,
  },
  TaskService,
  TaskCreatorService,
  CurrentUserService],
  entryComponents: [DialogComponent],
  bootstrap: [AppComponent]
})
export class AppModule { }
