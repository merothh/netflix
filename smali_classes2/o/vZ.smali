.class public Lo/vZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/vZ$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/vt;

.field private final c:Lo/tP;

.field private final d:Lo/vZ$TaskDescription;

.field private final e:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method constructor <init>(Lo/tP;Lcom/google/android/exoplayer2/upstream/DataSource;Lo/vt;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lo/vZ$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/vZ$TaskDescription;-><init>(Lo/vZ$3;)V

    iput-object v0, p0, Lo/vZ;->d:Lo/vZ$TaskDescription;

    .line 40
    iput-object p1, p0, Lo/vZ;->c:Lo/tP;

    .line 41
    iput-object p2, p0, Lo/vZ;->e:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 42
    iput-object p3, p0, Lo/vZ;->a:Lo/vt;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 13

    .line 89
    iget-object v0, p0, Lo/vZ;->d:Lo/vZ$TaskDescription;

    invoke-virtual {v0}, Lo/vZ$TaskDescription;->a()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lo/vZ;->c:Lo/tP;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil;->d(Lcom/google/android/exoplayer2/upstream/DataSpec;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lo/tP;->d(Ljava/lang/String;I)Lo/tM;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lo/tM;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v1}, Lo/tM;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v7, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v9, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v11, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v12, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "NetflixDataSource"

    const-string v2, "location not available for stream id %s"

    .line 98
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/vZ;->e:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/vZ;->e:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/vZ;->e:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/vZ;->d:Lo/vZ$TaskDescription;

    invoke-virtual {v0, p1}, Lo/vZ$TaskDescription;->c(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 51
    iget-object v0, p0, Lo/vZ;->a:Lo/vt;

    invoke-virtual {v0}, Lo/vt;->b()V

    .line 53
    iget-object v0, p0, Lo/vZ;->d:Lo/vZ$TaskDescription;

    invoke-virtual {v0}, Lo/vZ$TaskDescription;->d()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil$DataSourceRequestType;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil$DataSourceRequestType;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil$DataSourceRequestType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil$DataSourceRequestType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v7, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v9, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v11, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    const/high16 v1, 0x10000

    or-int v12, p1, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil$DataSourceRequestType;->c:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil$DataSourceRequestType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil$DataSourceRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v8, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    const/high16 v1, 0x20000

    or-int v11, p1, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 68
    :goto_0
    invoke-direct {p0, v0}, Lo/vZ;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 1

    .line 73
    iget-object v0, p0, Lo/vZ;->e:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    return p1
.end method
