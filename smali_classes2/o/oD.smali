.class public Lo/oD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/op;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ok;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ok;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/oD;->a:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lo/oD;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object p1, p0, Lo/oD;->a:Ljava/util/List;

    invoke-static {p1}, Lo/ok;->d(Ljava/util/List;)V

    .line 24
    iput-wide p2, p0, Lo/oD;->b:J

    .line 25
    iput-object p4, p0, Lo/oD;->c:Ljava/lang/String;

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/media/SubtitleTrackData;Ljava/util/List;)Lo/oD;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/SubtitleUrl;",
            ">;)",
            "Lo/oD;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 39
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    move-object v6, v0

    move-wide v4, v2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 43
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v6, :cond_2

    .line 45
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v7, "nf_subtitleDlInfo"

    const-string v8, "subtitleUrl has different downloadableId.. ignore"

    .line 48
    invoke-static {v7, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_3
    :goto_1
    new-instance v4, Lo/ok;

    .line 53
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getCdnId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getRankForCdn(Ljava/lang/String;)I

    move-result v8

    .line 55
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getCdnId()J

    move-result-wide v9

    invoke-direct {v4, v5, v8, v9, v10}, Lo/ok;-><init>(Ljava/lang/String;IJ)V

    .line 56
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getSize()J

    move-result-wide v4

    goto :goto_0

    .line 60
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    cmp-long p0, v4, v2

    if-lez p0, :cond_5

    .line 61
    new-instance p0, Lo/oD;

    invoke-direct {p0, v1, v4, v5, v6}, Lo/oD;-><init>(Ljava/util/List;JLjava/lang/String;)V

    return-object p0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .line 83
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->b:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lo/oD;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/oD;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ok;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lo/oD;->a:Ljava/util/List;

    return-object v0
.end method
