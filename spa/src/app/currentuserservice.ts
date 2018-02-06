import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import { Injectable, isDevMode } from '@angular/core';
import { getIvyApplicationName } from 'app/shared/path.util';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class CurrentUserService {
    constructor(private http: HttpClient) {
    }

    currentUser(): Observable<UserInfo> {
        return this.http.get<UserInfo>(`${this.getBaseUrl()}/currentUser`);
    }

    getBaseUrl(): string {
        return `/ivy/api/${getIvyApplicationName()}`;
    }
}

export interface UserInfo {
    memberName: string;
    emailAddress: string;
    displayName: string;
}
