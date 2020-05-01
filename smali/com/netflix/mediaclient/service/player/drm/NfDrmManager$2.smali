.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

.field final synthetic val$prefetchHints:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->val$prefetchHints:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->val$prefetchHints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/Triple;

    iget-object v1, v0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v2, v0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContext;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "movieId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", priority = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", already cached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->PREFETCH_PRIORITY_DEFAULT:I

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$300(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "movieId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", priority = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "NfPlayerDrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movieId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", priority = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", request manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$400(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/netflix/mediaclient/util/Triple;

    invoke-direct {v5, v1, v2, v0}, Lcom/netflix/mediaclient/util/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$500(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;->getManifestAsync(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
