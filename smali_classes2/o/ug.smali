.class public Lo/ug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ug$ActionBar;
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Lo/ug$ActionBar;

.field final d:Ljava/lang/String;

.field final e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

.field public final f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

.field public final g:Lo/Bj;

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/tF;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo/Bj;

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/tF;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;

.field l:Lo/ug;

.field public m:I

.field n:J

.field o:I

.field private p:J

.field private q:Lo/uC;

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private w:J


# direct methods
.method public constructor <init>(Lo/ug$ActionBar;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/Bj;JLjava/lang/String;J)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;-><init>()V

    iput-object v0, p0, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ug;->j:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ug;->h:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lo/ug;->c:Lo/ug$ActionBar;

    .line 72
    iput-object p2, p0, Lo/ug;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    .line 73
    iput-wide p4, p0, Lo/ug;->b:J

    .line 74
    iput-object p6, p0, Lo/ug;->d:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lo/ug;->g:Lo/Bj;

    .line 76
    invoke-virtual {p2, p6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object p1

    iput-object p1, p0, Lo/ug;->i:Lo/Bj;

    .line 77
    iget-object p1, p0, Lo/ug;->i:Lo/Bj;

    iget-wide p1, p1, Lo/Bj;->e:J

    const-wide/16 p4, 0x0

    cmp-long p6, p1, p4

    if-lez p6, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 84
    :cond_0
    iget-object p6, p0, Lo/ug;->i:Lo/Bj;

    instance-of v0, p6, Lo/Bl;

    if-eqz v0, :cond_1

    .line 85
    check-cast p6, Lo/Bl;

    iget-wide v0, p6, Lo/Bl;->f:J

    add-long/2addr p1, v0

    .line 87
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo/ug;->u:J

    .line 88
    iget-object p1, p0, Lo/ug;->i:Lo/Bj;

    iget-wide p1, p1, Lo/Bj;->d:J

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo/ug;->w:J

    .line 89
    iput-wide p7, p0, Lo/ug;->a:J

    .line 91
    iget-object p1, p0, Lo/ug;->i:Lo/Bj;

    iget-wide p1, p1, Lo/Bj;->j:J

    iput-wide p1, p0, Lo/ug;->n:J

    .line 92
    iget-object p1, p3, Lo/Bj;->b:[Lo/Bo;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    aget-object p6, p1, p3

    .line 93
    iget-object p7, p0, Lo/ug;->d:Ljava/lang/String;

    iget-object p8, p6, Lo/Bo;->a:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_2

    .line 94
    iget-wide p1, p6, Lo/Bo;->e:J

    cmp-long p3, p1, p4

    if-ltz p3, :cond_3

    .line 95
    iget-wide p1, p6, Lo/Bo;->e:J

    iput-wide p1, p0, Lo/ug;->n:J

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 100
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lo/ug;->d()Z

    return-void
.end method

.method public constructor <init>(Lo/ug$ActionBar;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/ug;JLjava/lang/String;J)V
    .locals 10

    move-object v0, p3

    .line 104
    iget-object v4, v0, Lo/ug;->i:Lo/Bj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lo/ug;-><init>(Lo/ug$ActionBar;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/Bj;JLjava/lang/String;J)V

    .line 105
    iput-object v0, v1, Lo/ug;->l:Lo/ug;

    return-void
.end method


# virtual methods
.method public a()Lo/uC;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/ug;->q:Lo/uC;

    return-object v0
.end method

.method public a(Lo/ug;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c(Lo/ug;)Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lo/ug;->w:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .line 198
    iput p1, p0, Lo/ug;->o:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 184
    iput-wide p1, p0, Lo/ug;->w:J

    return-void
.end method

.method public c()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lo/ug;->n:J

    return-wide v0
.end method

.method public c(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 289
    iget-object v0, p0, Lo/ug;->h:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ug;->j:Ljava/util/List;

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lo/ug;->l:Lo/ug;

    if-nez v1, :cond_1

    return-object v0

    .line 293
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Lo/ug;->c(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lo/ug;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;

    return-void
.end method

.method public c(Lo/uC;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/ug;->q:Lo/uC;

    return-void
.end method

.method public d()Z
    .locals 7

    .line 137
    iget-object v0, p0, Lo/ug;->g:Lo/Bj;

    iget-object v0, v0, Lo/Bj;->b:[Lo/Bo;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 138
    iget-object v5, p0, Lo/ug;->d:Ljava/lang/String;

    iget-object v6, v4, Lo/Bo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    iget v0, p0, Lo/ug;->m:I

    iget v1, v4, Lo/Bo;->b:I

    if-eq v0, v1, :cond_1

    .line 140
    iget v0, v4, Lo/Bo;->b:I

    iput v0, p0, Lo/ug;->m:I

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public e()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/ug;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;

    return-object v0
.end method

.method public e(J)V
    .locals 0

    .line 176
    iput-wide p1, p0, Lo/ug;->u:J

    return-void
.end method

.method public e(Lo/uf;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 252
    iget-wide v2, v0, Lo/ug;->u:J

    iget v4, v1, Lo/uf;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-wide v6, v0, Lo/ug;->s:J

    goto :goto_0

    :cond_0
    iget-wide v6, v0, Lo/ug;->t:J

    :goto_0
    add-long v9, v2, v6

    .line 253
    invoke-virtual/range {p1 .. p1}, Lo/uf;->getDurationUs()J

    move-result-wide v2

    .line 254
    invoke-virtual/range {p1 .. p1}, Lo/uf;->bytesLoaded()J

    move-result-wide v6

    .line 255
    new-instance v4, Lo/tF;

    iget-object v8, v1, Lo/uf;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v13, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    move-object v8, v4

    move-wide v11, v2

    move-wide v15, v6

    invoke-direct/range {v8 .. v16}, Lo/tF;-><init>(JJJJ)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Lo/uf;->e()I

    move-result v1

    if-eq v1, v5, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v1, v0, Lo/ug;->j:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-wide v4, v0, Lo/ug;->t:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lo/ug;->t:J

    .line 265
    iget-wide v1, v0, Lo/ug;->p:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Lo/ug;->p:J

    goto :goto_1

    .line 258
    :cond_2
    iget-object v1, v0, Lo/ug;->h:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-wide v4, v0, Lo/ug;->s:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lo/ug;->s:J

    .line 260
    iget-wide v1, v0, Lo/ug;->r:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Lo/ug;->r:J

    :goto_1
    return-void
.end method

.method public f()I
    .locals 1

    .line 191
    iget v0, p0, Lo/ug;->o:I

    return v0
.end method

.method public g()J
    .locals 4

    .line 216
    iget-wide v0, p0, Lo/ug;->s:J

    iget-wide v2, p0, Lo/ug;->t:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 2

    .line 202
    iget-object v0, p0, Lo/ug;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    iget-object v0, p0, Lo/ug;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 204
    iput-wide v0, p0, Lo/ug;->r:J

    .line 205
    iput-wide v0, p0, Lo/ug;->s:J

    .line 206
    iput-wide v0, p0, Lo/ug;->p:J

    .line 207
    iput-wide v0, p0, Lo/ug;->t:J

    .line 208
    iget-object v0, p0, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->g()V

    return-void
.end method

.method public i()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lo/ug;->u:J

    return-wide v0
.end method

.method public j()J
    .locals 4

    .line 212
    iget-wide v0, p0, Lo/ug;->u:J

    invoke-virtual {p0}, Lo/ug;->g()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public k()J
    .locals 4

    .line 243
    invoke-virtual {p0}, Lo/ug;->g()J

    move-result-wide v0

    iget-object v2, p0, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 244
    invoke-virtual {p0}, Lo/ug;->f()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public l()I
    .locals 5

    .line 248
    iget-wide v0, p0, Lo/ug;->s:J

    iget-wide v2, p0, Lo/ug;->t:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public m()J
    .locals 4

    .line 225
    invoke-virtual {p0}, Lo/ug;->g()J

    move-result-wide v0

    iget-object v2, p0, Lo/ug;->l:Lo/ug;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lo/ug;->m()J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public n()J
    .locals 4

    .line 229
    invoke-virtual {p0}, Lo/ug;->o()J

    move-result-wide v0

    iget-object v2, p0, Lo/ug;->l:Lo/ug;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lo/ug;->n()J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public o()J
    .locals 4

    .line 233
    iget-wide v0, p0, Lo/ug;->r:J

    iget-wide v2, p0, Lo/ug;->p:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public q()Z
    .locals 9

    .line 271
    iget-object v0, p0, Lo/ug;->q:Lo/uC;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/uC;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 275
    :cond_0
    invoke-virtual {p0}, Lo/ug;->g()J

    move-result-wide v2

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 276
    iget-wide v6, p0, Lo/ug;->w:J

    cmp-long v8, v6, v4

    if-gtz v8, :cond_1

    return v0

    .line 281
    :cond_1
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lo/ug;->a:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    invoke-virtual {p0}, Lo/ug;->j()J

    move-result-wide v2

    iget-wide v4, p0, Lo/ug;->w:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public r()V
    .locals 1

    .line 320
    iget-object v0, p0, Lo/ug;->c:Lo/ug$ActionBar;

    invoke-interface {v0, p0}, Lo/ug$ActionBar;->a(Lo/ug;)V

    return-void
.end method

.method public t()Lo/xJ;
    .locals 13

    .line 314
    new-instance v12, Lo/xJ;

    iget-object v1, p0, Lo/ug;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lo/ug;->f()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lo/ug;->s:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lo/ug;->t:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lo/ug;->r:J

    iget-wide v10, p0, Lo/ug;->p:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/xJ;-><init>(Ljava/lang/String;JJJJJ)V

    return-object v12
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{segment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ug;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buffered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Lo/ug;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/ug;->w:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const-string v1, "unknown"

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    iget-object v3, p0, Lo/ug;->i:Lo/Bj;

    iget-wide v3, v3, Lo/Bj;->e:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "ms, originalWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ug;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
