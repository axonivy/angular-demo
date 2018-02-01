import { Http, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import { Injectable, isDevMode } from '@angular/core';
import { mapTasks } from 'app/taskMapper';
import { Router, PRIMARY_OUTLET } from '@angular/router';
import { getIvyApplicationName } from 'app/shared/path.util';

@Injectable()
export class TaskService {
  constructor(private http: Http, private router: Router) {
  }

  getAll(): Observable<Task[]> {
    const tasks$ = this.http
      .get(`${this.getBaseUrl()}/tasks`)
      .map(mapTasks);
      return tasks$;
  }

  getBaseUrl(): string {
    return `/ivy/api/${getIvyApplicationName()}/workflow`;
  }
}
