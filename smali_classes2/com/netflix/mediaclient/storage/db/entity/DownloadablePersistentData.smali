.class public Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mDownloadableId:Ljava/lang/String;

.field public mIsComplete:Z

.field public mSizeOfDownloadable:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    .line 22
    iput-wide p2, p0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mSizeOfDownloadable:J

    return-void
.end method
