.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

.field final synthetic val$movieId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$movieId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$movieId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 105
    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$movieId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-static {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    .line 107
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "manifest available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$movieId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$movieId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$500(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    goto :goto_0
.end method
