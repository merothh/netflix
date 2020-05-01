.class public Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;
.super Ljava/lang/Object;
.source "DummyOfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;


# static fields
.field private static final MPD_URL:Ljava/lang/String; = "file:///sdcard/offline/offline.mpd"

.field private static final TAG:Ljava/lang/String; = "dummy_offline_agent"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;->buildMpdfromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    return-object v0
.end method

.method private buildMpdfromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "dummy_offline_agent"

    const-string/jumbo v2, "generateMPD"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "dummy_offline_agent"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v2, p1, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    new-instance v3, Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-direct {v3, p2, v2, v1}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer/upstream/UriLoadable;->load()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v3}, Lcom/google/android/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const-string/jumbo v1, "dummy_offline_agent"

    const-string/jumbo v2, "generateMPD done"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "dummy_offline_agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " fial to load manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "dummy_offline_agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " fial to load manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abortManifestRequest(J)V
    .locals 0

    return-void
.end method

.method public notifyPause(J)V
    .locals 0

    return-void
.end method

.method public notifyPlay(J)V
    .locals 0

    return-void
.end method

.method public notifyPlayError(J)V
    .locals 0

    return-void
.end method

.method public notifyPlayProgress(JJ)V
    .locals 0

    return-void
.end method

.method public notifyStop(J)V
    .locals 0

    return-void
.end method

.method public requestOfflineManifest(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent$DummyOfflineManifest;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent$DummyOfflineManifest;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;)V

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;->onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
