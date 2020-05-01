.class public Lo/XO;
.super Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;
.implements Lo/Bq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XO$ActionBar;
    }
.end annotation


# instance fields
.field private a:Lo/XO$ActionBar;

.field private b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

.field protected e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

.field private g:Lo/Bq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lo/XO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lo/XO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lo/XO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lo/XO;->g:Lo/Bq;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p1, p2}, Lo/Bq;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lo/XO;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/XO;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-void
.end method


# virtual methods
.method public a(JLo/Ah;Lo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLjava/lang/String;ZLjava/lang/String;)Lo/zJ;
    .locals 18

    move-object/from16 v0, p0

    if-eqz p10, :cond_0

    const-string v1, "BranchedVideoView"

    const-string v2, "Reset video view so we can reuse it on restarting playback..."

    .line 62
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 63
    invoke-interface {v1, v2}, Lo/Ah;->d(Lo/Ab;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 67
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/XO;->n()J

    move-result-wide v9

    iget-object v12, v0, Lo/XO;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    invoke-virtual/range {p0 .. p0}, Lo/XO;->s()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lo/XO;->p()Lcom/netflix/mediaclient/media/PreferredLanguageData;

    move-result-object v17

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    move/from16 v13, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p11

    .line 66
    invoke-interface/range {v3 .. v17}, Lo/Ah;->d(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/XO;->c(Lo/zJ;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lo/XO;->v()Lo/zJ;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual/range {p0 .. p0}, Lo/XO;->v()Lo/zJ;

    move-result-object v1

    check-cast v1, Lo/wZ;

    invoke-virtual {v1, v0}, Lo/wZ;->c(Lo/Bq;)V

    .line 72
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/XO;->v()Lo/zJ;

    move-result-object v1

    return-object v1
.end method

.method public b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z
    .locals 9

    move-object v8, p0

    .line 94
    invoke-static {p4}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/XO;->setInitialPlayableId(J)V

    move-object/from16 v0, p10

    .line 95
    invoke-virtual {p0, v0}, Lo/XO;->a(Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    .line 97
    invoke-virtual/range {v0 .. v7}, Lo/XO;->d(JLo/Ab;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object/from16 v0, p8

    .line 101
    iput-object v0, v8, Lo/XO;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    .line 102
    invoke-virtual {p0}, Lo/XO;->am()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lo/XO;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lo/XO;->A()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/XM;

    invoke-direct {v1, p0, p1, p2}, Lo/XM;-><init>(Lo/XO;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lo/XO;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lo/XO;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    :cond_0
    return-void
.end method

.method protected g()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/XO;->v()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lo/XO;->v()Lo/zJ;

    move-result-object v0

    check-cast v0, Lo/wZ;

    invoke-virtual {v0}, Lo/wZ;->A()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object v0

    iput-object v0, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    .line 181
    :cond_0
    iget-object v0, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lo/XO;->a:Lo/XO$ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/XO;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lo/XO;->a:Lo/XO$ActionBar;

    invoke-virtual {p0}, Lo/XO;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v1

    iget-object v2, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/XO$ActionBar;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V

    .line 165
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()J
    .locals 2

    .line 77
    iget-object v0, p0, Lo/XO;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    if-eqz v1, :cond_0

    .line 78
    iget-wide v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lo/XO;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

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

    .line 128
    invoke-virtual {p0}, Lo/XO;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/XO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setTransitionBeginListener(Lo/Bu;J)V
    .locals 1

    .line 148
    new-instance v0, Lo/XO$ActionBar;

    invoke-direct {v0, p1, p2, p3}, Lo/XO$ActionBar;-><init>(Lo/Bu;J)V

    iput-object v0, p0, Lo/XO;->a:Lo/XO$ActionBar;

    return-void
.end method

.method public setTransitionEndListener(Lo/Bq;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lo/XO;->g:Lo/Bq;

    if-eq p1, v0, :cond_0

    .line 141
    iput-object p1, p0, Lo/XO;->g:Lo/Bq;

    :cond_0
    return-void
.end method

.method public setZoom(Z)V
    .locals 0

    return-void
.end method
