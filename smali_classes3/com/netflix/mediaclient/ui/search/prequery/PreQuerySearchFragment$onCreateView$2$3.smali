.class public final Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchFragment$onCreateView$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZN$Application;->d(Lo/ZR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lo/Bx;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ZR;

.field final synthetic c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/ZR;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchFragment$onCreateView$2$3;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchFragment$onCreateView$2$3;->a:Lo/ZR;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bx;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "activity"

    invoke-static {v1, v3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "searchVideo"

    invoke-static {v2, v3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    move-object v3, v2

    check-cast v3, Lo/agg;

    .line 115
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchFragment$onCreateView$2$3;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 116
    invoke-interface {v3}, Lo/agg;->as_()Lo/AR;

    move-result-object v5

    const-string v6, "fullVideoDetails.summary"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchFragment$onCreateView$2$3;->a:Lo/ZR;

    check-cast v6, Lo/ZR$LoaderManager;

    invoke-virtual {v6}, Lo/ZR$LoaderManager;->e()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v4

    .line 117
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v4

    .line 121
    check-cast v2, Lo/AK;

    .line 122
    invoke-interface {v3}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    .line 123
    check-cast v4, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 124
    new-instance v15, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v5, v15

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1fff

    const/16 v22, 0x0

    invoke-direct/range {v5 .. v22}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    move-object/from16 v5, v23

    .line 119
    invoke-static {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Lo/Bx;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchFragment$onCreateView$2$3;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bx;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
