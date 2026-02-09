.class Lai/gotit/giap/service/TaskManager$4;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/gotit/giap/service/TaskManager;->initScheduler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/gotit/giap/service/TaskManager;


# direct methods
.method constructor <init>(Lai/gotit/giap/service/TaskManager;I)V
    .locals 0

    .line 474
    iput-object p1, p0, Lai/gotit/giap/service/TaskManager$4;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-direct {p0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    .line 477
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 479
    instance-of v1, p1, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 481
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SCHEDULED TASK: Scheduler is shut down."

    .line 483
    invoke-static {v1}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    .line 484
    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 489
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :catch_2
    const-string p1, "SCHEDULED TASK: Scheduled job is cancelled!"

    .line 487
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const-string p1, "SCHEDULED TASK: Uncaught exception is detected!"

    .line 496
    invoke-static {p2, p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string p1, "Trying to restart the scheduler ..."

    .line 499
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 500
    iget-object p1, p0, Lai/gotit/giap/service/TaskManager$4;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-virtual {p1}, Lai/gotit/giap/service/TaskManager;->startScheduling()V

    :cond_1
    return-void
.end method
