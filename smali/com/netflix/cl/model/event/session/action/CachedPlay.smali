.class public Lcom/netflix/cl/model/event/session/action/CachedPlay;
.super Lcom/netflix/cl/model/event/session/action/Play;
.source ""


# instance fields
.field private oxid:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2, p3}, Lcom/netflix/cl/model/event/session/action/Play;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    const-string p2, "CachedPlay"

    .line 22
    invoke-virtual {p0, p2}, Lcom/netflix/cl/model/event/session/action/CachedPlay;->addContextType(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/action/CachedPlay;->oxid:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 31
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/Play;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/CachedPlay;->oxid:Ljava/lang/Long;

    const-string v2, "oxid"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
