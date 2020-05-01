.class public final Lo/XY;
.super Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XY$Activity;,
        Lo/XY$StateListAnimator;,
        Lo/XY$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/XY$Application;


# instance fields
.field private b:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

.field private e:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

.field private f:Lo/XY$Activity;

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/XY$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/XY$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/XY;->a:Lo/XY$Application;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/XY;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/XY;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    const/16 p1, 0x2710

    int-to-long p1, p1

    .line 35
    iput-wide p1, p0, Lo/XY;->g:J

    .line 42
    new-instance p1, Lo/XY$4;

    invoke-direct {p1, p0}, Lo/XY$4;-><init>(Lo/XY;)V

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V

    .line 49
    new-instance p1, Lo/XY$5;

    invoke-direct {p1, p0}, Lo/XY$5;-><init>(Lo/XY;)V

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setErrorListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 21
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/XY;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lo/XY;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/XY;->h:Z

    return-void
.end method

.method public static final synthetic b(Lo/XY;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lo/XY;->h:Z

    return p0
.end method

.method public static final synthetic d(Lo/XY;)Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/XY;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    return-object p0
.end method

.method public static final synthetic e(Lo/XY;)Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/XY;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    return-object p0
.end method


# virtual methods
.method public b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z
    .locals 4

    const-string v0, "group"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playableId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experience"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmark"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const-string v1, "TimeoutableVideoView"

    const-string v2, "attachPlaybackSession %s"

    .line 65
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    new-instance v0, Lo/XY$Activity;

    invoke-direct {v0, p0}, Lo/XY$Activity;-><init>(Lo/XY;)V

    iput-object v0, p0, Lo/XY;->f:Lo/XY$Activity;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lo/XY;->f:Lo/XY$Activity;

    check-cast v1, Ljava/lang/Runnable;

    iget-wide v2, p0, Lo/XY;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    invoke-super/range {p0 .. p10}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lo/XY;->Z()V

    .line 75
    :cond_0
    invoke-super/range {p0 .. p10}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public f()Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->f()Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->h()Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setErrorListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lo/XY;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    return-void
.end method

.method public setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/XY;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    return-void
.end method

.method public final setTimeout(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lo/XY;->g:J

    return-void
.end method
