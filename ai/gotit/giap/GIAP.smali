.class public Lai/gotit/giap/GIAP;
.super Ljava/lang/Object;
.source "GIAP.java"


# static fields
.field private static instance:Lai/gotit/giap/GIAP;


# instance fields
.field private configManager:Lai/gotit/giap/service/ConfigManager;

.field private deviceInfoManager:Lai/gotit/giap/service/DeviceInfoManager;

.field private exceptionHandler:Lai/gotit/giap/service/ExceptionHandler;

.field private identityManager:Lai/gotit/giap/service/IdentityManager;

.field private networkManager:Lai/gotit/giap/service/NetworkManager;

.field private storage:Lai/gotit/giap/service/Storage;

.field private taskManager:Lai/gotit/giap/service/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p0}, Lai/gotit/giap/service/ExceptionHandler;->makeInstance(Lai/gotit/giap/GIAP;)Lai/gotit/giap/service/ExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/GIAP;->exceptionHandler:Lai/gotit/giap/service/ExceptionHandler;

    .line 71
    invoke-static {p3, p1, p2}, Lai/gotit/giap/service/ConfigManager;->makeInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lai/gotit/giap/service/ConfigManager;

    move-result-object p1

    iput-object p1, p0, Lai/gotit/giap/GIAP;->configManager:Lai/gotit/giap/service/ConfigManager;

    .line 72
    invoke-static {p1}, Lai/gotit/giap/service/Storage;->makeInstance(Lai/gotit/giap/service/ConfigManager;)Lai/gotit/giap/service/Storage;

    move-result-object p1

    iput-object p1, p0, Lai/gotit/giap/GIAP;->storage:Lai/gotit/giap/service/Storage;

    .line 73
    iget-object p2, p0, Lai/gotit/giap/GIAP;->configManager:Lai/gotit/giap/service/ConfigManager;

    invoke-static {p2, p1}, Lai/gotit/giap/service/DeviceInfoManager;->makeInstance(Lai/gotit/giap/service/ConfigManager;Lai/gotit/giap/service/Storage;)Lai/gotit/giap/service/DeviceInfoManager;

    move-result-object p1

    iput-object p1, p0, Lai/gotit/giap/GIAP;->deviceInfoManager:Lai/gotit/giap/service/DeviceInfoManager;

    .line 74
    iget-object p1, p0, Lai/gotit/giap/GIAP;->configManager:Lai/gotit/giap/service/ConfigManager;

    invoke-static {p1}, Lai/gotit/giap/service/NetworkManager;->makeInstance(Lai/gotit/giap/service/ConfigManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object p1

    iput-object p1, p0, Lai/gotit/giap/GIAP;->networkManager:Lai/gotit/giap/service/NetworkManager;

    .line 75
    iget-object p1, p0, Lai/gotit/giap/GIAP;->storage:Lai/gotit/giap/service/Storage;

    invoke-static {p1}, Lai/gotit/giap/service/IdentityManager;->makeInstance(Lai/gotit/giap/service/Storage;)Lai/gotit/giap/service/IdentityManager;

    move-result-object p1

    iput-object p1, p0, Lai/gotit/giap/GIAP;->identityManager:Lai/gotit/giap/service/IdentityManager;

    .line 76
    iget-object p2, p0, Lai/gotit/giap/GIAP;->storage:Lai/gotit/giap/service/Storage;

    iget-object v0, p0, Lai/gotit/giap/GIAP;->networkManager:Lai/gotit/giap/service/NetworkManager;

    invoke-static {p2, p1, v0}, Lai/gotit/giap/service/TaskManager;->makeInstance(Lai/gotit/giap/service/Storage;Lai/gotit/giap/service/IdentityManager;Lai/gotit/giap/service/NetworkManager;)Lai/gotit/giap/service/TaskManager;

    move-result-object p1

    iput-object p1, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    .line 79
    invoke-direct {p0, p3}, Lai/gotit/giap/GIAP;->registerGIAPActivityLifecycleCallbacks(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lai/gotit/giap/GIAP;
    .locals 1

    .line 63
    sget-object v0, Lai/gotit/giap/GIAP;->instance:Lai/gotit/giap/GIAP;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lai/gotit/giap/GIAP;
    .locals 2

    .line 92
    sget-object v0, Lai/gotit/giap/GIAP;->instance:Lai/gotit/giap/GIAP;

    if-nez v0, :cond_1

    .line 93
    const-class v0, Lai/gotit/giap/GIAP;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lai/gotit/giap/GIAP;->instance:Lai/gotit/giap/GIAP;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lai/gotit/giap/GIAP;

    invoke-direct {v1, p0, p1, p2}, Lai/gotit/giap/GIAP;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lai/gotit/giap/GIAP;->instance:Lai/gotit/giap/GIAP;

    .line 96
    monitor-exit v0

    return-object v1

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 100
    :cond_1
    :goto_0
    new-instance p0, Lai/gotit/giap/exception/GIAPInstanceExistsException;

    invoke-direct {p0}, Lai/gotit/giap/exception/GIAPInstanceExistsException;-><init>()V

    throw p0
.end method

.method private registerGIAPActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 106
    new-instance v0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;

    invoke-direct {v0, p0}, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;-><init>(Lai/gotit/giap/GIAP;)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    const-string p1, "Context is not an Application. We won\'t be able to automatically flush on background."

    .line 109
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    invoke-virtual {v0, p1}, Lai/gotit/giap/service/TaskManager;->createAliasTask(Ljava/lang/String;)V

    return-void
.end method

.method public appendToProperty(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    invoke-virtual {v0, p1, p2}, Lai/gotit/giap/service/TaskManager;->createAppendToPropertyTask(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public identify(Ljava/lang/String;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    invoke-virtual {v0, p1}, Lai/gotit/giap/service/TaskManager;->createIdentifyTask(Ljava/lang/String;)V

    return-void
.end method

.method public increaseProperty(Ljava/lang/String;D)V
    .locals 1

    .line 200
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lai/gotit/giap/service/TaskManager;->createIncreasePropertyTask(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public increaseProperty(Ljava/lang/String;I)V
    .locals 1

    .line 193
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lai/gotit/giap/service/TaskManager;->createIncreasePropertyTask(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 120
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lai/gotit/giap/service/TaskManager;->stop()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 126
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lai/gotit/giap/service/TaskManager;->restart()V

    :cond_0
    return-void
.end method

.method public onUncaughtException()V
    .locals 1

    .line 114
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lai/gotit/giap/service/TaskManager;->stop()V

    :cond_0
    return-void
.end method

.method public removeFromProperty(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    invoke-virtual {v0, p1, p2}, Lai/gotit/giap/service/TaskManager;->createRemoveFromPropertyTask(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 222
    iget-object v0, p0, Lai/gotit/giap/GIAP;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {v0}, Lai/gotit/giap/service/IdentityManager;->generateNewDistinctId()Ljava/lang/String;

    return-void
.end method

.method public track(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lai/gotit/giap/GIAP;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public track(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lai/gotit/giap/GIAP;->deviceInfoManager:Lai/gotit/giap/service/DeviceInfoManager;

    invoke-virtual {v0}, Lai/gotit/giap/service/DeviceInfoManager;->getDeviceInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lai/gotit/giap/GIAP;->identityManager:Lai/gotit/giap/service/IdentityManager;

    invoke-virtual {v1}, Lai/gotit/giap/service/IdentityManager;->getDistinctId()Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v2, Lai/gotit/giap/entity/Event;

    invoke-direct {v2, p1, v1, v0, p2}, Lai/gotit/giap/entity/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 152
    iget-object p1, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    invoke-virtual {p1, v2}, Lai/gotit/giap/service/TaskManager;->createEventTask(Lai/gotit/giap/entity/Event;)V

    return-void
.end method

.method public updateProfile(Lorg/json/JSONObject;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lai/gotit/giap/GIAP;->taskManager:Lai/gotit/giap/service/TaskManager;

    invoke-virtual {v0, p1}, Lai/gotit/giap/service/TaskManager;->createUpdateProfileTask(Lorg/json/JSONObject;)V

    return-void
.end method
