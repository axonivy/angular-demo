import {Component, OnInit, OnDestroy, isDevMode} from '@angular/core';
import {MatIconRegistry, MatDialog} from '@angular/material';
import {DomSanitizer} from '@angular/platform-browser';
import { Router, ActivatedRoute } from '@angular/router';

import 'rxjs/add/operator/filter';

import {DialogComponent} from './dialog/dialog.component';
import { TaskService } from 'app/taskservice';
import { TaskCreatorService } from 'app/taskcreatorservice';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit, OnDestroy {

  tasks: Task[] = [];

  selectedTask: Task = {
    id: 6,
    name: 'name',
    description: 'desc',
    activatorName: '',
    fullRequestPath: '',
    case: null,
    expiryTimeStamp: '',
    offline: false,
    priority: 2,
    startTimeStamp: '',
    state: 1
  };

  sub: any;

  isDarkTheme = false;

  constructor(private route: ActivatedRoute, private router: Router, private taskService: TaskService,
    private taskCreatorService: TaskCreatorService,
    iconRegistry: MatIconRegistry,
    private sanitizer: DomSanitizer, private dialog: MatDialog) {
    // To avoid XSS attacks, the URL needs to be trusted from inside of your application.
    const avatarsSafeUrl = sanitizer.bypassSecurityTrustResourceUrl('./assets/avatars.svg');

    iconRegistry.addSvgIconSetInNamespace('avatars', avatarsSafeUrl);
  }

  ngOnInit() {

    this.sub = this.route.params.subscribe(params => {
      console.log('getting tasks: ');
      this.taskService
        .getAll()
        .subscribe(t => this.tasks = t);
    });
  }

  startProcess() {
    console.log(this.selectedTask.fullRequestPath);
  }

  iframeUrl() {
    let urlToShow = this.selectedTask.fullRequestPath;
    if (isDevMode()) {
      urlToShow = this.selectedTask.fullRequestPath.replace('8081', '4200'); // TODO
    }
    console.log(urlToShow);
    return this.sanitizer.bypassSecurityTrustResourceUrl(urlToShow);
  }


  ngOnDestroy() {
    this.sub.unsubscribe();
  }

  openAdminDialog() {
    this.dialog.open(DialogComponent).afterClosed()
      .filter(result => !!result)
      .subscribe(task => {

        this.taskCreatorService.createTask(task.name, task.description)
          .subscribe(r => {
            console.log(`task creation status code: ${r}`)
            // TODO error handling
            this.taskService
              .getAll()
              .subscribe(t => this.tasks = t);
          });
      });
  }


}
