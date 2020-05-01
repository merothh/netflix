.class public Lo/oi;
.super Lo/oB;
.source ""


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ok;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v5, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->d:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lo/oB;-><init>(Ljava/util/List;JLjava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/media/manifest/Stream;Ljava/util/List;)Lo/oi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;)",
            "Lo/oi;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lo/oB;->a(Lcom/netflix/mediaclient/media/manifest/Stream;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    new-instance v0, Lo/oi;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/manifest/Stream;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lo/oi;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .line 16
    invoke-super {p0}, Lo/oB;->a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()J
    .locals 2

    .line 16
    invoke-super {p0}, Lo/oB;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-super {p0}, Lo/oB;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Ljava/util/List;
    .locals 1

    .line 16
    invoke-super {p0}, Lo/oB;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
