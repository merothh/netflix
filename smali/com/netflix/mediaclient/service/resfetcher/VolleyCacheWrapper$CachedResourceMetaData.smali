.class public Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;
.super Ljava/lang/Object;
.source "VolleyCacheWrapper.java"


# instance fields
.field final length:J

.field final localPath:Ljava/lang/String;

.field final offset:J

.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->this$0:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->length:J

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->localPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->offset:J

    return-void
.end method


# virtual methods
.method public getByteLength()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->length:J

    return-wide v0
.end method

.method public getByteOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->offset:J

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->localPath:Ljava/lang/String;

    return-object v0
.end method
