.class public Lcom/netflix/cl/model/context/ProcessState;
.super Lcom/netflix/cl/model/context/CLContext;
.source ""


# instance fields
.field private allocation:Lcom/netflix/cl/model/AllocationMode;

.field private computation:Lcom/netflix/cl/model/ComputationMode;

.field private interaction:Lcom/netflix/cl/model/InteractionMode;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/AllocationMode;Lcom/netflix/cl/model/InteractionMode;Lcom/netflix/cl/model/ComputationMode;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/netflix/cl/model/context/CLContext;-><init>()V

    const-string v0, "ProcessState"

    .line 25
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/context/ProcessState;->addContextType(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/netflix/cl/model/context/ProcessState;->allocation:Lcom/netflix/cl/model/AllocationMode;

    .line 27
    iput-object p2, p0, Lcom/netflix/cl/model/context/ProcessState;->interaction:Lcom/netflix/cl/model/InteractionMode;

    .line 28
    iput-object p3, p0, Lcom/netflix/cl/model/context/ProcessState;->computation:Lcom/netflix/cl/model/ComputationMode;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/netflix/cl/model/context/CLContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/netflix/cl/model/context/ProcessState;->allocation:Lcom/netflix/cl/model/AllocationMode;

    const-string v2, "allocation"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object v1, p0, Lcom/netflix/cl/model/context/ProcessState;->interaction:Lcom/netflix/cl/model/InteractionMode;

    const-string v2, "interaction"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object v1, p0, Lcom/netflix/cl/model/context/ProcessState;->computation:Lcom/netflix/cl/model/ComputationMode;

    const-string v2, "computation"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
