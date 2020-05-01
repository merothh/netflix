.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "NfManifestCache.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

.field final synthetic val$movieId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$movieId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchManifests movie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$movieId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 200
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fetchManifests failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$movieId:Ljava/lang/Long;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    .line 216
    :goto_0
    return-void

    .line 204
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchManifests return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$1000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
