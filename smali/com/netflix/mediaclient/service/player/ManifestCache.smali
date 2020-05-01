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

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    .line 13
    return-void
.end method


# virtual methods
.method public cacheFlush()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->cacheFlush()V

    .line 33
    return-void
.end method

.method public cachePause()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->cachePause()V

    .line 38
    return-void
.end method

.method public cacheResume()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->cacheResume()V

    .line 43
    return-void
.end method

.method public cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V

    .line 48
    return-void
.end method

.method public setCacheManifestType(I)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setCacheManifestType(I)V

    .line 18
    return-void
.end method

.method public setMaxCacheByteSize(I)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setMaxCacheByteSize(I)V

    .line 23
    return-void
.end method

.method public setMaxCacheSize(I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/ManifestCache;->mMediaBridgeApi:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setMaxCacheSize(I)V

    .line 28
    return-void
.end method
