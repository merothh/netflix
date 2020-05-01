.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->a(Lo/GY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/GY;


# direct methods
.method constructor <init>(Lo/GY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$4;->a:Lo/GY;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "activity"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "post"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v3, v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1fff

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    .line 704
    sget-object v3, Lcom/netflix/cl/model/AppView;->newsFeed:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Lcom/netflix/cl/model/AppView;)V

    .line 707
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v3

    invoke-interface {v3}, Lo/agg;->bb()Lo/AK;

    move-result-object v3

    .line 708
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v2

    invoke-interface {v2}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    move-object/from16 v4, p0

    .line 709
    iget-object v5, v4, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$4;->a:Lo/GY;

    check-cast v5, Lo/GY$PendingIntent;

    invoke-virtual {v5}, Lo/GY$PendingIntent;->c()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    .line 705
    invoke-static {v0, v3, v2, v5, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$4;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
