.class Lai/gotit/giap/service/NetworkManager$1;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/gotit/giap/service/NetworkManager;->request(ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/gotit/giap/service/NetworkManager;

.field final synthetic val$method:I


# direct methods
.method constructor <init>(Lai/gotit/giap/service/NetworkManager;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;I)V
    .locals 6

    .line 92
    iput-object p1, p0, Lai/gotit/giap/service/NetworkManager$1;->this$0:Lai/gotit/giap/service/NetworkManager;

    iput p7, p0, Lai/gotit/giap/service/NetworkManager$1;->val$method:I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lai/gotit/giap/service/NetworkManager$1;->this$0:Lai/gotit/giap/service/NetworkManager;

    invoke-static {v2}, Lai/gotit/giap/service/NetworkManager;->-$$Nest$fgetconfigManager(Lai/gotit/giap/service/NetworkManager;)Lai/gotit/giap/service/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lai/gotit/giap/service/ConfigManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget v1, p0, Lai/gotit/giap/service/NetworkManager$1;->val$method:I

    if-eqz v1, :cond_0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
