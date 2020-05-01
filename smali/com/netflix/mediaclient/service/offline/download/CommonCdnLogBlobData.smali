.class Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;
.super Ljava/lang/Object;
.source "CommonCdnLogBlobData.java"


# instance fields
.field final mDownloadableId:Ljava/lang/String;

.field final mDownloadableType:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field final mDxId:Ljava/lang/String;

.field final mManifestPlaybackContextId:Ljava/lang/String;

.field final mOxId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mOxId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDxId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDownloadableType:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDownloadableId:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mManifestPlaybackContextId:Ljava/lang/String;

    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;
    .locals 6

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;Ljava/lang/String;)V

    return-object v0
.end method
