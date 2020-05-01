.class Lo/XO$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/XO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Lo/Bu;

.field private final e:J


# direct methods
.method constructor <init>(Lo/Bu;J)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lo/XO$ActionBar;->c:Lo/Bu;

    .line 202
    iput-wide p2, p0, Lo/XO$ActionBar;->e:J

    return-void
.end method


# virtual methods
.method d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V
    .locals 11

    if-eqz p1, :cond_0

    .line 206
    iget-wide v1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 207
    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/XO$ActionBar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lo/Bj;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    iget-wide v4, v1, Lo/Bj;->d:J

    iget-wide v6, v1, Lo/Bj;->e:J

    sub-long/2addr v4, v6

    .line 213
    iget-wide v6, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    sub-long v6, v4, v6

    .line 214
    iget-wide v4, p0, Lo/XO$ActionBar;->e:J

    cmp-long v2, v6, v4

    if-gtz v2, :cond_0

    .line 215
    iget-object v2, p0, Lo/XO$ActionBar;->c:Lo/Bu;

    iget-object v4, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    .line 216
    invoke-virtual {v1}, Lo/Bj;->e()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;

    const/4 v9, 0x0

    const-string v10, "0"

    move-object v3, p2

    .line 215
    invoke-interface/range {v2 .. v10}, Lo/Bu;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;ZLjava/lang/String;)V

    .line 218
    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    iput-object v1, p0, Lo/XO$ActionBar;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v0, "BranchedVideoView"

    const-string v2, "onEnterTransition %s"

    .line 219
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method
