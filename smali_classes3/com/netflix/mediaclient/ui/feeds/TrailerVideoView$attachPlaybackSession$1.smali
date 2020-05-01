.class public final Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ii;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Ii;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/Ab;

.field final synthetic d:J

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic f:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field final synthetic j:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;


# direct methods
.method public constructor <init>(Lo/Ii;Ljava/lang/String;JLo/Ab;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->d:J

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->c:Lo/Ab;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->j:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->i:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p9, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->f:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iput-boolean p10, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->g:Z

    iput-object p11, p0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->h:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 16

    move-object/from16 v0, p0

    .line 96
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    invoke-static {v1}, Lo/Ii;->a(Lo/Ii;)I

    move-result v1

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    invoke-static {v2}, Lo/Ii;->b(Lo/Ii;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    invoke-static {v1}, Lo/Ii;->c(Lo/Ii;)Lo/Ii$TaskDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/Ii$TaskDescription;->b(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can retry : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    invoke-static {v4}, Lo/Ii;->a(Lo/Ii;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    invoke-static {v4}, Lo/Ii;->b(Lo/Ii;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TrailerVideoView"

    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    .line 99
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    invoke-static {v1}, Lo/Ii;->d(Lo/Ii;)Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    goto :goto_1

    .line 101
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    invoke-static {v2}, Lo/Ii;->a(Lo/Ii;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attachPlaybackSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    iget-wide v6, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->d:J

    iget-object v8, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->c:Lo/Ab;

    iget-object v9, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->b:Ljava/lang/String;

    iget-object v10, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v11, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->j:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    iget-object v12, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->i:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v13, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->f:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-boolean v14, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->g:Z

    iget-object v15, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->h:Ljava/lang/String;

    invoke-static/range {v5 .. v15}, Lo/Ii;->e(Lo/Ii;JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    .line 103
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->a:Lo/Ii;

    invoke-static {v1}, Lo/Ii;->a(Lo/Ii;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lo/Ii;->d(Lo/Ii;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/feeds/TrailerVideoView$attachPlaybackSession$1;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
