

interface Task {
    id: number;
    name: string;
    description: string;
    startTimeStamp: string;
    expiryTimeStamp: string;
    priority: number;
    state: number;
    activatorName: string;
    fullRequestPath: string;
    offline: boolean;
    case: Case;
}
