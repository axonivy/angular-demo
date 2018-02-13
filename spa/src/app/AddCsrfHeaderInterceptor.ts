import {
    HttpEvent,
    HttpInterceptor,
    HttpHandler,
    HttpRequest,
} from '@angular/common/http';
import { Observable } from 'rxjs/Observable';

export class AddCsrfHeaderInterceptor implements HttpInterceptor {
    intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        const clonedRequest = req.clone({ headers: req.headers.set('X-Requested-By', 'XMLHttpRequest') });
        return next.handle(clonedRequest);
    }
}
