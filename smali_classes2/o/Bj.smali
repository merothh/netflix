.class public Lo/Bj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lo/Bo;

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:J

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field public final i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

.field public final j:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ[",
            "Lo/Bo;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 28
    sget-object v10, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;->unknownTransitionHint:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lo/Bj;-><init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ[",
            "Lo/Bo;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;J",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/Bj;->f:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lo/Bj;->a:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lo/Bj;->e:J

    .line 35
    iput-wide p4, p0, Lo/Bj;->d:J

    .line 36
    iput-object p6, p0, Lo/Bj;->b:[Lo/Bo;

    .line 37
    iget-object p1, p0, Lo/Bj;->b:[Lo/Bo;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 38
    iput-object p7, p0, Lo/Bj;->c:Ljava/util/List;

    .line 39
    iput-wide p8, p0, Lo/Bj;->j:J

    .line 40
    iput-object p10, p0, Lo/Bj;->i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/Bj;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/Bj;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lo/Bj;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public e([Lo/Bo;)V
    .locals 10

    .line 65
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 66
    iget-object v4, p0, Lo/Bj;->b:[Lo/Bo;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 67
    iget-object v8, v3, Lo/Bo;->a:Ljava/lang/String;

    iget-object v9, v7, Lo/Bo;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 68
    iget v8, v3, Lo/Bo;->b:I

    iput v8, v7, Lo/Bo;->b:I

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, p0, Lo/Bj;->b:[Lo/Bo;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lo/Bj;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;

    .line 74
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;->r()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseSegment{defaultNextSegmentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startTimeMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/Bj;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", endTimeMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/Bj;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nextSegments="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/Bj;->b:[Lo/Bo;

    .line 132
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectedNextSegmentId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/Bj;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", earliestSkipRequestOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/Bj;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", transitionHint=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/Bj;->i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
