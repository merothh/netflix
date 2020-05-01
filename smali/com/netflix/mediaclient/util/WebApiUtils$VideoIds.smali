.class public Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
.super Ljava/lang/Object;
.source "WebApiUtils.java"


# instance fields
.field public catalogId:I

.field public catalogIdUrl:Ljava/lang/String;

.field public episodeId:I

.field public episodeIdUrl:Ljava/lang/String;

.field public isEpisode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean p1, p0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    .line 86
    iput-object p2, p0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    .line 88
    iput p4, p0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 89
    iput p5, p0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    .line 90
    return-void
.end method


# virtual methods
.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0
.end method
