import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import { Injectable, isDevMode } from '@angular/core';
import { mapTasks } from 'app/taskMapper';
import { Router } from '@angular/router';
import { getIvyApplicationName } from 'app/shared/path.util';
import { HttpHeaders, HttpClient } from '@angular/common/http';

@Injectable()
export class TaskCreatorService {
    constructor(private http: HttpClient, private router: Router) {
    }

    createTask(taskName: string): Observable<Response> {

        const taskToCreate: TaskToCreate = {
            taskName: taskName
        }
        // See: https://angular.io/guide/http
        const body = JSON.stringify(taskToCreate);
        const httpOptions = {
            headers: new HttpHeaders({
                'Content-Type': 'application/json',
            })
        };

        return this
            .http
            .post<Response>(`${this.getBaseUrl()}/createTask`, body, httpOptions);
    }

    getBaseUrl(): string {
        return `/ivy/api/${getIvyApplicationName()}`;
    }
}

interface TaskToCreate {
    taskName: string;
}
