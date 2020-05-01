.class public Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;
.super Ljava/lang/Object;
.source "NflxProtocolUtils.java"


# static fields
.field public static DELAYED:Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;


# instance fields
.field private final mCatalogId:Ljava/lang/String;

.field private final mHandleWithDelay:Z

.field private final mShowId:Ljava/lang/String;

.field private final mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 443
    new-instance v0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;-><init>(ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->DELAYED:Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    return-void
.end method

.method private constructor <init>(ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-boolean p1, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mHandleWithDelay:Z

    .line 454
    iput-object p2, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 455
    iput-object p3, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mCatalogId:Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mShowId:Ljava/lang/String;

    .line 457
    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-boolean p1, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mHandleWithDelay:Z

    .line 474
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 475
    iput-object p2, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mCatalogId:Ljava/lang/String;

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mShowId:Ljava/lang/String;

    .line 477
    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-boolean p1, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mHandleWithDelay:Z

    .line 468
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 469
    iput-object p3, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mCatalogId:Ljava/lang/String;

    .line 470
    iput-object p2, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mShowId:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public static createFromEpisode(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    new-instance v0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;-><init>(ZLjava/lang/String;)V

    .line 561
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    invoke-direct {v0, v1, p0, p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createFromMovie(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;
    .locals 3

    .prologue
    .line 547
    new-instance v0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {v0, v1, v2, p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;-><init>(ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromShow(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;
    .locals 3

    .prologue
    .line 537
    new-instance v0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {v0, v1, v2, p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;-><init>(ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCatalogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mCatalogId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mShowId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public handleWithDelay()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->mHandleWithDelay:Z

    return v0
.end method
