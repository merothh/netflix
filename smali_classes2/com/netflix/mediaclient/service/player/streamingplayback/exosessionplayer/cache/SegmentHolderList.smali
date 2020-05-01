.class public Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lo/ug;",
        ">;"
    }
.end annotation


# instance fields
.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    return-void
.end method

.method private b(Lo/ug;)V
    .locals 9

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Lo/ug;->c()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_4

    .line 126
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 127
    invoke-virtual {p1}, Lo/ug;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {p1}, Lo/ug;->c()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    goto :goto_1

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    .line 134
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ug;

    .line 136
    invoke-virtual {v4}, Lo/ug;->c()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-ltz v7, :cond_2

    .line 137
    iget-wide v5, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    invoke-virtual {v4}, Lo/ug;->c()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    goto :goto_0

    .line 140
    :cond_3
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 141
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a()J
    .locals 8

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ug;

    .line 74
    invoke-virtual {v3}, Lo/ug;->g()J

    move-result-wide v4

    iget-object v3, v3, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->a()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v1, v4

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public a(Lo/Bj;)Lo/ug;
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ug;

    .line 22
    iget-object v2, v1, Lo/ug;->i:Lo/Bj;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lo/ug;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c(Lo/ug;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 5

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ug;

    .line 98
    iget-object v4, v3, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b()V

    .line 99
    iget v3, v3, Lo/ug;->m:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ug;

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 102
    :cond_1
    iget v4, v3, Lo/ug;->m:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Lo/ug;->b(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public c()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c:J

    return-wide v0
.end method

.method public c(Lo/ug;)Z
    .locals 2

    .line 148
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b()V

    .line 150
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b(Lo/ug;)V

    .line 151
    iget-object v1, p1, Lo/ug;->g:Lo/Bj;

    invoke-virtual {v1, p1}, Lo/Bj;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;)V

    return v0
.end method

.method public clear()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ug;

    .line 184
    iget-object v2, v1, Lo/ug;->g:Lo/Bj;

    invoke-virtual {v2, v1}, Lo/Bj;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;)V

    .line 185
    iget-object v1, v1, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->clear()V

    goto :goto_0

    .line 187
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b()V

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b(Lo/ug;)V

    return-void
.end method

.method public d()J
    .locals 8

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ug;

    .line 85
    invoke-virtual {v3}, Lo/ug;->o()J

    move-result-wide v4

    iget-object v3, v3, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->d()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v1, v4

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public e()Lo/ug;
    .locals 9

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ug;

    .line 47
    invoke-virtual {v4}, Lo/ug;->f()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v4}, Lo/ug;->k()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-ltz v7, :cond_2

    if-nez v7, :cond_0

    .line 52
    invoke-virtual {v4}, Lo/ug;->f()I

    move-result v7

    invoke-virtual {v1}, Lo/ug;->f()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 54
    :cond_2
    iget-object v7, v4, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v4, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->e()Lo/ug;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v4}, Lo/ug;->q()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public g()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ug;

    .line 108
    invoke-virtual {v1}, Lo/ug;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 157
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b()V

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b(Lo/ug;)V

    .line 160
    instance-of v1, p1, Lo/ug;

    if-eqz v1, :cond_0

    .line 161
    check-cast p1, Lo/ug;

    iget-object v1, p1, Lo/ug;->g:Lo/Bj;

    invoke-virtual {v1, p1}, Lo/Bj;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;)V

    .line 162
    iget-object p1, p1, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->clear()V

    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b()V

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b(Lo/ug;)V

    .line 172
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 173
    instance-of v2, v1, Lo/ug;

    if-eqz v2, :cond_0

    .line 174
    check-cast v1, Lo/ug;

    iget-object v2, v1, Lo/ug;->g:Lo/Bj;

    invoke-virtual {v2, v1}, Lo/Bj;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;)V

    .line 175
    iget-object v1, v1, Lo/ug;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->clear()V

    goto :goto_0

    :cond_1
    return v0
.end method
