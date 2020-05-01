.class abstract Lo/oB;
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

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;


# direct methods
.method constructor <init>(Ljava/util/List;JLjava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ok;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableType;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/oB;->a:Ljava/util/List;

    .line 25
    iget-object v0, p0, Lo/oB;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    iput-wide p2, p0, Lo/oB;->c:J

    .line 27
    iput-object p4, p0, Lo/oB;->d:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lo/oB;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-void
.end method

.method static a(Lcom/netflix/mediaclient/media/manifest/Stream;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;)",
            "Ljava/util/List<",
            "Lo/ok;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/manifest/Stream;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_2

    .line 39
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/manifest/Stream;->urls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/media/manifest/Url;

    .line 41
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/manifest/Url;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/manifest/Url;->cdnId()I

    move-result v3

    invoke-static {v3, p1}, Lo/sM;->e(ILjava/util/List;)Lo/sM;

    move-result-object v3

    .line 43
    new-instance v4, Lo/ok;

    .line 44
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/manifest/Url;->url()Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v3}, Lo/sM;->b()I

    move-result v3

    .line 46
    :goto_1
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/manifest/Url;->cdnId()I

    move-result v2

    int-to-long v6, v2

    invoke-direct {v4, v5, v3, v6, v7}, Lo/ok;-><init>(Ljava/lang/String;IJ)V

    .line 47
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/oB;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lo/oB;->c:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/oB;->d:Ljava/lang/String;

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

    .line 60
    iget-object v0, p0, Lo/oB;->a:Ljava/util/List;

    return-object v0
.end method
