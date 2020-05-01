.class public final Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;
.super Lcom/airbnb/epoxy/TypedEpoxyController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/TypedEpoxyController<",
        "Lo/IJ$ActionBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Activity;


# instance fields
.field private final characterId:Ljava/lang/String;

.field private final characterRepository:Lo/IG;

.field private final eventBusFactory:Lo/UpdateEngine;

.field private final netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->Companion:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Activity;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/UpdateEngine;Ljava/lang/String;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "characterId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/airbnb/epoxy/TypedEpoxyController;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->eventBusFactory:Lo/UpdateEngine;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->characterId:Ljava/lang/String;

    .line 43
    new-instance p1, Lo/IG;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->eventBusFactory:Lo/UpdateEngine;

    invoke-direct {p1, p2, p3}, Lo/IG;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/UpdateEngine;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->characterRepository:Lo/IG;

    .line 47
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->eventBusFactory:Lo/UpdateEngine;

    .line 248
    const-class p2, Lo/IJ;

    invoke-virtual {p1, p2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Application;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Application;-><init>(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    .line 53
    sget-object p3, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$StateListAnimator;

    check-cast p3, Lio/reactivex/functions/Consumer;

    .line 48
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->characterRepository:Lo/IG;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->characterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/IG;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setGridSize(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->setGridSize(I)V

    return-void
.end method

.method public static final synthetic access$showVideoDetails(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/AR;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->showVideoDetails(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/AR;)V

    return-void
.end method

.method public static final synthetic access$startPlay(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;Lo/Bc;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->startPlay(Lo/Bc;)V

    return-void
.end method

.method private final setGridSize(I)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;)V

    .line 148
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->setSpanCount(I)V

    :cond_0
    return-void
.end method

.method private final showVideoDetails(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/AR;)V
    .locals 4

    .line 159
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->j()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 161
    sget-object p2, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->Companion:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Activity;

    move-object v0, p2

    check-cast v0, Lo/MessagePdu;

    .line 162
    check-cast p2, Lo/MessagePdu;

    .line 164
    sget-object p2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 165
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 166
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    .line 164
    invoke-virtual {p2, v0, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method private final startPlay(Lo/Bc;)V
    .locals 21

    move-object/from16 v0, p0

    .line 203
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v1, v1, Lo/CY;

    if-eqz v1, :cond_1

    .line 204
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v3, Lcom/netflix/cl/model/AppView;->storyArt:Lcom/netflix/cl/model/AppView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v3, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v3, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 205
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_0

    check-cast v1, Lo/CY;

    invoke-interface {v1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    .line 206
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->c:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    const-string v2, "detailsPage"

    .line 207
    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->c(Ljava/lang/String;)V

    const-string v2, "(netflixActivity as Play\u2026ETAILS_PAGE\n            }"

    .line 205
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v2, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v3, v2

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

    .line 210
    sget-object v3, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Lcom/netflix/cl/model/AppView;)V

    .line 212
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 213
    invoke-interface/range {p1 .. p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v4

    .line 214
    invoke-interface/range {p1 .. p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    .line 211
    invoke-static {v3, v4, v5, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_0

    .line 205
    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.common.PlayContextProvider"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lo/IJ$ActionBar;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->buildModels(Lo/IJ$ActionBar;)V

    return-void
.end method

.method protected buildModels(Lo/IJ$ActionBar;)V
    .locals 5

    const-string v0, "characterState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lo/IJ$ActionBar;->d()Lo/AU;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 222
    new-instance v0, Lo/Jh;

    invoke-direct {v0}, Lo/Jh;-><init>()V

    .line 226
    move-object v1, v0

    check-cast v1, Lo/Jf;

    .line 74
    invoke-virtual {p1}, Lo/IJ$ActionBar;->d()Lo/AU;

    move-result-object v2

    invoke-interface {v2}, Lo/AU;->getId()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/Jf;->e(Ljava/lang/CharSequence;)Lo/Jf;

    .line 75
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->f_(Ljava/lang/String;)Lo/Jf;

    .line 76
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->e_(Ljava/lang/String;)Lo/Jf;

    .line 77
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->aX()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->d_(Ljava/lang/String;)Lo/Jf;

    .line 78
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->bh()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->c_(Ljava/lang/String;)Lo/Jf;

    .line 79
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->aQ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->c(Ljava/lang/String;)Lo/Jf;

    .line 80
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    const-string v3, "videoDetails.playable"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->h(Ljava/lang/String;)Lo/Jf;

    .line 81
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->i(Ljava/lang/String;)Lo/Jf;

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    instance-of v2, v2, Lo/Bb;

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    check-cast v2, Lo/Bb;

    invoke-interface {v2}, Lo/Bb;->aw()I

    move-result v2

    if-lez v2, :cond_2

    .line 86
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    check-cast v2, Lo/Bb;

    invoke-interface {v2}, Lo/Bb;->aG()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->i(Ljava/lang/String;)Lo/Jf;

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    instance-of v2, v2, Lo/agg;

    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    check-cast v2, Lo/agg;

    invoke-interface {v2}, Lo/agg;->S()I

    move-result v2

    if-lez v2, :cond_2

    .line 92
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    check-cast v2, Lo/agg;

    invoke-interface {v2}, Lo/agg;->S()I

    move-result v2

    .line 93
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v3, Landroid/content/Context;

    .line 91
    invoke-static {v2, v3}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-interface {v1, v2}, Lo/Jf;->i(Ljava/lang/String;)Lo/Jf;

    .line 101
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->getBoxartId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Jf;->f(Ljava/lang/String;)Lo/Jf;

    .line 102
    sget-object v2, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$ActionBar;->d:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$ActionBar;

    check-cast v2, Lo/BiConsumer$Activity;

    invoke-interface {v1, v2}, Lo/Jf;->b(Lo/BiConsumer$Activity;)Lo/Jf;

    .line 104
    new-instance v2, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$TaskDescription;

    invoke-direct {v2, p1, p0}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$TaskDescription;-><init>(Lo/IJ$ActionBar;Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Lo/Jf;->a(Landroid/view/View$OnClickListener;)Lo/Jf;

    .line 225
    invoke-virtual {v0, p0}, Lo/Jh;->a(Lo/OfPrimitive;)V

    .line 108
    :cond_3
    invoke-virtual {p1}, Lo/IJ$ActionBar;->d()Lo/AU;

    move-result-object v0

    invoke-virtual {p1}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v1

    invoke-virtual {p1}, Lo/IJ$ActionBar;->e()Lo/AR;

    move-result-object v2

    invoke-virtual {p1}, Lo/IJ$ActionBar;->j()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;-><init>(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;)V

    check-cast v4, Lo/alS;

    invoke-static {v0, v1, v2, v3, v4}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alS;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {p1}, Lo/IJ$ActionBar;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    if-nez p1, :cond_5

    .line 230
    new-instance p1, Lo/CZ;

    invoke-direct {p1}, Lo/CZ;-><init>()V

    .line 234
    move-object v0, p1

    check-cast v0, Lo/CV;

    const-string v1, "loading"

    .line 139
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lo/CV;->b(Ljava/lang/CharSequence;)Lo/CV;

    .line 233
    invoke-virtual {p1, p0}, Lo/CZ;->a(Lo/OfPrimitive;)V

    .line 142
    :cond_5
    sget-object p1, Lo/akj;->a:Lo/akj;

    :goto_1
    return-void
.end method

.method public final getCharacterId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->characterId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCharacterRepository()Lo/IG;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->characterRepository:Lo/IG;

    return-object v0
.end method

.method public final getEventBusFactory()Lo/UpdateEngine;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->eventBusFactory:Lo/UpdateEngine;

    return-object v0
.end method

.method public final getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/TypedEpoxyController;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/TypedEpoxyController;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 67
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
