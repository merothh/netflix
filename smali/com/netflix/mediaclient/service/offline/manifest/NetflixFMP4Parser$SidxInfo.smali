.class public Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;
.super Ljava/lang/Object;
.source "NetflixFMP4Parser.java"


# instance fields
.field private mSidxOffset:J

.field private mSidxlength:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;->mSidxlength:J

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;->mSidxOffset:J

    return-void
.end method


# virtual methods
.method getSidxOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;->mSidxOffset:J

    return-wide v0
.end method

.method getSidxlength()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;->mSidxlength:J

    return-wide v0
.end method
