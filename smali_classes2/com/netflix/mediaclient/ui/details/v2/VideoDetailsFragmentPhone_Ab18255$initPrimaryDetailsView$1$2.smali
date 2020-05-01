.class public final Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$initPrimaryDetailsView$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN$Activity;->d(Lo/DG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        "+",
        "Lo/agg;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/FN$Activity;


# direct methods
.method public constructor <init>(Lo/FN$Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$initPrimaryDetailsView$1$2;->a:Lo/FN$Activity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lkotlin/Pair;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "+",
            "Lo/agg;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 635
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 636
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    check-cast v1, Lo/agg;

    .line 638
    sget-object v2, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v2}, Lo/eG$Application;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    sget-object v2, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    goto :goto_0

    .line 641
    :cond_1
    sget-object v2, Lcom/netflix/cl/model/AppView;->storyArt:Lcom/netflix/cl/model/AppView;

    .line 643
    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 644
    new-instance v4, Lcom/netflix/cl/model/event/session/Focus;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 645
    new-instance v2, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {v2, v5}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v5, 0x1

    .line 643
    invoke-virtual {v3, v4, v2, v5}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 649
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$initPrimaryDetailsView$1$2;->a:Lo/FN$Activity;

    iget-object v2, v2, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v2}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lo/CY;

    invoke-interface {v2}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    const-string v3, "(netflixActivity as Play\u2026textProvider).playContext"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->c:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    const-string v3, "detailsPage"

    .line 651
    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->c(Ljava/lang/String;)V

    .line 653
    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v4, v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1fff

    const/16 v21, 0x0

    invoke-direct/range {v4 .. v21}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    .line 654
    sget-object v4, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Lcom/netflix/cl/model/AppView;)V

    .line 657
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$initPrimaryDetailsView$1$2;->a:Lo/FN$Activity;

    iget-object v4, v4, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v4}, Lo/FN;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    .line 658
    move-object v5, v1

    check-cast v5, Lo/AK;

    .line 659
    invoke-interface {v1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    .line 656
    invoke-static {v4, v5, v1, v2, v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_1

    .line 649
    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.common.PlayContextProvider"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$initPrimaryDetailsView$1$2;->e(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
