.class public Lai/gotit/giap/service/IdentityManager;
.super Ljava/lang/Object;
.source "IdentityManager.java"


# instance fields
.field private distinctId:Ljava/lang/String;

.field private storage:Lai/gotit/giap/service/Storage;


# direct methods
.method public constructor <init>(Lai/gotit/giap/service/Storage;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lai/gotit/giap/service/IdentityManager;->distinctId:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lai/gotit/giap/service/IdentityManager;->storage:Lai/gotit/giap/service/Storage;

    const-string v0, "DISTINCT_ID"

    .line 14
    invoke-virtual {p1, v0}, Lai/gotit/giap/service/Storage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lai/gotit/giap/service/IdentityManager;->generateNewDistinctId()Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, p0, Lai/gotit/giap/service/IdentityManager;->distinctId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static makeInstance(Lai/gotit/giap/service/Storage;)Lai/gotit/giap/service/IdentityManager;
    .locals 1

    .line 23
    new-instance v0, Lai/gotit/giap/service/IdentityManager;

    invoke-direct {v0, p0}, Lai/gotit/giap/service/IdentityManager;-><init>(Lai/gotit/giap/service/Storage;)V

    return-object v0
.end method


# virtual methods
.method public generateNewDistinctId()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/service/IdentityManager;->distinctId:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v0}, Lai/gotit/giap/service/IdentityManager;->updateDistinctId(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lai/gotit/giap/service/IdentityManager;->distinctId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lai/gotit/giap/service/IdentityManager;->distinctId:Ljava/lang/String;

    return-object v0
.end method

.method public updateDistinctId(Ljava/lang/String;)V
    .locals 2

    .line 37
    iput-object p1, p0, Lai/gotit/giap/service/IdentityManager;->distinctId:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lai/gotit/giap/service/IdentityManager;->storage:Lai/gotit/giap/service/Storage;

    const-string v1, "DISTINCT_ID"

    invoke-virtual {v0, v1, p1}, Lai/gotit/giap/service/Storage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
