.class public Lcom/netflix/cl/model/CachedVideoInfo;
.super Lcom/netflix/cl/model/Data;
.source ""


# instance fields
.field private displayable:Ljava/lang/Boolean;

.field private oxid:Ljava/lang/Long;

.field private playableStatus:Lcom/netflix/cl/model/CachedVideoPlayableStatus;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/netflix/cl/model/CachedVideoPlayableStatus;Ljava/lang/Boolean;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/netflix/cl/model/Data;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/cl/model/CachedVideoInfo;->oxid:Ljava/lang/Long;

    .line 23
    iput-object p2, p0, Lcom/netflix/cl/model/CachedVideoInfo;->playableStatus:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    .line 24
    iput-object p3, p0, Lcom/netflix/cl/model/CachedVideoInfo;->displayable:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/netflix/cl/model/CachedVideoInfo;->oxid:Ljava/lang/Long;

    const-string v2, "oxid"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/netflix/cl/model/CachedVideoInfo;->playableStatus:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    const-string v2, "playableStatus"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v1, p0, Lcom/netflix/cl/model/CachedVideoInfo;->displayable:Ljava/lang/Boolean;

    const-string v2, "displayable"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
