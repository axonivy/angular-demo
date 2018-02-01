import { isDevMode } from '@angular/core';

export function getBaseLocation(): string {
    const paths: string[] = location.pathname.split('/').splice(1, 5);
    const basePath = '/' + paths.join('/') + '/';
    return basePath;
}

export function getIvyApplicationName(): string {
    if (isDevMode()) {
        return 'designer';
    }
    const paths: string[] = location.pathname.split('/').splice(1, 5);
    const appName = paths[2];
    return appName;
}
