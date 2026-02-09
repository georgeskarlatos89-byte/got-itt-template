.class public Lai/gotit/giap/service/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final SLEEP_TIMEOUT_MS:I

.field private final defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private giapInstance:Lai/gotit/giap/GIAP;


# direct methods
.method public constructor <init>(Lai/gotit/giap/GIAP;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    .line 8
    iput v0, p0, Lai/gotit/giap/service/ExceptionHandler;->SLEEP_TIMEOUT_MS:I

    .line 13
    iput-object p1, p0, Lai/gotit/giap/service/ExceptionHandler;->giapInstance:Lai/gotit/giap/GIAP;

    .line 14
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lai/gotit/giap/service/ExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private killProcessAndExit()V
    .locals 2

    const-wide/16 v0, 0x190

    .line 35
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 39
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 40
    invoke-virtual {p0}, Lai/gotit/giap/service/ExceptionHandler;->exit()V

    return-void
.end method

.method public static makeInstance(Lai/gotit/giap/GIAP;)Lai/gotit/giap/service/ExceptionHandler;
    .locals 1

    .line 19
    new-instance v0, Lai/gotit/giap/service/ExceptionHandler;

    invoke-direct {v0, p0}, Lai/gotit/giap/service/ExceptionHandler;-><init>(Lai/gotit/giap/GIAP;)V

    return-object v0
.end method


# virtual methods
.method exit()V
    .locals 1

    const/16 v0, 0xa

    .line 45
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lai/gotit/giap/service/ExceptionHandler;->giapInstance:Lai/gotit/giap/GIAP;

    invoke-virtual {v0}, Lai/gotit/giap/GIAP;->onUncaughtException()V

    .line 26
    iget-object v0, p0, Lai/gotit/giap/service/ExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lai/gotit/giap/service/ExceptionHandler;->killProcessAndExit()V

    :goto_0
    return-void
.end method
