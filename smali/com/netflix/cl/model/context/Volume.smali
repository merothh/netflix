.class public Lcom/netflix/cl/model/context/Volume;
.super Lcom/netflix/cl/model/context/CLContext;
.source ""


# instance fields
.field private level:Ljava/lang/Float;

.field private muting:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Float;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/netflix/cl/model/context/CLContext;-><init>()V

    const-string v0, "Volume"

    .line 21
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/context/Volume;->addContextType(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/netflix/cl/model/context/Volume;->muting:Ljava/lang/Boolean;

    .line 23
    iput-object p2, p0, Lcom/netflix/cl/model/context/Volume;->level:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/netflix/cl/model/context/CLContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/netflix/cl/model/context/Volume;->muting:Ljava/lang/Boolean;

    const-string v2, "muting"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/netflix/cl/model/context/Volume;->level:Ljava/lang/Float;

    const-string v2, "level"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
