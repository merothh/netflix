.class public final Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UQ$Activity;->e(Lo/UU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/UU;

.field final synthetic c:Lo/UQ$Activity;


# direct methods
.method public constructor <init>(Lo/UQ$Activity;Lo/UU;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->c:Lo/UQ$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    const-string v2, "segmentId"

    invoke-static {v10, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoView"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    instance-of v2, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v2, :cond_4

    .line 703
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v2, Lo/UW$Application;

    invoke-virtual {v2}, Lo/UW$Application;->e()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v4

    .line 704
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v2, Lo/UW$Application;

    invoke-virtual {v2}, Lo/UW$Application;->b()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 705
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->c:Lo/UQ$Activity;

    iget-object v3, v3, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v3}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/UI;->a(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    .line 707
    :cond_0
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v2, Lo/UW$Application;

    invoke-virtual {v2}, Lo/UW$Application;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->c:Lo/UQ$Activity;

    iget-object v2, v2, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->af()V

    .line 710
    :cond_1
    move-object v11, v1

    check-cast v11, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v11}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v12

    if-eqz v12, :cond_4

    const-string v1, "playlistMap"

    .line 711
    invoke-static {v12, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 712
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    .line 713
    invoke-virtual {v12, v10}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 714
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v5, Lo/UW$Application;

    invoke-virtual {v5}, Lo/UW$Application;->g()I

    move-result v5

    int-to-long v5, v5

    .line 712
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;-><init>(JJ)V

    .line 717
    invoke-virtual {v1, v12}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-wide v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v13, v1

    .line 720
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->c:Lo/UQ$Activity;

    iget-object v1, v1, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v15

    .line 721
    new-instance v16, Lo/UP$ContextWrapper;

    .line 722
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v1, Lo/UW$Application;

    invoke-virtual {v1}, Lo/UW$Application;->d()Ljava/lang/String;

    move-result-object v2

    .line 725
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v1, Lo/UW$Application;

    invoke-virtual {v1}, Lo/UW$Application;->i()Z

    move-result v5

    .line 726
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v1, Lo/UW$Application;

    invoke-virtual {v1}, Lo/UW$Application;->a()Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    .line 721
    invoke-direct/range {v1 .. v9}, Lo/UP$ContextWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Moment;ZZLjava/lang/String;ILo/amc;)V

    move-object/from16 v1, v16

    check-cast v1, Lo/UP;

    .line 720
    invoke-interface {v15, v1}, Lo/UI;->c(Lo/UP;)V

    .line 729
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10, v13, v14}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 730
    invoke-interface {v11, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    .line 731
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->c:Lo/UQ$Activity;

    iget-object v1, v1, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->al()V

    .line 732
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->c:Lo/UQ$Activity;

    iget-object v1, v1, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v2, Lo/UW$Application;

    invoke-virtual {v2}, Lo/UW$Application;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->b:Lo/UU;

    check-cast v2, Lo/UW$Application;

    invoke-virtual {v2}, Lo/UW$Application;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lo/UI;->i(Z)V

    :cond_4
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;->c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
