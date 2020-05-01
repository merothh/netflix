.class public Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;
.super Ljava/lang/Object;
.source "MdxAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attemptMdxPrefetch(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attempt to prefetch a movie over MDX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->prefetchVideo(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MDX is not initialized, ignore prefetch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static isInPostPlay(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "postplayState"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "postplayState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-direct {v2, v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInCountdown()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInPrompt()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSameAsCurrentlyPlaying(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    const-string/jumbo v2, "same movie"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    const-string/jumbo v2, "same show"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;IZ)Z
    .locals 6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "Playing episode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTrackId()I

    move-result v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "Playing movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTrackId()I

    move-result v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;Z)Z
    .locals 1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;IZ)Z

    move-result v0

    return v0
.end method

.method private static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;IIZ)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting playback movieId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", epId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", trackId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bookmark "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    const-string/jumbo v2, "MDX agent not available - can\'t play video"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v2

    if-nez p5, :cond_3

    if-eqz v2, :cond_3

    invoke-static {p1, p2, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->isSameAsCurrentlyPlaying(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_4

    const-string/jumbo v2, "catalogId"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v2, "episodeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    const-string/jumbo v2, "trackId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    const-string/jumbo v2, "play done"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_GETCAPABILITY"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    goto :goto_0
.end method
