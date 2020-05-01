.class final Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;->a(Lo/UP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;",
        "Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;

.field final synthetic e:Lo/UP;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;Lo/UP;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;->e:Lo/UP;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "playlistControl"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "im"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;->b(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;)Ljava/util/List;

    move-result-object v2

    .line 152
    sget-object v4, Lo/Vq;->b:Lo/Vq;

    invoke-virtual {v4, v1}, Lo/Vq;->a(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;->e:Lo/UP;

    check-cast v4, Lo/UP$Configuration;

    invoke-virtual {v4}, Lo/UP$Configuration;->d()I

    move-result v4

    int-to-long v4, v4

    :goto_0
    const/16 v6, 0x7d0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v2, :cond_1

    .line 155
    sget-object v2, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$Application;

    check-cast v2, Lo/MessagePdu;

    goto/16 :goto_3

    .line 157
    :cond_1
    sget-object v9, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$Application;

    check-cast v9, Lo/MessagePdu;

    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-ltz v11, :cond_8

    .line 159
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netflix/model/leafs/originals/interactive/Moment;

    .line 160
    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object v11

    const-string v12, "moment.startMs()"

    invoke-static {v11, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v13, v4, v11

    if-ltz v13, :cond_2

    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/Moment;->endMs()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    int-to-long v13, v6

    add-long/2addr v11, v13

    cmp-long v13, v4, v11

    if-gtz v13, :cond_2

    .line 161
    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/Moment;->precondition()Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 162
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->segmentHistory()Ljava/util/ArrayList;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v13

    .line 161
    invoke-virtual {v11, v12, v13}, Lcom/netflix/model/leafs/originals/interactive/condition/Condition;->meetsCondition(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_2

    :cond_3
    move-object v11, v8

    .line 165
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v11, v12}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    .line 166
    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/Moment;->type()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x683188c

    if-eq v12, v13, :cond_6

    const v13, 0x237a88eb

    if-eq v12, v13, :cond_5

    goto :goto_1

    :cond_5
    const-string v12, "notification"

    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 168
    iget-object v11, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;

    iget-object v11, v11, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;

    invoke-static {v11, v10, v4, v5}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;->e(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V

    goto :goto_1

    :cond_6
    const-string v12, "scene"

    .line 170
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 171
    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isFakeChoicePoint()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 172
    iget-object v11, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;

    iget-object v11, v11, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;

    invoke-static {v11, v10, v4, v5}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;->d(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V

    goto/16 :goto_1

    :cond_7
    move v7, v9

    :cond_8
    :goto_3
    if-nez v7, :cond_c

    .line 187
    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v2, v8

    .line 188
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v8

    :cond_a
    if-eqz v8, :cond_c

    .line 189
    iget-wide v7, v8, Lo/Bj;->d:J

    sub-long/2addr v7, v4

    int-to-long v4, v6

    cmp-long v1, v7, v4

    if-gtz v1, :cond_c

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->segmentGroups()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_c

    .line 191
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/BaseSegmentGroupItem;

    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->segmentHistory()Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "im.segmentHistory()"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 195
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->preconditions()Ljava/util/Map;

    move-result-object v5

    const-string v6, "im.preconditions()"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v6

    const-string v7, "im.stateHistory()"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->segmentGroups()Ljava/util/Map;

    move-result-object v7

    const-string v8, "im.segmentGroups()"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/netflix/model/leafs/originals/interactive/BaseSegmentGroupItem;->meetsConditions(Ljava/util/List;Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 200
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;->a(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;)Lo/XG;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x20

    const/16 v17, 0x0

    const-string v12, ""

    invoke-static/range {v9 .. v17}, Lo/Xt$StateListAnimator;->d(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$6$1;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
