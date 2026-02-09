.class public Lai/gotit/giap/entity/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lai/gotit/giap/common/Serializable;


# instance fields
.field private customProps:Lorg/json/JSONObject;

.field private deviceInfo:Lorg/json/JSONObject;

.field private distinctId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private time:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lai/gotit/giap/entity/Event;->customProps:Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p0}, Lai/gotit/giap/entity/Event;->updateTimestamp()V

    .line 26
    iput-object p1, p0, Lai/gotit/giap/entity/Event;->name:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lai/gotit/giap/entity/Event;->distinctId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lai/gotit/giap/entity/Event;->deviceInfo:Lorg/json/JSONObject;

    if-eqz p4, :cond_2

    .line 31
    :try_start_0
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 35
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 36
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    .line 38
    :goto_1
    invoke-virtual {p0, p2, p3}, Lai/gotit/giap/entity/Event;->addCustomProp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_1
    iput-object p4, p0, Lai/gotit/giap/entity/Event;->customProps:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public addCustomProp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lai/gotit/giap/entity/Event;->customProps:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance p1, Lai/gotit/giap/exception/GIAPInvalidPropsPrefixException;

    invoke-direct {p1}, Lai/gotit/giap/exception/GIAPInvalidPropsPrefixException;-><init>()V

    throw p1
.end method

.method getTime()J
    .locals 2

    .line 99
    iget-object v0, p0, Lai/gotit/giap/entity/Event;->time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public serialize()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "$distinct_id"

    .line 64
    iget-object v2, p0, Lai/gotit/giap/entity/Event;->distinctId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$name"

    .line 65
    iget-object v2, p0, Lai/gotit/giap/entity/Event;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$time"

    .line 66
    iget-object v2, p0, Lai/gotit/giap/entity/Event;->time:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object v1, p0, Lai/gotit/giap/entity/Event;->deviceInfo:Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 71
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    iget-object v4, p0, Lai/gotit/giap/entity/Event;->deviceInfo:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Lai/gotit/giap/entity/Event;->deviceInfo:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v2

    .line 77
    :goto_1
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lai/gotit/giap/entity/Event;->customProps:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    iget-object v4, p0, Lai/gotit/giap/entity/Event;->customProps:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    iget-object v4, p0, Lai/gotit/giap/entity/Event;->customProps:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object v4, v2

    .line 90
    :goto_3
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public updateTimestamp()V
    .locals 2

    .line 48
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lai/gotit/giap/entity/Event;->time:Ljava/lang/Long;

    return-void
.end method
