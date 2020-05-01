.class public Lo/Bl;
.super Lo/Bj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Bl$Activity;
    }
.end annotation


# instance fields
.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JJ[Lo/Bo;)V
    .locals 10

    .line 21
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lo/Bl;-><init>(JLjava/lang/String;JJ[Lo/Bo;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JJ[Lo/Bo;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "JJ[",
            "Lo/Bo;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p4

    move-wide v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 14
    invoke-direct/range {v0 .. v7}, Lo/Bj;-><init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;)V

    move-wide v0, p1

    .line 15
    iput-wide v0, v8, Lo/Bl;->g:J

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, v8, Lo/Bl;->f:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;JJ)V
    .locals 0
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
            "JJ)V"
        }
    .end annotation

    .line 31
    invoke-direct/range {p0 .. p10}, Lo/Bj;-><init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V

    .line 32
    iput-wide p11, p0, Lo/Bl;->g:J

    .line 33
    iput-wide p13, p0, Lo/Bl;->f:J

    return-void
.end method


# virtual methods
.method public c()Lo/Bl$Activity;
    .locals 3

    .line 45
    new-instance v0, Lo/Bl$Activity;

    iget-wide v1, p0, Lo/Bl;->g:J

    invoke-direct {v0, v1, v2}, Lo/Bl$Activity;-><init>(J)V

    .line 46
    iget-object v1, p0, Lo/Bl;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/Bl$Activity;->b(Lo/Bl$Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    iget-wide v1, p0, Lo/Bl;->e:J

    invoke-static {v0, v1, v2}, Lo/Bl$Activity;->c(Lo/Bl$Activity;J)J

    .line 48
    iget-wide v1, p0, Lo/Bl;->d:J

    invoke-static {v0, v1, v2}, Lo/Bl$Activity;->e(Lo/Bl$Activity;J)J

    .line 49
    invoke-static {v0}, Lo/Bl$Activity;->c(Lo/Bl$Activity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lo/Bl;->b:[Lo/Bo;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-static {v0}, Lo/Bl$Activity;->e(Lo/Bl$Activity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lo/Bl;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-wide v1, p0, Lo/Bl;->j:J

    invoke-static {v0, v1, v2}, Lo/Bl$Activity;->b(Lo/Bl$Activity;J)J

    .line 52
    iget-object v1, p0, Lo/Bl;->i:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    invoke-static {v0, v1}, Lo/Bl$Activity;->b(Lo/Bl$Activity;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistSegment{viewable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/Bl;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-super {p0}, Lo/Bj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
