.class Lai/gotit/giap/service/TaskManager$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/gotit/giap/service/TaskManager;->createErrorCallback()Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/gotit/giap/service/TaskManager;


# direct methods
.method constructor <init>(Lai/gotit/giap/service/TaskManager;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lai/gotit/giap/service/TaskManager$2;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 262
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    .line 263
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 269
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, v2, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 270
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    :goto_0
    const v1, 0x9ca5

    if-ne p1, v1, :cond_1

    const-string p1, "UNAUTHORIZED: This token is disabled at the moment. Stopping all GIAP\'s services and ignore all events."

    .line 275
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lai/gotit/giap/service/TaskManager$2;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-virtual {p1}, Lai/gotit/giap/service/TaskManager;->forceStopPermanently()V

    return-void

    :cond_1
    const/16 p1, 0x1f4

    if-lt v0, p1, :cond_2

    const/16 p1, 0x257

    if-gt v0, p1, :cond_2

    const-string p1, "FLUSHING: GIAP Platform Core internal error!"

    .line 279
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 281
    :cond_2
    iget-object p1, p0, Lai/gotit/giap/service/TaskManager$2;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {p1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcleanUpProcessingTasks(Lai/gotit/giap/service/TaskManager;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "FLUSHING: network error, retry!"

    .line 264
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 285
    :goto_2
    iget-object p1, p0, Lai/gotit/giap/service/TaskManager$2;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {p1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mfinishFlushing(Lai/gotit/giap/service/TaskManager;)V

    return-void
.end method
