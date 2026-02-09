.class Lai/gotit/giap/service/TaskManager$3;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/gotit/giap/service/TaskManager;
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

    .line 307
    iput-object p1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 309
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetflushing(Lai/gotit/giap/service/TaskManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "INCOMING FLUSHING: Another flushing is running. Ignore this flushing."

    .line 310
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgettaskQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INCOMING FLUSHING: Nothing to flush. Ignore this flushing."

    .line 314
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fputflushing(Lai/gotit/giap/service/TaskManager;Ljava/lang/Boolean;)V

    const-string v0, "INCOMING FLUSHING: New flushing has started!"

    .line 318
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 321
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v0

    iget-object v2, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v2}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgettaskQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 323
    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/gotit/giap/entity/Task;

    .line 324
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "IDENTIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "UPDATE_PROFILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "APPEND_TO_PROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "EVENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "ALIAS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "INCREASE_PROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    goto :goto_0

    :sswitch_6
    const-string v3, "REMOVE_FROM_PROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_0
    const-string v2, "property_name"

    const-string v3, "current_distinct_id"

    const-string v5, "value"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v2, "FLUSHING: try to flush identify task"

    .line 357
    invoke-static {v2}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 358
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lai/gotit/giap/entity/Task;->setProcessing(Ljava/lang/Boolean;)V

    .line 359
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 361
    :try_start_0
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    iget-object v3, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v3}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object v3

    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 366
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v0

    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 367
    invoke-static {v4}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v4

    .line 363
    invoke-virtual {v3, v1, v2, v0, v4}, Lai/gotit/giap/service/NetworkManager;->identify(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 370
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcleanUpProcessingTasks(Lai/gotit/giap/service/TaskManager;)V

    .line 371
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mfinishFlushing(Lai/gotit/giap/service/TaskManager;)V

    .line 372
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v2, "FLUSHING: try to flush updateProfile task"

    .line 378
    invoke-static {v2}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 379
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lai/gotit/giap/entity/Task;->setProcessing(Ljava/lang/Boolean;)V

    .line 380
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object v1

    .line 382
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getData()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 383
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v0

    iget-object v3, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 384
    invoke-static {v3}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v3

    .line 381
    invoke-virtual {v1, v2, v0, v3}, Lai/gotit/giap/service/NetworkManager;->updateProfile(Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_1

    :pswitch_2
    const-string v4, "FLUSHING: try to flush appendToProperty task"

    .line 424
    invoke-static {v4}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 425
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lai/gotit/giap/entity/Task;->setProcessing(Ljava/lang/Boolean;)V

    .line 426
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getData()Lorg/json/JSONObject;

    move-result-object v1

    .line 427
    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v4}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 429
    :try_start_1
    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v4}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object v6

    .line 430
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 431
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 432
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 433
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v10

    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 434
    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v11

    .line 429
    invoke-virtual/range {v6 .. v11}, Lai/gotit/giap/service/NetworkManager;->appendToProperty(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 437
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcleanUpProcessingTasks(Lai/gotit/giap/service/TaskManager;)V

    .line 438
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mfinishFlushing(Lai/gotit/giap/service/TaskManager;)V

    .line 439
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "FLUSHING: trying to flush event tasks"

    .line 326
    invoke-static {v1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mdequeueEvents(Lai/gotit/giap/service/TaskManager;)Ljava/util/List;

    move-result-object v1

    .line 329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FLUSHING: dequeue "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events to the batch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 332
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 333
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object v1

    iget-object v3, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 335
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v0

    iget-object v3, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 336
    invoke-static {v3}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v3

    .line 333
    invoke-virtual {v1, v2, v0, v3}, Lai/gotit/giap/service/NetworkManager;->track(Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "FLUSHING: empty event batch! (Should not happen)"

    .line 339
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "FLUSHING: try to flush alias task"

    .line 345
    invoke-static {v2}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 346
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lai/gotit/giap/entity/Task;->setProcessing(Ljava/lang/Boolean;)V

    .line 347
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object v1

    .line 349
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getData()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 350
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v0

    iget-object v3, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 351
    invoke-static {v3}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v3

    .line 348
    invoke-virtual {v1, v2, v0, v3}, Lai/gotit/giap/service/NetworkManager;->alias(Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_1

    :pswitch_5
    const-string v4, "FLUSHING: try to flush increaseProperty task"

    .line 390
    invoke-static {v4}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 391
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lai/gotit/giap/entity/Task;->setProcessing(Ljava/lang/Boolean;)V

    .line 392
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getData()Lorg/json/JSONObject;

    move-result-object v1

    .line 393
    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v4}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 396
    :try_start_2
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 397
    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v4}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object v6

    .line 398
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 400
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 401
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v10

    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 402
    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v11

    .line 397
    invoke-virtual/range {v6 .. v11}, Lai/gotit/giap/service/NetworkManager;->increaseProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_1

    .line 404
    :cond_a
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_b

    .line 405
    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v4}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object v6

    .line 406
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 408
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 409
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v10

    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 410
    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v11

    .line 405
    invoke-virtual/range {v6 .. v11}, Lai/gotit/giap/service/NetworkManager;->increaseProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 415
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcleanUpProcessingTasks(Lai/gotit/giap/service/TaskManager;)V

    .line 416
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mfinishFlushing(Lai/gotit/giap/service/TaskManager;)V

    .line 417
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_6
    const-string v4, "FLUSHING: try to flush removeFromProperty task"

    .line 446
    invoke-static {v4}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 447
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lai/gotit/giap/entity/Task;->setProcessing(Ljava/lang/Boolean;)V

    .line 448
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getData()Lorg/json/JSONObject;

    move-result-object v1

    .line 449
    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v4}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetprocessingQueue(Lai/gotit/giap/service/TaskManager;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 451
    :try_start_3
    iget-object v4, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v4}, Lai/gotit/giap/service/TaskManager;->-$$Nest$fgetnetworkManager(Lai/gotit/giap/service/TaskManager;)Lai/gotit/giap/service/NetworkManager;

    move-result-object v6

    .line 452
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 453
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 454
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 455
    invoke-virtual {v0}, Lai/gotit/giap/entity/Task;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateSuccessCallback(Lai/gotit/giap/service/TaskManager;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v10

    iget-object v0, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    .line 456
    invoke-static {v0}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcreateErrorCallback(Lai/gotit/giap/service/TaskManager;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v11

    .line 451
    invoke-virtual/range {v6 .. v11}, Lai/gotit/giap/service/NetworkManager;->removeFromProperty(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 459
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mcleanUpProcessingTasks(Lai/gotit/giap/service/TaskManager;)V

    .line 460
    iget-object v1, p0, Lai/gotit/giap/service/TaskManager$3;->this$0:Lai/gotit/giap/service/TaskManager;

    invoke-static {v1}, Lai/gotit/giap/service/TaskManager;->-$$Nest$mfinishFlushing(Lai/gotit/giap/service/TaskManager;)V

    .line 461
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;)V

    :cond_b
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x764089b1 -> :sswitch_6
        -0x137084ce -> :sswitch_5
        0x3b79e30 -> :sswitch_4
        0x3f47a7a -> :sswitch_3
        0x11b3d974 -> :sswitch_2
        0x244c1013 -> :sswitch_1
        0x268e5f0c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
