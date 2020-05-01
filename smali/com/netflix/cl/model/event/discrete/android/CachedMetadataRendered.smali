.class public Lcom/netflix/cl/model/event/discrete/android/CachedMetadataRendered;
.super Lcom/netflix/cl/model/event/discrete/MetadataRendered;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/cl/model/event/discrete/MetadataRendered;-><init>(Ljava/lang/Long;)V

    const-string p1, "android.CachedMetadataRendered"

    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/discrete/android/CachedMetadataRendered;->addContextType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/netflix/cl/model/event/discrete/MetadataRendered;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
