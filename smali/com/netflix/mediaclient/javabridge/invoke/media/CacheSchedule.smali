.class public Lcom/netflix/mediaclient/javabridge/invoke/media/CacheSchedule;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "CacheSchedule.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "cacheSchedule"

.field private static final PARAMS:Ljava/lang/String; = "params"

.field private static final PROPERTY_IDS:Ljava/lang/String; = "ids"

.field private static final PROPERTY_MOVIEID:Ljava/lang/String; = "movieId"

.field private static final PROPERTY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final PROPERTY_TRACKID:Ljava/lang/String; = "trackId"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V
    .locals 8

    .prologue
    .line 23
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "cacheSchedule"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 29
    :try_start_0
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 30
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 31
    const-string/jumbo v5, "movieId"

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->getMovieId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v5, "trackId"

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->getTrackId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    const-string/jumbo v5, "priority"

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->getPriority()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    const-string/jumbo v2, "ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheSchedule;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
