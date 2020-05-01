.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vq;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;JLjava/util/Map;Lo/UpdateEngine;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap<",
        "*>;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/netflix/model/leafs/originals/interactive/Moment;",
        ">;>;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field final synthetic d:Lo/UpdateEngine;

.field final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(JLkotlin/jvm/internal/Ref$BooleanRef;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/UpdateEngine;)V
    .locals 0

    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->b:J

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->d:Lo/UpdateEngine;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/util/Map;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "currentPlayListPosition"

    invoke-static {v1, v4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "playListMap"

    invoke-static {v2, v4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "moments"

    invoke-static {v3, v4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v4, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    const-string v5, "currentPlayListPosition.segmentId"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v5

    .line 68
    iget-wide v6, v5, Lo/Bj;->e:J

    .line 69
    iget-wide v8, v5, Lo/Bj;->d:J

    .line 71
    invoke-virtual/range {p1 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)J

    move-result-wide v10

    .line 77
    :try_start_0
    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    const-string v5, "currentPlayListPosition.playlistId"

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    const-wide/16 v14, -0x1

    .line 83
    :goto_0
    iget-wide v12, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->b:J

    add-long/2addr v12, v10

    .line 86
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    invoke-direct {v1, v14, v15, v12, v13}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;-><init>(JJ)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->c(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    move-wide/from16 v16, v1

    goto :goto_1

    :cond_0
    const-wide/16 v16, -0x1

    .line 91
    :goto_1
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    .line 94
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    check-cast v1, Ljava/lang/Iterable;

    .line 196
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 197
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Lcom/netflix/model/leafs/originals/interactive/Moment;

    .line 94
    invoke-virtual/range {v18 .. v18}, Lcom/netflix/model/leafs/originals/interactive/Moment;->type()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v1

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    move-wide/from16 v19, v14

    const-string v14, "scene"

    const/4 v15, 0x0

    invoke-static {v2, v14, v3, v1, v15}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_1
    move-wide/from16 v19, v14

    const/4 v15, 0x0

    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v1, v18

    move-wide/from16 v14, v19

    goto :goto_2

    :cond_3
    move-wide/from16 v19, v14

    const/4 v15, 0x0

    .line 198
    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    .line 199
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide/from16 v4, v16

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/netflix/model/leafs/originals/interactive/Moment;

    .line 95
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object v3

    .line 96
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/Moment;->endMs()Ljava/lang/Long;

    move-result-object v14

    .line 97
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const/16 v15, 0x1f40

    move-object/from16 v23, v1

    move/from16 v24, v2

    int-to-long v1, v15

    sub-long v21, v21, v1

    const-string v1, "momentEndMs"

    invoke-static {v14, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v15, v21, v10

    if-lez v15, :cond_4

    goto :goto_6

    :cond_4
    cmp-long v15, v1, v10

    if-ltz v15, :cond_5

    .line 99
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    .line 100
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    move-object/from16 v1, v23

    const/4 v2, 0x1

    :goto_5
    const/4 v3, 0x0

    const/4 v15, 0x0

    goto :goto_4

    :cond_5
    :goto_6
    const-string v1, "momentStartMs"

    .line 103
    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v15, v10, v1

    if-lez v15, :cond_6

    goto :goto_7

    :cond_6
    cmp-long v15, v12, v1

    if-ltz v15, :cond_8

    .line 104
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, v6

    cmp-long v3, v1, v4

    if-ltz v3, :cond_7

    cmp-long v3, v4, v16

    if-nez v3, :cond_b

    .line 107
    :cond_7
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 108
    sget-object v3, Lo/Vq;->b:Lo/Vq;

    check-cast v3, Lo/MessagePdu;

    move-wide v4, v1

    goto :goto_8

    .line 110
    :cond_8
    :goto_7
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v12, v1

    if-lez v3, :cond_9

    goto :goto_8

    :cond_9
    cmp-long v3, v10, v1

    if-ltz v3, :cond_b

    .line 111
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, v6

    cmp-long v3, v1, v4

    if-gtz v3, :cond_a

    cmp-long v1, v4, v16

    if-nez v1, :cond_b

    .line 113
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v4, v1, v6

    .line 114
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 115
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    :cond_b
    :goto_8
    move-object/from16 v1, v23

    move/from16 v2, v24

    goto :goto_5

    :cond_c
    move/from16 v24, v2

    goto :goto_9

    :cond_d
    move-wide/from16 v19, v14

    move-wide/from16 v4, v16

    const/16 v24, 0x0

    :goto_9
    cmp-long v1, v16, v4

    if-nez v1, :cond_13

    if-nez v24, :cond_13

    .line 122
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    cmp-long v1, v12, v6

    if-gtz v1, :cond_e

    const-wide/16 v4, 0x0

    .line 126
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    goto :goto_c

    :cond_e
    cmp-long v1, v12, v8

    if-ltz v1, :cond_13

    const-wide/16 v1, 0xdac

    sub-long v1, v8, v1

    .line 132
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    move-wide/from16 v12, v19

    invoke-direct {v3, v12, v13, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;-><init>(JJ)V

    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-wide v6, v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_a

    :cond_f
    const/16 v18, 0x0

    :goto_a
    cmp-long v3, v1, v10

    if-gtz v3, :cond_10

    cmp-long v1, v8, v10

    if-gez v1, :cond_11

    :cond_10
    if-nez v18, :cond_12

    .line 135
    :cond_11
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    const/16 v24, 0x1

    goto :goto_b

    .line 138
    :cond_12
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 139
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    .line 141
    :goto_b
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    goto :goto_d

    :cond_13
    :goto_c
    const/4 v2, 0x0

    .line 146
    :goto_d
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    check-cast v1, Lo/MessagePdu;

    if-nez v24, :cond_14

    .line 148
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v4, v5}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(J)V

    .line 150
    :cond_14
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-eqz v1, :cond_15

    .line 151
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->d:Lo/UpdateEngine;

    .line 152
    const-class v3, Lo/UP;

    .line 153
    new-instance v4, Lo/UP$Dialog;

    invoke-direct {v4, v2}, Lo/UP$Dialog;-><init>(Z)V

    check-cast v4, Lo/VintfObject;

    .line 151
    invoke-virtual {v1, v3, v4}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_15
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/util/Map;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
