.class public Lo/tM;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field public final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:Z

.field private o:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/manifest/Url;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Url;->url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/tM;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Url;->cdnId()I

    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/tM;->b:Ljava/lang/String;

    .line 38
    invoke-static {p1, p2}, Lo/sM;->e(ILjava/util/List;)Lo/sM;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lo/sM;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lo/tM;->c:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Lo/sM;->b()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lo/tM;->d:I

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Lo/sM;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, p2

    :goto_2
    iput-object v1, p0, Lo/tM;->f:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p1}, Lo/sM;->a()Z

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lo/tM;->j:Z

    if-eqz p1, :cond_4

    .line 43
    invoke-virtual {p1}, Lo/sM;->d()Ljava/lang/String;

    move-result-object p2

    :cond_4
    iput-object p2, p0, Lo/tM;->g:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lo/tM;->g:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/netflix/mediaclient/media/manifest/Location;->getLocation(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/Location;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 46
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Location;->rank()I

    move-result p2

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    :goto_4
    iput p2, p0, Lo/tM;->h:I

    if-eqz p1, :cond_6

    .line 47
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Location;->level()I

    move-result p2

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    :goto_5
    iput p2, p0, Lo/tM;->i:I

    if-eqz p1, :cond_7

    .line 48
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Location;->weight()I

    move-result v0

    :cond_7
    iput v0, p0, Lo/tM;->e:I

    const-wide/16 p1, -0x1

    .line 51
    iput-wide p1, p0, Lo/tM;->o:J

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/media/manifest/Url;Ljava/util/List;Ljava/util/List;)Lo/tM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;)",
            "Lo/tM;"
        }
    .end annotation

    .line 15
    new-instance v0, Lo/tM;

    invoke-direct {v0, p0, p1, p2}, Lo/tM;-><init>(Lcom/netflix/mediaclient/media/manifest/Url;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 67
    iget v0, p0, Lo/tM;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/tM;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/tM;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lo/tM;->o:J

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/tM;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lo/tM;->j:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/tM;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 87
    iget v0, p0, Lo/tM;->i:I

    return v0
.end method

.method public h()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lo/tM;->o:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    .line 91
    iget v0, p0, Lo/tM;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 83
    iget v0, p0, Lo/tM;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetflixLocationInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "url=\'"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/tM;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cdnId=\'"

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/tM;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cdnName=\'"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/tM;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cdnRank="

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/tM;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cdnType=\'"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/tM;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cdnLowgrade="

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo/tM;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", locationId=\'"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/tM;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", locationRank="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/tM;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locationLevel="

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/tM;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locationWeight="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/tM;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locationRegisteredTs="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/tM;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
