.class public final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;
.super Lcom/netflix/android/widgetry/widget/menu/MenuController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
        "Lo/Lz;",
        ">;"
    }
.end annotation


# instance fields
.field private currentThumbsRating:I

.field private final netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final netflixRepository:Lo/bs;

.field private final playContext:Lcom/netflix/mediaclient/ui/common/PlayContextImp;

.field private ratingApiCallInProgress:Z

.field private final trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

.field private final trackingInfoHolder:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final video:Lo/agg;


# direct methods
.method public constructor <init>(Lo/agg;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/bs;)V
    .locals 2

    const-string v0, "video"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixActivity"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixRepository"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0, v0, v1, v0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;-><init>(Ljava/lang/CharSequence;ILo/amc;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->trackingInfoHolder:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->netflixRepository:Lo/bs;

    .line 44
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->trackingInfoHolder:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->h:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->trackingInfoHolder:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    .line 48
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {p1}, Lo/agg;->getUserThumbRating()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    return-void
.end method

.method public static final synthetic access$getCurrentThumbsRating$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    return p0
.end method

.method public static final synthetic access$getNetflixActivity$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0
.end method

.method public static final synthetic access$getPlayContext$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    return-object p0
.end method

.method public static final synthetic access$getRatingApiCallInProgress$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->ratingApiCallInProgress:Z

    return p0
.end method

.method public static final synthetic access$getVideo$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)Lo/agg;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    return-object p0
.end method

.method public static final synthetic access$onRemoveFromRowClicked(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->onRemoveFromRowClicked()V

    return-void
.end method

.method public static final synthetic access$onThumbsRatingClicked(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->onThumbsRatingClicked(I)V

    return-void
.end method

.method public static final synthetic access$setCurrentThumbsRating$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    return-void
.end method

.method public static final synthetic access$setRatingApiCallInProgress$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->ratingApiCallInProgress:Z

    return-void
.end method

.method private final onRemoveFromRowClicked()V
    .locals 6

    .line 229
    new-instance v0, Lcom/netflix/cl/model/event/session/command/RemoveFromPlaylistCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/RemoveFromPlaylistCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 231
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->removeFromPlaylistConfirmation:Lcom/netflix/cl/model/AppView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/RemoveFromPlaylist;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/action/RemoveFromPlaylist;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    .line 234
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 236
    new-instance v3, Lo/PendingIntent$Activity;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;)V

    .line 237
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->aG:I

    invoke-virtual {v3, v4}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object v3

    .line 238
    new-instance v4, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Long;Ljava/lang/Long;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v3

    .line 268
    new-instance v4, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$FragmentManager;

    invoke-direct {v4, v2, v1, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$FragmentManager;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Long;Ljava/lang/Long;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v3

    .line 273
    new-instance v4, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$PendingIntent;

    invoke-direct {v4, v2, v1, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$PendingIntent;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Long;Ljava/lang/Long;)V

    check-cast v4, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Lo/PendingIntent$Activity;->c(Landroid/content/DialogInterface$OnDismissListener;)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->e()Lo/PendingIntent;

    return-void
.end method

.method private final onThumbsRatingClicked(I)V
    .locals 10

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->ratingApiCallInProgress:Z

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sget-object v1, Lo/Lz$Application;->a:Lo/Lz$Application;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 171
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->thumbButton:Lcom/netflix/cl/model/AppView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->trackingInfo:Lcom/netflix/cl/model/TrackingInfo;

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 172
    new-instance v2, Lcom/netflix/cl/model/event/session/command/SetThumbRatingCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/SetThumbRatingCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 176
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    .line 177
    iput p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->requestModelBuild()V

    .line 182
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;I)V

    .line 181
    check-cast v1, Lo/alN;

    .line 193
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/SetThumbRating;

    invoke-static {p1}, Lo/ShellCallback;->d(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/cl/model/event/session/action/SetThumbRating;-><init>(Ljava/lang/Long;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->netflixRepository:Lo/bs;

    .line 196
    new-instance v3, Lo/SaveInfo;

    .line 197
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v4}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video.id"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->getTrackId()I

    move-result v5

    .line 196
    invoke-direct {v3, v4, p1, v5}, Lo/SaveInfo;-><init>(Ljava/lang/String;II)V

    check-cast v3, Lo/DateTransformation;

    .line 195
    invoke-interface {v2, v3}, Lo/bs;->b(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v4

    .line 202
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;Ljava/lang/Long;Lo/alN;)V

    move-object v7, p1

    check-cast v7, Lo/alA;

    .line 217
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$2;

    invoke-direct {p1, v1, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$2;-><init>(Lo/alN;Ljava/lang/Long;)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 201
    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public addFooters()V
    .locals 0

    return-void
.end method

.method public addHeaders()V
    .locals 0

    return-void
.end method

.method public addItems()V
    .locals 6

    .line 57
    new-instance v0, Lo/LJ;

    invoke-direct {v0}, Lo/LJ;-><init>()V

    const-string v1, "cw_menu_title"

    .line 58
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/LJ;->a(Ljava/lang/CharSequence;)Lo/LJ;

    .line 59
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v1}, Lo/agg;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v1}, Lo/agg;->O()Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/LJ;->e(Ljava/lang/CharSequence;)Lo/LJ;

    .line 64
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Application;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/LJ;->c(Landroid/view/View$OnClickListener;)Lo/LJ;

    .line 57
    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->add(Lo/BiConsumer;)V

    .line 71
    new-instance v0, Lo/LC;

    invoke-direct {v0}, Lo/LC;-><init>()V

    const-string v1, "cw_menu_more_info_row"

    .line 72
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/LC;->d(Ljava/lang/CharSequence;)Lo/LC;

    .line 73
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->aY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/LC;->d(Ljava/lang/Integer;)Lo/LC;

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    .line 76
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gC:I

    goto :goto_1

    .line 78
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hE:I

    .line 74
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/LC;->a(Ljava/lang/Integer;)Lo/LC;

    .line 80
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Activity;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/LC;->c(Landroid/view/View$OnClickListener;)Lo/LC;

    .line 71
    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->add(Lo/BiConsumer;)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    const v1, 0x3f333333    # 0.7f

    invoke-interface {v0, v1}, Lo/agg;->a(F)Lo/agg;

    move-result-object v0

    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v0}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 95
    invoke-interface {v0}, Lo/agg;->e()Z

    move-result v2

    if-ne v2, v1, :cond_7

    .line 98
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v2}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_5

    .line 99
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v2}, Lo/agg;->ax()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bu:I

    goto :goto_3

    .line 102
    :cond_4
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bx:I

    goto :goto_3

    .line 105
    :cond_5
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ak:I

    .line 108
    :goto_3
    new-instance v3, Lo/LE;

    invoke-direct {v3}, Lo/LE;-><init>()V

    const-string v4, "cw_menu_download"

    .line 109
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lo/LE;->d(Ljava/lang/CharSequence;)Lo/LE;

    .line 110
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->video:Lo/agg;

    invoke-interface {v4}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v5, :cond_6

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_4
    invoke-virtual {v3, v4}, Lo/LE;->d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lo/LE;

    .line 111
    invoke-interface {v0}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/LE;->d(Ljava/lang/String;)Lo/LE;

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/LE;->d(Ljava/lang/Integer;)Lo/LE;

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->trackingInfoHolder:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v3, v0}, Lo/LE;->e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LE;

    .line 108
    check-cast v3, Lo/BiConsumer;

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->add(Lo/BiConsumer;)V

    .line 118
    :cond_7
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 119
    :cond_8
    new-instance v0, Lo/LI;

    invoke-direct {v0}, Lo/LI;-><init>()V

    const-string v2, "cw_menu_thumbs_up"

    .line 120
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/LI;->b(Ljava/lang/CharSequence;)Lo/LI;

    .line 121
    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    invoke-virtual {v0, v2}, Lo/LI;->c(I)Lo/LI;

    .line 122
    invoke-virtual {v0, v1}, Lo/LI;->e(Z)Lo/LI;

    .line 123
    invoke-virtual {v0}, Lo/LI;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Lo/LI;->c(Z)Lo/LI;

    .line 124
    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$TaskDescription;

    invoke-direct {v2, v0, p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$TaskDescription;-><init>(Lo/LI;Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lo/LI;->d(Landroid/view/View$OnClickListener;)Lo/LI;

    .line 119
    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->add(Lo/BiConsumer;)V

    .line 137
    :cond_9
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    if-eqz v0, :cond_a

    if-ne v0, v1, :cond_b

    .line 138
    :cond_a
    new-instance v0, Lo/LI;

    invoke-direct {v0}, Lo/LI;-><init>()V

    const-string v2, "cw_menu_thumbs_down"

    .line 139
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/LI;->b(Ljava/lang/CharSequence;)Lo/LI;

    .line 140
    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->currentThumbsRating:I

    invoke-virtual {v0, v2}, Lo/LI;->c(I)Lo/LI;

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v2}, Lo/LI;->e(Z)Lo/LI;

    .line 142
    invoke-virtual {v0}, Lo/LI;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Lo/LI;->c(Z)Lo/LI;

    .line 143
    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$StateListAnimator;

    invoke-direct {v2, v0, p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$StateListAnimator;-><init>(Lo/LI;Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lo/LI;->d(Landroid/view/View$OnClickListener;)Lo/LI;

    .line 138
    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->add(Lo/BiConsumer;)V

    .line 156
    :cond_b
    new-instance v0, Lo/LC;

    invoke-direct {v0}, Lo/LC;-><init>()V

    const-string v2, "cw_menu_remove_from_row"

    .line 157
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/LC;->d(Ljava/lang/CharSequence;)Lo/LC;

    .line 158
    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->aN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/LC;->d(Ljava/lang/Integer;)Lo/LC;

    .line 159
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/LC;->a(Ljava/lang/Integer;)Lo/LC;

    .line 160
    invoke-virtual {v0, v1}, Lo/LC;->a(Z)Lo/LC;

    .line 161
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/LC;->c(Landroid/view/View$OnClickListener;)Lo/LC;

    .line 156
    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->add(Lo/BiConsumer;)V

    return-void
.end method
