.class public Lcom/netflix/mediaclient/ui/offline/DownloadsListController;
.super Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/QF;",
        ">",
        "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController<",
        "TT;",
        "Lo/QA<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;


# instance fields
.field private attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final currentProfile:Lo/BC;

.field private final currentProfileGuid:Ljava/lang/String;

.field private final footerItemDecorator:Lo/PowerManager;

.field private hasVideos:Z

.field private final presentationTracking:Lo/Yf;

.field private profileModelCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/RU;",
            ">;"
        }
    .end annotation
.end field

.field private final profileProvider:Lo/RP;

.field private final screenLauncher:Lo/Rr$Activity;

.field private final showAllDownloadableClickListener:Landroid/view/View$OnClickListener;

.field private final showAllProfilesClickListener:Landroid/view/View$OnClickListener;

.field private final showClickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final showLongClickListener:Lo/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Stream<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private showOnlyCurrentProfile:Z

.field private final uiList:Lo/Rq;

.field private final videoClickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final videoLongClickListener:Lo/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Stream<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 2

    const-string v0, "currentProfile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenLauncher"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiList"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lo/OfPrimitive;->defaultModelBuildingHandler:Landroid/os/Handler;

    const-string v1, "defaultModelBuildingHandler"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-class v1, Lo/Cf;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cf;

    invoke-virtual {v1}, Lo/Cf;->b()Landroid/os/Handler;

    move-result-object v1

    .line 33
    invoke-direct {p0, v0, v1, p6}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;-><init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->currentProfile:Lo/BC;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->profileProvider:Lo/RP;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showOnlyCurrentProfile:Z

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->screenLauncher:Lo/Rr$Activity;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->uiList:Lo/Rq;

    .line 43
    new-instance p1, Lo/PowerManager;

    invoke-direct {p1}, Lo/PowerManager;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->footerItemDecorator:Lo/PowerManager;

    .line 44
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->currentProfile:Lo/BC;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->currentProfileGuid:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->profileModelCache:Ljava/util/Map;

    .line 46
    new-instance p1, Lo/Yf;

    invoke-direct {p1}, Lo/Yf;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->presentationTracking:Lo/Yf;

    .line 49
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Dialog;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Dialog;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    check-cast p1, Lo/LongStream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->videoClickListener:Lo/LongStream;

    .line 62
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$TaskDescription;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    check-cast p1, Lo/LongStream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showClickListener:Lo/LongStream;

    .line 71
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;

    invoke-direct {p1, p0, p6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    check-cast p1, Lo/Stream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showLongClickListener:Lo/Stream;

    .line 82
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Fragment;

    invoke-direct {p1, p0, p6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Fragment;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    check-cast p1, Lo/Stream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->videoLongClickListener:Lo/Stream;

    .line 91
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$ActionBar;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showAllDownloadableClickListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Activity;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Activity;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showAllProfilesClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->setDebugLoggingEnabled(Z)V

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->setCachingEnabled$NetflixApp_release(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 28
    new-instance p2, Lo/RP$StateListAnimator;

    invoke-direct {p2}, Lo/RP$StateListAnimator;-><init>()V

    check-cast p2, Lo/RP;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_1

    .line 31
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p5

    const-string p2, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {p5, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    return-void
.end method

.method public static final synthetic access$add(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Lo/BiConsumer;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->add(Lo/BiConsumer;)V

    return-void
.end method

.method public static final synthetic access$getScreenLauncher$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)Lo/Rr$Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->screenLauncher:Lo/Rr$Activity;

    return-object p0
.end method

.method public static synthetic addFindMoreButtonModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 245
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mi:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringUtils.getLocalized\u2026_action_more_to_download)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addFindMoreButtonModel(Ljava/lang/CharSequence;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addFindMoreButtonModel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected addAllProfilesButton()V
    .locals 2

    .line 237
    new-instance v0, Lo/PT;

    invoke-direct {v0}, Lo/PT;-><init>()V

    const-string v1, "allProfiles"

    .line 238
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/PT;->d(Ljava/lang/CharSequence;)Lo/PT;

    move-result-object v0

    .line 239
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showOnlyCurrentProfile:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lo/PT;->a(Z)Lo/PT;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showAllProfilesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/PT;->b(Landroid/view/View$OnClickListener;)Lo/PT;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 237
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->add(Lo/BiConsumer;)V

    return-void
.end method

.method protected addBottomModels(Lo/QF;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)V"
        }
    .end annotation

    const-string p3, "data"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->footerItemDecorator:Lo/PowerManager;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lo/PowerManager;->a(Z)V

    if-nez p2, :cond_0

    .line 224
    new-instance p1, Lo/QP;

    invoke-direct {p1}, Lo/QP;-><init>()V

    const-string p2, "empty"

    .line 225
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/QP;->e(Ljava/lang/CharSequence;)Lo/QP;

    move-result-object p1

    .line 226
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->bd:I

    invoke-virtual {p1, p2}, Lo/QP;->d(I)Lo/QP;

    move-result-object p1

    .line 227
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nh:I

    invoke-virtual {p1, p2}, Lo/QP;->e(I)Lo/QP;

    move-result-object p1

    .line 228
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mm:I

    invoke-virtual {p1, p2}, Lo/QP;->c(I)Lo/QP;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showAllDownloadableClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/QP;->d(Landroid/view/View$OnClickListener;)Lo/QP;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 223
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->add(Lo/BiConsumer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 232
    invoke-static {p0, p2, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addFindMoreButtonModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected final addFindMoreButtonModel(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    new-instance v0, Lo/QT;

    invoke-direct {v0}, Lo/QT;-><init>()V

    const-string v1, "findMore"

    .line 249
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/QT;->a(Ljava/lang/CharSequence;)Lo/QT;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p1}, Lo/QT;->b(Ljava/lang/CharSequence;)Lo/QT;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showAllDownloadableClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/QT;->c(Landroid/view/View$OnClickListener;)Lo/QT;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 247
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->add(Lo/BiConsumer;)V

    .line 253
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->footerItemDecorator:Lo/PowerManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/PowerManager;->a(Z)V

    return-void
.end method

.method protected addProfileViewModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->createProfileView(Ljava/lang/String;)Lo/BiConsumer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->add(Lo/BiConsumer;)V

    :cond_0
    return-void
.end method

.method protected addShowModel(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Lo/Tf;)V
    .locals 9

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    new-instance v0, Lo/Qx;

    invoke-direct {v0}, Lo/Qx;-><init>()V

    .line 299
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Qx;->b(Ljava/lang/CharSequence;)Lo/Qx;

    .line 300
    invoke-virtual {p3}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Qx;->e(Ljava/lang/String;)Lo/Qx;

    .line 301
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object p1

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/Qx;->a(Ljava/lang/String;)Lo/Qx;

    .line 302
    invoke-virtual {p3}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Qx;->d(Ljava/lang/CharSequence;)Lo/Qx;

    .line 303
    invoke-virtual {p3}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 304
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v1, "realmHorzDispUrl for show is null"

    invoke-interface {p1, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 306
    :cond_0
    invoke-virtual {p3}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Qx;->b(Ljava/lang/String;)Lo/Qx;

    const-wide/16 v1, 0x0

    .line 310
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object p1

    const-string p2, "adapterData.episodes"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 364
    array-length p3, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "it"

    const/4 v6, 0x1

    if-ge v4, p3, :cond_3

    aget-object v7, p1, v4

    .line 311
    invoke-static {v7, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v5, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {p2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 365
    :cond_3
    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 366
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 367
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 368
    check-cast v4, Lo/Tf;

    .line 313
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->uiList:Lo/Rq;

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/Tf;->bb()Lo/AK;

    move-result-object v4

    const-string v8, "it.playable"

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 369
    :cond_4
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 370
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 371
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo/Bi;

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_5

    .line 315
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 372
    :cond_7
    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 373
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2, p3}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 374
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 375
    check-cast p3, Lo/Bi;

    if-eqz p3, :cond_8

    .line 318
    invoke-interface {p3}, Lo/Bi;->w()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 319
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getEpisodeInfo(Lo/Bi;)Lo/Qy$ActionBar;

    move-result-object p3

    goto :goto_6

    :cond_8
    const/4 p3, 0x0

    .line 320
    :goto_6
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 376
    :cond_9
    check-cast p1, Ljava/util/List;

    .line 309
    invoke-virtual {v0, p1}, Lo/Qx;->c(Ljava/util/List;)Lo/Qx;

    .line 323
    invoke-virtual {v0, v1, v2}, Lo/Qx;->c(J)Lo/Qx;

    .line 333
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showClickListener:Lo/LongStream;

    invoke-virtual {v0, p1}, Lo/Qx;->c(Lo/LongStream;)Lo/Qx;

    .line 334
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showLongClickListener:Lo/Stream;

    invoke-virtual {v0, p1}, Lo/Qx;->b(Lo/Stream;)Lo/Qx;

    .line 336
    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->add(Lo/BiConsumer;)V

    return-void
.end method

.method protected addTopModels(Lo/QF;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    const-string p2, "data"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected addVideoModel(Ljava/lang/String;Lo/Tf;Lo/AK;Lo/Bi;)V
    .locals 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineViewData"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->currentProfileGuid:Ljava/lang/String;

    invoke-interface {p3}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v1, Lcom/netflix/model/leafs/Bookmark;->Companion:Lcom/netflix/model/leafs/Bookmark$Companion;

    .line 279
    iget v0, v0, Lo/Aa;->mBookmarkInSecond:I

    .line 280
    invoke-interface {p3}, Lo/AK;->S()I

    move-result v2

    .line 281
    invoke-interface {p3}, Lo/AK;->ao()Ljava/lang/Integer;

    move-result-object p3

    .line 278
    invoke-virtual {v1, v0, v2, p3}, Lcom/netflix/model/leafs/Bookmark$Companion;->calculateProgress(IILjava/lang/Integer;)I

    move-result p3

    .line 282
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v4, p3

    .line 286
    sget-object v0, Lo/QB;->h:Lo/QB$TaskDescription;

    .line 291
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->presentationTracking:Lo/Yf;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    .line 286
    invoke-virtual/range {v0 .. v5}, Lo/QB$TaskDescription;->d(Ljava/lang/String;Lo/Bi;Lo/Tf;Ljava/lang/Integer;Lo/Yf;)Lo/QD;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->videoClickListener:Lo/LongStream;

    invoke-virtual {p1, p2}, Lo/QD;->e(Lo/LongStream;)Lo/QD;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->videoLongClickListener:Lo/Stream;

    invoke-virtual {p1, p2}, Lo/QD;->d(Lo/Stream;)Lo/QD;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 285
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->add(Lo/BiConsumer;)V

    return-void
.end method

.method public bridge synthetic buildModels(Ljava/lang/Object;ZLjava/util/Map;)V
    .locals 0

    .line 26
    check-cast p1, Lo/QF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->buildModels(Lo/QF;ZLjava/util/Map;)V

    return-void
.end method

.method public buildModels(Lo/QF;ZLjava/util/Map;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    const-string v0, "data"

    invoke-static {v14, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 133
    new-instance v16, Lo/QD;

    invoke-direct/range {v16 .. v16}, Lo/QD;-><init>()V

    .line 134
    new-instance v11, Lo/Qx;

    invoke-direct {v11}, Lo/Qx;-><init>()V

    .line 135
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 136
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 137
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 139
    invoke-virtual/range {p1 .. p1}, Lo/QF;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 360
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 140
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v0

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-eqz v1, :cond_9

    .line 142
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    const/4 v3, 0x1

    .line 144
    iput-boolean v3, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 146
    iget-boolean v4, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-nez v4, :cond_0

    .line 147
    iput-boolean v3, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 148
    invoke-virtual/range {p0 .. p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addTopModels(Lo/QF;Z)V

    .line 152
    :cond_0
    iget-object v4, v13, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->currentProfile:Lo/BC;

    invoke-interface {v4}, Lo/BC;->isKidsProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v13, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->currentProfileGuid:Ljava/lang/String;

    invoke-static {v0, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_2

    .line 153
    iget-boolean v4, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-nez v4, :cond_1

    .line 154
    iput-boolean v3, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addAllProfilesButton()V

    .line 157
    :cond_1
    iget-boolean v4, v13, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showOnlyCurrentProfile:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    iget-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 164
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    const-string v4, "profileId"

    .line 165
    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addProfileViewModel(Ljava/lang/String;)V

    .line 168
    :cond_3
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v4, Lo/QK;->c:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    goto/16 :goto_2

    .line 185
    :cond_5
    invoke-virtual {v1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v7

    iget-object v0, v13, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->uiList:Lo/Rq;

    invoke-virtual {v1}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v6

    new-instance v19, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;

    move-object/from16 v0, v19

    move-object/from16 v3, p0

    move-object v4, v12

    move-object v5, v8

    move-object v14, v6

    move-object/from16 v6, p1

    move-object v15, v7

    move/from16 v7, p2

    move-object/from16 v20, v8

    move-object v8, v10

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v10, p3

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;-><init>(Lo/Tf;Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lo/QF;ZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/Map;Lo/Qx;Lo/QD;)V

    move-object/from16 v0, v19

    check-cast v0, Lo/alN;

    invoke-static {v15, v14, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    move-object/from16 v3, p3

    move-object/from16 v5, v23

    goto :goto_3

    :cond_6
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    .line 170
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    const-string v3, "videoData.videoAndProfileData.profileId"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video.id"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getIdStringForVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p3

    if-eqz v3, :cond_7

    .line 173
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v5, v23

    invoke-virtual {v5, v4}, Lo/Qx;->b(Ljava/lang/CharSequence;)Lo/Qx;

    move-result-object v4

    invoke-virtual {v4}, Lo/Qx;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/BiConsumer;

    goto :goto_1

    :cond_7
    move-object/from16 v5, v23

    move-object/from16 v4, v17

    :goto_1
    if-eqz v4, :cond_8

    .line 175
    invoke-virtual {v13, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->add(Lo/BiConsumer;)V

    goto :goto_3

    .line 177
    :cond_8
    invoke-virtual {v13, v0, v2, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addShowModel(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Lo/Tf;)V

    goto :goto_3

    :cond_9
    :goto_2
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v5, v11

    move-object/from16 v24, v12

    move-object v3, v15

    :goto_3
    move-object/from16 v14, p1

    move-object v15, v3

    move-object v11, v5

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v12, v24

    goto/16 :goto_0

    :cond_a
    move-object v0, v12

    .line 211
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    iput-boolean v1, v13, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->hasVideos:Z

    .line 212
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v13, v1, v0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addBottomModels(Lo/QF;ZZ)V

    return-void
.end method

.method public createProfileView(Ljava/lang/String;)Lo/BiConsumer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->profileModelCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->profileModelCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    return-object p1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->profileProvider:Lo/RP;

    invoke-interface {v0, p1}, Lo/RP;->c(Ljava/lang/String;)Lo/Td;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v1, Lo/RU;

    invoke-direct {v1}, Lo/RU;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/RU;->b(Ljava/lang/CharSequence;)Lo/RU;

    move-result-object v1

    invoke-interface {v0}, Lo/Td;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/RU;->d(Ljava/lang/CharSequence;)Lo/RU;

    move-result-object v1

    .line 262
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 362
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 262
    invoke-interface {v0, v2}, Lo/Td;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/RU;->e(Ljava/lang/String;)Lo/RU;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->profileModelCache:Ljava/util/Map;

    const-string v2, "model"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    check-cast v0, Lo/BiConsumer;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAttachedRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final getCurrentProfile()Lo/BC;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->currentProfile:Lo/BC;

    return-object v0
.end method

.method protected final getEpisodeInfo(Lo/Bi;)Lo/Qy$ActionBar;
    .locals 10

    const-string v0, "viewData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    new-instance v0, Lo/Qy$ActionBar;

    .line 341
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    const-string v1, "viewData.playableId"

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-interface {p1}, Lo/Bi;->G()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v3

    const-string v1, "viewData.lastPersistentStatus"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-interface {p1}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v4

    const-string v1, "viewData.watchState"

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-interface {p1}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v5

    const-string v1, "viewData.downloadState"

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-interface {p1}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v6

    const-string v1, "viewData.stopReason"

    invoke-static {v6, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-interface {p1}, Lo/Bi;->p()I

    move-result v7

    .line 347
    invoke-interface {p1}, Lo/Bi;->w()J

    move-result-wide v8

    move-object v1, v0

    .line 340
    invoke-direct/range {v1 .. v9}, Lo/Qy$ActionBar;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;IJ)V

    return-object v0
.end method

.method public final getFooterItemDecorator()Lo/PowerManager;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->footerItemDecorator:Lo/PowerManager;

    return-object v0
.end method

.method public final getHasVideos()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->hasVideos:Z

    return v0
.end method

.method protected getIdStringForVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getProfileProvider()Lo/RP;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->profileProvider:Lo/RP;

    return-object v0
.end method

.method protected final getShowAllDownloadableClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showAllDownloadableClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected final getShowAllProfilesClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showAllProfilesClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected final getShowClickListener()Lo/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/LongStream<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showClickListener:Lo/LongStream;

    return-object v0
.end method

.method protected final getShowLongClickListener()Lo/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Stream<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showLongClickListener:Lo/Stream;

    return-object v0
.end method

.method public final getShowOnlyCurrentProfile()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showOnlyCurrentProfile:Z

    return v0
.end method

.method public final getUiList()Lo/Rq;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->uiList:Lo/Rq;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 107
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->footerItemDecorator:Lo/PowerManager;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    :cond_0
    const/4 v0, 0x0

    .line 114
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    return-void
.end method

.method public final progressUpdated(Ljava/lang/String;Lo/Bi;)V
    .locals 1

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlinePlayableViewData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "offlinePlayableViewData.playableId"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getIdStringForVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 355
    new-instance p2, Lo/QD;

    invoke-direct {p2}, Lo/QD;-><init>()V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lo/QD;->b(Ljava/lang/CharSequence;)Lo/QD;

    move-result-object p1

    invoke-virtual {p1}, Lo/QD;->d()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->invalidateCacheForModel(J)Z

    .line 356
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->requestModelBuild()V

    return-void
.end method

.method public final setAttachedRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setHasVideos(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->hasVideos:Z

    return-void
.end method

.method public final setShowOnlyCurrentProfile(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->showOnlyCurrentProfile:Z

    return-void
.end method
