.class public Lcom/netflix/mediaclient/service/offline/download/CdnUrl;
.super Ljava/lang/Object;
.source "CdnUrl.java"


# instance fields
.field public final mCdnId:J

.field public final mRank:I

.field public final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mUrl:Ljava/lang/String;

    iput p2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mRank:I

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mCdnId:J

    return-void
.end method

.method public static sortByRank(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
