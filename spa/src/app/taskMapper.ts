import { Http, Response } from '@angular/http';

export function mapTasks(response: Response): Task[] {
    const tasks: Task[] = response.json();
    return tasks;
}
