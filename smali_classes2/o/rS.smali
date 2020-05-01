.class abstract Lo/rS;
.super Lo/sy;
.source ""


# instance fields
.field private final a:J

.field private final b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

.field private final d:I


# direct methods
.method constructor <init>(IJLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/sy;-><init>()V

    .line 21
    iput p1, p0, Lo/rS;->d:I

    .line 22
    iput-wide p2, p0, Lo/rS;->a:J

    if-eqz p4, :cond_0

    .line 26
    iput-object p4, p0, Lo/rS;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null transitionHint"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weight"
    .end annotation

    .line 32
    iget v0, p0, Lo/rS;->d:I

    return v0
.end method

.method public b()J
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "earliestSkipRequestOffset"
    .end annotation

    .line 38
    iget-wide v0, p0, Lo/rS;->a:J

    return-wide v0
.end method

.method public e()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transitionHint"
    .end annotation

    .line 44
    iget-object v0, p0, Lo/rS;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lo/sy;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 62
    check-cast p1, Lo/sy;

    .line 63
    iget v1, p0, Lo/rS;->d:I

    invoke-virtual {p1}, Lo/sy;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lo/rS;->a:J

    .line 64
    invoke-virtual {p1}, Lo/sy;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/rS;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    .line 65
    invoke-virtual {p1}, Lo/sy;->e()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 74
    iget v0, p0, Lo/rS;->d:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 76
    iget-wide v2, p0, Lo/rS;->a:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 78
    iget-object v1, p0, Lo/rS;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NextSegment{weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rS;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", earliestSkipRequestOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/rS;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transitionHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rS;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
