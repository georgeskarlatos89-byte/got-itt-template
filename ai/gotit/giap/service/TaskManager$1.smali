.class Lai/gotit/giap/service/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/gotit/giap/service/TaskManager;->createSuccessCallback(Ljava/lang/String;)Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lai/gotit/giap/service/TaskManager;

.field final synthetic val$taskName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lai/gotit/giap/service/TaskManager$1;->this$0:Lai/gotit/giap/service/TaskManager;

    iput-object p2, p0, Lai/gotit/giap/service/TaskManager$1;->val$taskName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lai/gotit/giap/service/TaskManager$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FLUSHING: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$1;->val$taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " task(s) succeed! - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lai/gotit/giap/service/TaskManager$1;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {p1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcleanUpProcessingTasks(Lai/gotit/giap/service/TaskManager;)V

    .line 253
    iget-object p1, p0, Lai/gotit/giap/service/TaskManager$1;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {p1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mfinishFlushing(Lai/gotit/giap/service/TaskManager;)V

    return-void
.end method
