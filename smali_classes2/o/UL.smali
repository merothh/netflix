.class public final Lo/UL;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final c:Lo/UL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lo/UL;

    invoke-direct {v0}, Lo/UL;-><init>()V

    sput-object v0, Lo/UL;->c:Lo/UL;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "PlaygraphUtil"

    .line 15
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(JZJLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)Z
    .locals 5

    const-string v0, "playlistControl"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 29
    move-object v1, p0

    check-cast v1, Lo/MessagePdu;

    .line 31
    invoke-interface {p6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v1

    instance-of v1, v1, Lo/Bm;

    if-eqz v1, :cond_6

    .line 32
    invoke-interface {p6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lo/Bm;

    .line 33
    invoke-virtual {v1}, Lo/Bm;->b()Lo/Bm$ActionBar;

    move-result-object v2

    .line 34
    invoke-interface {p6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    .line 38
    new-instance p3, Lo/Bl$Activity;

    invoke-direct {p3, p1, p2}, Lo/Bl$Activity;-><init>(J)V

    invoke-virtual {p3, p4, p5}, Lo/Bl$Activity;->a(J)Lo/Bl$Activity;

    move-result-object p1

    invoke-virtual {p1}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    move-result-object p1

    if-eqz v3, :cond_0

    .line 40
    iget-object p2, v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 41
    iget-object v4, v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v4}, Lo/Bm;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object p3

    check-cast p3, Lo/Bl;

    invoke-virtual {p3}, Lo/Bl;->c()Lo/Bl$Activity;

    move-result-object p3

    .line 42
    invoke-virtual {p3, v0}, Lo/Bl$Activity;->c(Ljava/lang/String;)Lo/Bl$Activity;

    move-result-object p3

    .line 43
    new-instance p4, Lo/Bo$StateListAnimator;

    invoke-direct {p4, v0}, Lo/Bo$StateListAnimator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lo/Bo$StateListAnimator;->e()Lo/Bo;

    move-result-object p4

    invoke-virtual {p3, p4}, Lo/Bl$Activity;->a(Lo/Bo;)Lo/Bl$Activity;

    move-result-object p3

    .line 44
    invoke-virtual {p3}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object p3

    .line 39
    invoke-virtual {p1, p2, p3}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    goto :goto_2

    .line 47
    :cond_2
    new-instance p3, Lo/Bl$Activity;

    invoke-direct {p3, p1, p2}, Lo/Bl$Activity;-><init>(J)V

    invoke-virtual {p3, p4, p5}, Lo/Bl$Activity;->a(J)Lo/Bl$Activity;

    move-result-object p1

    invoke-virtual {p1}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    move-result-object p1

    if-eqz v3, :cond_3

    .line 49
    iget-object p2, v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p2, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 50
    iget-object v4, v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1, v4}, Lo/Bm;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object p3

    check-cast p3, Lo/Bl;

    invoke-virtual {p3}, Lo/Bl;->c()Lo/Bl$Activity;

    move-result-object p3

    .line 51
    new-instance p4, Lo/Bo$StateListAnimator;

    invoke-direct {p4, v0}, Lo/Bo$StateListAnimator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lo/Bo$StateListAnimator;->e()Lo/Bo;

    move-result-object p4

    invoke-virtual {p3, p4}, Lo/Bl$Activity;->a(Lo/Bo;)Lo/Bl$Activity;

    move-result-object p3

    .line 52
    invoke-virtual {p3}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object p3

    .line 48
    invoke-virtual {p1, p2, p3}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    .line 56
    :goto_2
    invoke-virtual {v2}, Lo/Bm$ActionBar;->b()Lo/Bm;

    move-result-object p1

    .line 58
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-interface {p6, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z

    const/4 p1, 0x1

    goto :goto_3

    .line 32
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.interface_.player.playlist.GenericPlaylistMap"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method public final b(Ljava/lang/String;JLo/XT;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;)V
    .locals 1

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackExperience"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 76
    move-object p3, p0

    check-cast p3, Lo/MessagePdu;

    .line 78
    new-instance p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    invoke-direct {p3, p1, p2, p5, p6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 77
    invoke-virtual {p4, p3, p8, p7}, Lo/XT;->c(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Lo/XT;Lo/Tv;Lo/Tv;ILcom/netflix/mediaclient/servicemgr/PlayContext;)Z
    .locals 19

    move-object/from16 v4, p2

    const-string v0, "playlistId"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {v4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainItem"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 97
    invoke-virtual/range {p3 .. p3}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v9, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v5, p5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    .line 100
    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 101
    invoke-virtual/range {p3 .. p3}, Lo/Tv;->n()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v2

    const-string v8, "prePlayItem.playbackExperience"

    invoke-static {v2, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    move-object/from16 v16, v4

    check-cast v16, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v11, v17

    move-wide v14, v5

    .line 103
    invoke-virtual/range {v10 .. v16}, Lo/UL;->a(JZJLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)Z

    move-result v8

    move-object v12, v2

    move-wide/from16 v10, v17

    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 106
    invoke-virtual/range {p4 .. p4}, Lo/Tv;->n()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v2

    const-string v8, "mainItem.playbackExperience"

    invoke-static {v2, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v2

    const/4 v8, 0x0

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v8, :cond_4

    goto :goto_3

    .line 119
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not seeking in playgrpah  - isinPreplay "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " appendedPreplayToPlayGraoh "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v10

    move-object/from16 v4, p2

    move-object/from16 v7, p6

    move-object v8, v12

    .line 109
    invoke-virtual/range {v0 .. v8}, Lo/UL;->b(Ljava/lang/String;JLo/XT;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;)V

    :goto_4
    return v9
.end method
