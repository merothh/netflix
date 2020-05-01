.class public Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;
.super Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/sQ;Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Lo/sQ;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->i:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lo/sQ;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lo/sQ;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lo/sQ;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->d:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lo/sQ;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->e:Z

    .line 32
    invoke-virtual {p1}, Lo/sQ;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sI;

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lo/sI;->d()I

    move-result p2

    iput p2, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->f:I

    .line 35
    invoke-virtual {p1}, Lo/sI;->a()I

    move-result p2

    iput p2, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->g:I

    .line 36
    invoke-virtual {p1}, Lo/sI;->c()I

    move-result p2

    iput p2, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->h:I

    .line 37
    invoke-virtual {p1}, Lo/sI;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 39
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/media/manifest/Url;->newInstance(ILjava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Url;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->g:I

    iput p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->h:I

    iput p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->f:I

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 52
    instance-of v0, p1, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;

    .line 56
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->c:Ljava/lang/String;

    .line 57
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->a:Ljava/lang/String;

    .line 58
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->b:Ljava/lang/String;

    .line 59
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->d:Ljava/lang/String;

    .line 60
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->e:Z

    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->e:Z

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->f:I

    iget v2, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->f:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->g:I

    iget v2, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->g:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->h:I

    iget v2, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->h:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->i:Ljava/util/List;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->i:Ljava/util/List;

    .line 65
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
