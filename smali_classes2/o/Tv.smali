.class public Lo/Tv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/Bc;

.field private b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field private final c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

.field private final e:Ljava/lang/String;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:J

.field private j:I

.field private k:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

.field private m:Z


# direct methods
.method public constructor <init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 7

    const-string v4, "Default"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 46
    invoke-direct/range {v0 .. v6}, Lo/Tv;-><init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    return-void
.end method

.method public constructor <init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v0, p0, Lo/Tv;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lo/Tv;->f:J

    .line 36
    iput-wide v0, p0, Lo/Tv;->i:J

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lo/Tv;->h:Z

    .line 50
    iput-object p5, p0, Lo/Tv;->e:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lo/Tv;->a:Lo/Bc;

    .line 52
    iput-object p2, p0, Lo/Tv;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 53
    iput p3, p0, Lo/Tv;->j:I

    .line 54
    iget p2, p0, Lo/Tv;->j:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p2

    invoke-interface {p2}, Lo/AK;->P()I

    move-result p2

    :goto_0
    iput p2, p0, Lo/Tv;->j:I

    .line 55
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p2

    invoke-interface {p2}, Lo/AK;->S()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    iput-wide p2, p0, Lo/Tv;->i:J

    .line 56
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->R()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    iput-wide p1, p0, Lo/Tv;->f:J

    .line 58
    iget-wide p1, p0, Lo/Tv;->f:J

    iget-wide v0, p0, Lo/Tv;->i:J

    const-wide/16 v2, 0x2

    div-long v2, v0, v2

    cmp-long p3, p1, v2

    if-ltz p3, :cond_1

    cmp-long p3, p1, v0

    if-lez p3, :cond_2

    .line 59
    :cond_1
    iget-wide p1, p0, Lo/Tv;->i:J

    iput-wide p1, p0, Lo/Tv;->f:J

    .line 61
    :cond_2
    iput-object p6, p0, Lo/Tv;->k:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    .line 62
    invoke-static {p4}, Lo/Tv;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object p1

    iput-object p1, p0, Lo/Tv;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-void
.end method

.method private static d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;
    .locals 3

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "postplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "PlayerLite"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "preplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    .line 165
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-object p0

    .line 162
    :cond_1
    new-instance p0, Lo/TV;

    invoke-direct {p0}, Lo/TV;-><init>()V

    return-object p0

    .line 160
    :cond_2
    new-instance p0, Lo/Uw;

    invoke-direct {p0}, Lo/Uw;-><init>()V

    return-object p0

    .line 158
    :cond_3
    new-instance p0, Lo/Us;

    invoke-direct {p0}, Lo/Us;-><init>()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x40b391df -> :sswitch_3
        -0x12f9cba9 -> :sswitch_2
        -0xc45bcb1 -> :sswitch_1
        0x2d2bd3d4 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 110
    iput p1, p0, Lo/Tv;->j:I

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lo/Tv;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lo/Tv;->g:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lo/Tv;->g:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 66
    iget v0, p0, Lo/Tv;->j:I

    return v0
.end method

.method public b(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lo/Tv;->k:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lo/Tv;->h:Z

    return-void
.end method

.method public c()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lo/Tv;->f:J

    return-wide v0
.end method

.method public d()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/Tv;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lo/Tv;->i:J

    return-wide v0
.end method

.method public e(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lo/Tv;->m:Z

    return-void
.end method

.method public f()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lo/Tv;->h:Z

    return v0
.end method

.method public g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 2

    .line 96
    iget-object v0, p0, Lo/Tv;->a:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Tv;->a:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lo/Tv;->a:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lo/AK;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/Tv;->a:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/Tv;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public k()Lo/Bc;
    .locals 1

    .line 151
    iget-object v0, p0, Lo/Tv;->a:Lo/Bc;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lo/Tv;->m:Z

    return v0
.end method

.method public m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/Tv;->k:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-object v0
.end method

.method public n()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;
    .locals 1

    .line 143
    iget-object v0, p0, Lo/Tv;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lo/Tv;->e:Ljava/lang/String;

    return-object v0
.end method
