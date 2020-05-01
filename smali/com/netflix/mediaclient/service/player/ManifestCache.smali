.class public Lcom/netflix/mediaclient/service/player/ManifestCache;
.super Ljava/lang/Object;
.source "ManifestCache.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IManifestCache;


# instance fields
.field private mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/IMedia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    return-void
.end method


# virtual methods
.method public cacheFlush()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->cacheFlush()V

    return-void
.end method

.method public cachePause()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->cachePause()V

    return-void
.end method

.method public cacheResume()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->cacheResume()V

    return-void
.end method

.method public cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V

    return-void
.end method

.method public setCacheManifestType(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setCacheManifestType(I)V

    return-void
.end method

.method public setMaxCacheByteSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setMaxCacheByteSize(I)V

    return-void
.end method

.method public setMaxCacheSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setMaxCacheSize(I)V

    return-void
.end method
