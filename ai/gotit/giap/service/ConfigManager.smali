.class public Lai/gotit/giap/service/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private serverUrl:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lai/gotit/giap/service/ConfigManager;->context:Landroid/content/Context;

    .line 8
    iput-object v0, p0, Lai/gotit/giap/service/ConfigManager;->serverUrl:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lai/gotit/giap/service/ConfigManager;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lai/gotit/giap/service/ConfigManager;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lai/gotit/giap/service/ConfigManager;->serverUrl:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lai/gotit/giap/service/ConfigManager;->token:Ljava/lang/String;

    return-void
.end method

.method public static makeInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lai/gotit/giap/service/ConfigManager;
    .locals 1

    .line 21
    new-instance v0, Lai/gotit/giap/service/ConfigManager;

    invoke-direct {v0, p0, p1, p2}, Lai/gotit/giap/service/ConfigManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 25
    iget-object v0, p0, Lai/gotit/giap/service/ConfigManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lai/gotit/giap/service/ConfigManager;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lai/gotit/giap/service/ConfigManager;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lai/gotit/giap/service/ConfigManager;->context:Landroid/content/Context;

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lai/gotit/giap/service/ConfigManager;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lai/gotit/giap/service/ConfigManager;->token:Ljava/lang/String;

    return-void
.end method
