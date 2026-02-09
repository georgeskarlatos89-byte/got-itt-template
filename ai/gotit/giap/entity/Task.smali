.class public Lai/gotit/giap/entity/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lai/gotit/giap/common/Serializable;


# instance fields
.field private data:Lorg/json/JSONObject;

.field private processing:Ljava/lang/Boolean;

.field private sdkVersion:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lai/gotit/giap/entity/Task;->data:Lorg/json/JSONObject;

    .line 13
    iput-object v0, p0, Lai/gotit/giap/entity/Task;->sdkVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/entity/Task;->processing:Ljava/lang/Boolean;

    const-string v0, "1.0"

    .line 17
    iput-object v0, p0, Lai/gotit/giap/entity/Task;->sdkVersion:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lai/gotit/giap/entity/Task;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lai/gotit/giap/entity/Task;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lai/gotit/giap/entity/Task;->data:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lai/gotit/giap/entity/Task;->data:Lorg/json/JSONObject;

    .line 13
    iput-object v0, p0, Lai/gotit/giap/entity/Task;->sdkVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lai/gotit/giap/entity/Task;->processing:Ljava/lang/Boolean;

    const-string v1, "task_type"

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lai/gotit/giap/entity/Task;->type:Ljava/lang/String;

    :try_start_0
    const-string v1, "data"

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lai/gotit/giap/entity/Task;->data:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    iput-object v0, p0, Lai/gotit/giap/entity/Task;->data:Lorg/json/JSONObject;

    :goto_0
    :try_start_1
    const-string v1, "sdk_version"

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lai/gotit/giap/entity/Task;->sdkVersion:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 36
    :catch_1
    iput-object v0, p0, Lai/gotit/giap/entity/Task;->sdkVersion:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 1

    .line 45
    iget-object v0, p0, Lai/gotit/giap/entity/Task;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getProcessing()Ljava/lang/Boolean;
    .locals 1

    .line 57
    iget-object v0, p0, Lai/gotit/giap/entity/Task;->processing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lai/gotit/giap/entity/Task;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lai/gotit/giap/entity/Task;->type:Ljava/lang/String;

    return-object v0
.end method

.method public serialize()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "task_type"

    .line 66
    iget-object v2, p0, Lai/gotit/giap/entity/Task;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 67
    iget-object v2, p0, Lai/gotit/giap/entity/Task;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    .line 68
    iget-object v2, p0, Lai/gotit/giap/entity/Task;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lai/gotit/giap/entity/Task;->data:Lorg/json/JSONObject;

    return-void
.end method

.method public setProcessing(Ljava/lang/Boolean;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lai/gotit/giap/entity/Task;->processing:Ljava/lang/Boolean;

    return-void
.end method
