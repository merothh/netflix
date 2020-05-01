.class public Lcom/netflix/cl/model/event/session/action/android/RemoveCachedVideoWithFeature;
.super Lcom/netflix/cl/model/event/session/action/RemoveCachedVideo;
.source ""


# instance fields
.field private feature:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;Ljava/lang/Long;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Lcom/netflix/cl/model/event/session/action/RemoveCachedVideo;-><init>(Ljava/lang/Long;)V

    const-string p2, "android.RemoveCachedVideoWithFeature"

    .line 23
    invoke-virtual {p0, p2}, Lcom/netflix/cl/model/event/session/action/android/RemoveCachedVideoWithFeature;->addContextType(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/action/android/RemoveCachedVideoWithFeature;->feature:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/RemoveCachedVideo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/android/RemoveCachedVideoWithFeature;->feature:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    const-string v2, "feature"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
