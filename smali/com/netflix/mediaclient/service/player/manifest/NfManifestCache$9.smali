.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

.field final synthetic val$manifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

.field final synthetic val$movieId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$movieId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$manifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$movieId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callback js aborted for movie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$movieId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$movieId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 341
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$manifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    if-nez v0, :cond_3

    .line 334
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "manifest error for movie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$movieId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$movieId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;->onManifestError(Ljava/lang/Long;)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$manifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;->onManifestAvailable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    goto :goto_0
.end method
