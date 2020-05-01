.class abstract Lo/uu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final a:J

.field protected final c:[Lo/uD;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p4, p0, Lo/uu;->d:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lo/uu;->e:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lo/uu;->a:J

    .line 23
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    .line 24
    new-array p2, p1, [Lo/uD;

    iput-object p2, p0, Lo/uu;->c:[Lo/uD;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 26
    iget-object p3, p0, Lo/uu;->c:[Lo/uD;

    new-instance p4, Lo/uD;

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Url;

    invoke-direct {p4, v0, p6, p7}, Lo/uD;-><init>(Lcom/netflix/mediaclient/media/manifest/Url;Ljava/util/List;Ljava/util/List;)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()Lo/tZ$Activity;
.end method

.method protected b()Ljava/lang/String;
    .locals 4

    .line 35
    iget-object v0, p0, Lo/uu;->e:Ljava/lang/String;

    iget-object v1, p0, Lo/uu;->d:Ljava/lang/String;

    iget-wide v2, p0, Lo/uu;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/ud;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/uu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()[Lo/tM;
    .locals 4

    .line 42
    iget-object v0, p0, Lo/uu;->c:[Lo/uD;

    array-length v0, v0

    new-array v0, v0, [Lo/tM;

    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-object v2, p0, Lo/uu;->c:[Lo/uD;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 44
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lo/uD;->d()Lo/tM;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method i()Z
    .locals 3

    .line 54
    iget-object v0, p0, Lo/uu;->c:[Lo/uD;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 55
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lo/uD;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file://"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
