.class public Lai/gotit/giap/service/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# instance fields
.field private final flush:Ljava/lang/Runnable;

.field private flushing:Ljava/lang/Boolean;

.field private identityManager:Lai/gotit/giap/service/IdentityManager;

.field private networkManager:Lai/gotit/giap/service/NetworkManager;

.field private processingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lai/gotit/giap/entity/Task;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledJobHandler:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private shouldNotRestart:Ljava/lang/Boolean;

.field private started:Ljava/lang/Boolean;

.field private storage:Lai/gotit/giap/service/Storage;

.field private taskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lai/gotit/giap/entity/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetflushing(Lai/gotit/giap/service/TaskManager;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lai/gotit/giap/service/TaskManager;->flushing:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;
    .locals 0

    iget-object p0, p0, Lai/gotit/giap/service/TaskManager;->networkManager:Lai/gotit/giap/service/NetworkManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lai/gotit/giap/service/TaskManager;->processingQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettaskQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputflushing(Lai/gotit/giap/service/TaskManager;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lai/gotit/giap/service/TaskManager;->flushing:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanUpProcessingTasks(Lai/gotit/giap/service/TaskManager;)V
    .locals 0

    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->cleanUpProcessingTasks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;
    .locals 0

    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->createErrorCallback()Lcom/android/volley/Response$ErrorListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 0

    invoke-direct {p0, p1}, Lai/gotit/giap/service/TaskManager;->createSuccessCallback(Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdequeueEvents(Lai/gotit/giap/service/TaskManager;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->dequeueEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishFlushing(Lai/gotit/giap/service/TaskManager;)V
    .locals 0

    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->finishFlushing()V

    return-void
.end method

.method public constructor <init>(Lai/gotit/giap/service/Storage;Lai/gotit/giap/service/IdentityManager;Lai/gotit/giap/service/NetworkManager;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->processingQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->flushing:Ljava/lang/Boolean;

    .line 38
    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    .line 39
    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->shouldNotRestart:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->scheduledJobHandler:Ljava/util/concurrent/ScheduledFuture;

    .line 307
    new-instance v0, Lai/gotit/giap/service/TaskManager$3;

    invoke-direct {v0, p0}, Lai/gotit/giap/service/TaskManager$3;-><init>(Lai/gotit/giap/service/TaskManager;)V

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->flush:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lai/gotit/giap/service/TaskManager;->storage:Lai/gotit/giap/service/Storage;

    .line 48
    iput-object p2, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    .line 49
    iput-object p3, p0, Lai/gotit/giap/service/TaskManager;->networkManager:Lai/gotit/giap/service/NetworkManager;

    .line 51
    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->initScheduler()V

    .line 52
    invoke-virtual {p0}, Lai/gotit/giap/service/TaskManager;->start()V

    return-void
.end method

.method private addTask(Lai/gotit/giap/entity/Task;)V
    .locals 2

    .line 109
    :goto_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const-string v0, "TASK MANAGER: exceeding task queue limit (100). Removing oldest event in the queue ..."

    .line 110
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->shouldNotRestart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TASK MANAGER: Service stopped permanently. Ignore this "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " task."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string p1, "TASK MANAGER: added new task to the queue!"

    .line 122
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method private cleanUpProcessingTasks()V
    .locals 1

    .line 291
    :goto_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/gotit/giap/entity/Task;

    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getProcessing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "FLUSHING: Cleaned up finished tasks!"

    .line 294
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method private createErrorCallback()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 259
    new-instance v0, Lai/gotit/giap/service/TaskManager$2;

    invoke-direct {v0, p0}, Lai/gotit/giap/service/TaskManager$2;-><init>(Lai/gotit/giap/service/TaskManager;)V

    return-object v0
.end method

.method private createSuccessCallback(Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Lai/gotit/giap/service/TaskManager$1;

    invoke-direct {v0, p0, p1}, Lai/gotit/giap/service/TaskManager$1;-><init>(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private dequeueEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "DEQUEUE: events"

    .line 226
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lai/gotit/giap/service/TaskManager;->dequeueEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private dequeueEvents(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->processingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DEQUEUE: nothing left to dequeue"

    .line 232
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-object p1

    .line 235
    :cond_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->processingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/gotit/giap/entity/Task;

    .line 236
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "DEQUEUE: top item is not event, stop dequeue"

    .line 237
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v1, 0x1

    .line 240
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lai/gotit/giap/entity/Task;->setProcessing(Ljava/lang/Boolean;)V

    .line 241
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager;->processingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 242
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "DEQUEUE: added 1 event to the list"

    .line 243
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lai/gotit/giap/service/TaskManager;->dequeueEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private finishFlushing()V
    .locals 1

    .line 298
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->processingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 299
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FLUSHING: scheduler has stopped due to app\'s inactivity, save current queue into storage"

    .line 300
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->storeTasks()V

    :cond_0
    const/4 v0, 0x0

    .line 303
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->flushing:Ljava/lang/Boolean;

    const-string v0, "FLUSHING: Flushing finished!"

    .line 304
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized initScheduler()V
    .locals 2

    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 472
    monitor-exit p0

    return-void

    .line 474
    :cond_0
    :try_start_1
    new-instance v0, Lai/gotit/giap/service/TaskManager$4;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lai/gotit/giap/service/TaskManager$4;-><init>(Lai/gotit/giap/service/TaskManager;I)V

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadStoredTasks()V
    .locals 5

    const-string v0, "TASK MANAGER: found "

    const-string v1, "TASK MANAGER: loading tasks from Storage ..."

    .line 79
    invoke-static {v1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager;->storage:Lai/gotit/giap/service/Storage;

    const-string v2, "STORED_TASKS"

    invoke-virtual {v1, v2}, Lai/gotit/giap/service/Storage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " task(s) in storage."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 93
    new-instance v3, Lai/gotit/giap/entity/Task;

    invoke-direct {v3, v1}, Lai/gotit/giap/entity/Task;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "1.0"

    .line 95
    invoke-virtual {v3}, Lai/gotit/giap/entity/Task;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, v3}, Lai/gotit/giap/service/TaskManager;->addTask(Lai/gotit/giap/entity/Task;)V

    goto :goto_1

    :cond_0
    const-string v1, "TASK MANAGER: ignore task from old SDK version ..."

    .line 98
    invoke-static {v1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 101
    invoke-static {v1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 87
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const-string v0, "TASK MANAGER: loading saved tasks completed!"

    .line 105
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static makeInstance(Lai/gotit/giap/service/Storage;Lai/gotit/giap/service/IdentityManager;Lai/gotit/giap/service/NetworkManager;)Lai/gotit/giap/service/TaskManager;
    .locals 1

    .line 56
    new-instance v0, Lai/gotit/giap/service/TaskManager;

    invoke-direct {v0, p0, p1, p2}, Lai/gotit/giap/service/TaskManager;-><init>(Lai/gotit/giap/service/Storage;Lai/gotit/giap/service/IdentityManager;Lai/gotit/giap/service/NetworkManager;)V

    return-object v0
.end method

.method private storeTasks()V
    .locals 3

    const-string v0, "TASK MANAGER: storing tasks into Storage ..."

    .line 60
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 62
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 63
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lai/gotit/giap/entity/Task;

    .line 67
    :try_start_0
    invoke-virtual {v2}, Lai/gotit/giap/entity/Task;->serialize()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v2

    .line 69
    invoke-static {v2}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager;->storage:Lai/gotit/giap/service/Storage;

    const-string v2, "STORED_TASKS"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lai/gotit/giap/service/Storage;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TASK MANAGER: storing has completed!"

    .line 75
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createAliasTask(Ljava/lang/String;)V
    .locals 3

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {v1}, Lai/gotit/giap/service/IdentityManager;->getDistinctId()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "user_id"

    .line 140
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "distinct_id"

    .line 141
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    new-instance v1, Lai/gotit/giap/entity/Task;

    const-string v2, "ALIAS"

    invoke-direct {v1, v2, v0}, Lai/gotit/giap/entity/Task;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 147
    invoke-direct {p0, v1}, Lai/gotit/giap/service/TaskManager;->addTask(Lai/gotit/giap/entity/Task;)V

    .line 149
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {v0, p1}, Lai/gotit/giap/service/IdentityManager;->updateDistinctId(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 143
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public createAppendToPropertyTask(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "property_name"

    .line 198
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 199
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "current_distinct_id"

    .line 200
    iget-object p2, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {p2}, Lai/gotit/giap/service/IdentityManager;->getDistinctId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    new-instance p1, Lai/gotit/giap/entity/Task;

    const-string p2, "APPEND_TO_PROPERTY"

    invoke-direct {p1, p2, v0}, Lai/gotit/giap/entity/Task;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 207
    invoke-direct {p0, p1}, Lai/gotit/giap/service/TaskManager;->addTask(Lai/gotit/giap/entity/Task;)V

    return-void

    :catch_0
    move-exception p1

    .line 202
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public createEventTask(Lai/gotit/giap/entity/Event;)V
    .locals 2

    .line 128
    :try_start_0
    new-instance v0, Lai/gotit/giap/entity/Task;

    const-string v1, "EVENT"

    invoke-virtual {p1}, Lai/gotit/giap/entity/Event;->serialize()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lai/gotit/giap/entity/Task;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-direct {p0, v0}, Lai/gotit/giap/service/TaskManager;->addTask(Lai/gotit/giap/entity/Task;)V

    return-void

    :catch_0
    move-exception p1

    .line 130
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public createIdentifyTask(Ljava/lang/String;)V
    .locals 3

    .line 153
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {v1}, Lai/gotit/giap/service/IdentityManager;->getDistinctId()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "user_id"

    .line 156
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "current_distinct_id"

    .line 157
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    new-instance v1, Lai/gotit/giap/entity/Task;

    const-string v2, "IDENTIFY"

    invoke-direct {v1, v2, v0}, Lai/gotit/giap/entity/Task;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 163
    invoke-direct {p0, v1}, Lai/gotit/giap/service/TaskManager;->addTask(Lai/gotit/giap/entity/Task;)V

    .line 165
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {v0, p1}, Lai/gotit/giap/service/IdentityManager;->updateDistinctId(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 159
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public createIncreasePropertyTask(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "property_name"

    .line 183
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 184
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "current_distinct_id"

    .line 185
    iget-object p2, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {p2}, Lai/gotit/giap/service/IdentityManager;->getDistinctId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    new-instance p1, Lai/gotit/giap/entity/Task;

    const-string p2, "INCREASE_PROPERTY"

    invoke-direct {p1, p2, v0}, Lai/gotit/giap/entity/Task;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 192
    invoke-direct {p0, p1}, Lai/gotit/giap/service/TaskManager;->addTask(Lai/gotit/giap/entity/Task;)V

    return-void

    :catch_0
    move-exception p1

    .line 187
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public createRemoveFromPropertyTask(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .line 211
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "property_name"

    .line 213
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 214
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "current_distinct_id"

    .line 215
    iget-object p2, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {p2}, Lai/gotit/giap/service/IdentityManager;->getDistinctId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    new-instance p1, Lai/gotit/giap/entity/Task;

    const-string p2, "REMOVE_FROM_PROPERTY"

    invoke-direct {p1, p2, v0}, Lai/gotit/giap/entity/Task;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 222
    invoke-direct {p0, p1}, Lai/gotit/giap/service/TaskManager;->addTask(Lai/gotit/giap/entity/Task;)V

    return-void

    :catch_0
    move-exception p1

    .line 217
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public createUpdateProfileTask(Lorg/json/JSONObject;)V
    .locals 2

    .line 170
    :try_start_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {v0}, Lai/gotit/giap/service/IdentityManager;->getDistinctId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_distinct_id"

    .line 171
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    new-instance v0, Lai/gotit/giap/entity/Task;

    const-string v1, "UPDATE_PROFILE"

    invoke-direct {v0, v1, p1}, Lai/gotit/giap/entity/Task;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 177
    invoke-direct {p0, v0}, Lai/gotit/giap/service/TaskManager;->addTask(Lai/gotit/giap/entity/Task;)V

    return-void

    :catch_0
    move-exception p1

    .line 173
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized forceStopPermanently()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "TASK MANAGER: force stop permanently ..."

    .line 562
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 563
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lai/gotit/giap/service/TaskManager;->shouldNotRestart:Ljava/lang/Boolean;

    .line 564
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager;->scheduledJobHandler:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 565
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 567
    :cond_0
    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->finishFlushing()V

    const/4 v0, 0x0

    .line 568
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    const-string v0, "TASK MANAGER: Stopped permanently. Ignore incoming tasks."

    .line 569
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getTaskQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lai/gotit/giap/entity/Task;",
            ">;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->taskQueue:Ljava/util/Queue;

    return-object v0
.end method

.method hasStarted()Z
    .locals 1

    .line 574
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public restart()V
    .locals 1

    .line 539
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->shouldNotRestart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TASK MANAGER: Scheduler has started. Call stop() before starting again."

    .line 541
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 544
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    .line 545
    invoke-virtual {p0}, Lai/gotit/giap/service/TaskManager;->startScheduling()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 528
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->shouldNotRestart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TASK MANAGER: Scheduler has started. Call stop() before starting again."

    .line 530
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 533
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    .line 534
    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->loadStoredTasks()V

    .line 535
    invoke-virtual {p0}, Lai/gotit/giap/service/TaskManager;->startScheduling()V

    return-void
.end method

.method startScheduling()V
    .locals 8

    .line 509
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->shouldNotRestart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    const-string v0, "TASK MANAGER: scheduler not found (should not be). Can not start scheduling."

    .line 511
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->scheduledJobHandler:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TASK MANAGER: scheduling failed! Previous scheduled job has not done yet!"

    .line 515
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 518
    :cond_2
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lai/gotit/giap/service/TaskManager;->flush:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->scheduledJobHandler:Ljava/util/concurrent/ScheduledFuture;

    const-string v0, "TASK MANAGER: scheduler has started. Flushing tasks every 1 second(s)."

    .line 524
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 549
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TASK MANAGER: Scheduler has not started yet."

    .line 550
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "TASK MANAGER: stopping scheduler ..."

    .line 553
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager;->scheduledJobHandler:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 555
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 557
    :cond_1
    invoke-direct {p0}, Lai/gotit/giap/service/TaskManager;->storeTasks()V

    .line 558
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/service/TaskManager;->started:Ljava/lang/Boolean;

    return-void
.end method
