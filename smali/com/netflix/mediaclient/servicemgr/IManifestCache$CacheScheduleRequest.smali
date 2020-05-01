.class public Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;
.super Ljava/lang/Object;
.source "IManifestCache.java"


# instance fields
.field private mMovieId:J

.field private mPriority:J

.field private mTrackId:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mMovieId:J

    .line 14
    iput-wide p3, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mTrackId:J

    .line 15
    iput-wide p5, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mPriority:J

    .line 16
    return-void
.end method


# virtual methods
.method public getMovieId()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mMovieId:J

    return-wide v0
.end method

.method public getPriority()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mPriority:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;->mTrackId:J

    return-wide v0
.end method
