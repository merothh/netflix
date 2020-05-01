.class public Lo/XT;
.super Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;


# instance fields
.field protected a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

.field private b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

.field private e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

.field private g:Lo/Bu;

.field private i:Lo/Bq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lo/XT;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lo/XT;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lo/XT;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 161
    new-instance p1, Lo/XV;

    invoke-direct {p1, p0}, Lo/XV;-><init>(Lo/XT;)V

    iput-object p1, p0, Lo/XT;->g:Lo/Bu;

    return-void
.end method

.method private synthetic a(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;ZLjava/lang/String;)V
    .locals 6

    const/4 p2, 0x0

    .line 162
    invoke-virtual {p0, p2}, Lo/XT;->setPreferredLanguage(Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    .line 163
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo/XT;->setCurrentPlayableId(J)V

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lo/XT;->setForceStreamingEnabled(Z)V

    if-eqz p7, :cond_0

    .line 165
    invoke-virtual {p0}, Lo/XT;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/XT;->v()Lo/zJ;

    move-result-object p3

    invoke-interface {p3}, Lo/zJ;->d()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/XT;->v()Lo/zJ;

    move-result-object p2

    invoke-interface {p2}, Lo/zJ;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v2

    iget-object v3, p0, Lo/XT;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/XT;->x()J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    long-to-int v4, p2

    invoke-virtual {p0}, Lo/XT;->B()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object v5

    const-string v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    invoke-static/range {v0 .. v5}, Lo/Ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILo/Aq;)Landroid/content/Intent;

    move-result-object p2

    .line 167
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p3

    invoke-static {p3}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    const/4 p2, 0x1

    .line 168
    invoke-virtual {p0, p2}, Lo/XT;->d(Z)V

    .line 169
    invoke-virtual {p0, p1}, Lo/XT;->d(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/XT;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;ZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lo/XT;->a(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;ZLjava/lang/String;)V

    return-void
.end method

.method private g()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public Z()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Z()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    return-void
.end method

.method public a(JLo/Ah;Lo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLjava/lang/String;ZLjava/lang/String;)Lo/zJ;
    .locals 17

    move-object/from16 v0, p0

    if-eqz p10, :cond_0

    const-string v1, "PlaylistVideoView"

    const-string v2, "Reset video view so we can reuse it on restarting playback..."

    .line 63
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 64
    invoke-interface {v1, v2}, Lo/Ah;->d(Lo/Ab;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 67
    :goto_0
    iget-object v9, v0, Lo/XT;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    if-nez v9, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 70
    :cond_1
    iget-object v11, v0, Lo/XT;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    .line 71
    invoke-virtual/range {p0 .. p0}, Lo/XT;->s()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lo/XT;->p()Lcom/netflix/mediaclient/media/PreferredLanguageData;

    move-result-object v16

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p11

    .line 70
    invoke-interface/range {v3 .. v16}, Lo/Ah;->c(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/XT;->c(Lo/zJ;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lo/XT;->v()Lo/zJ;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 73
    invoke-virtual/range {p0 .. p0}, Lo/XT;->v()Lo/zJ;

    move-result-object v1

    check-cast v1, Lo/xy;

    invoke-virtual {v1}, Lo/xy;->A()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object v1

    iput-object v1, v0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    .line 74
    iget-object v1, v0, Lo/XT;->i:Lo/Bq;

    if-eqz v1, :cond_2

    .line 75
    iget-object v2, v0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->setTransitionEndListener(Lo/Bq;)V

    .line 77
    :cond_2
    iget-object v1, v0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    iget-object v2, v0, Lo/XT;->g:Lo/Bu;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->setTransitionBeginListener(Lo/Bu;J)V

    .line 79
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lo/XT;->v()Lo/zJ;

    move-result-object v1

    return-object v1
.end method

.method public a(JLo/Ab;Lo/Bm;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z
    .locals 9

    move-object v8, p0

    move-object/from16 v0, p10

    .line 96
    invoke-virtual {p0, v0}, Lo/XT;->a(Ljava/lang/String;)V

    move-object v0, p4

    .line 97
    iput-object v0, v8, Lo/XT;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    .line 98
    invoke-virtual/range {v0 .. v7}, Lo/XT;->d(JLo/Ab;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object/from16 v0, p8

    .line 102
    iput-object v0, v8, Lo/XT;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    .line 103
    invoke-virtual {p0}, Lo/XT;->am()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 118
    invoke-direct {p0}, Lo/XT;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lo/XT;->v()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/XT;->v()Lo/zJ;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lo/zJ;->e(Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lo/XT;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z
    .locals 1

    .line 113
    invoke-direct {p0}, Lo/XT;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Lo/XT;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    :cond_0
    return-void
.end method

.method public j()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
    .locals 1

    .line 108
    invoke-direct {p0}, Lo/XT;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
    .locals 1

    .line 123
    invoke-direct {p0}, Lo/XT;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setTransitionBeginListener(Lo/Bu;J)V
    .locals 0

    .line 147
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "set transition begin listener is not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransitionEndListener(Lo/Bq;)V
    .locals 1

    .line 138
    iput-object p1, p0, Lo/XT;->i:Lo/Bq;

    .line 139
    invoke-direct {p0}, Lo/XT;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lo/XT;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->setTransitionEndListener(Lo/Bq;)V

    :cond_0
    return-void
.end method
