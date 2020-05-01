.class public final Lo/PC;
.super Lo/MenuInflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PC$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/PC$ActionBar;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final b:Lo/ams;

.field private final d:Lo/ams;

.field private final f:Lo/Oc;

.field private final g:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/UpdateEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/PC;

    const/4 v1, 0x5

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "boxArtView"

    const-string v5, "getBoxArtView()Lcom/netflix/mediaclient/android/widget/TopCropImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "synopsisView"

    const-string v5, "getSynopsisView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "playButton"

    const-string v5, "getPlayButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "downloadButton"

    const-string v5, "getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "addToMyListButton"

    const-string v4, "getAddToMyListButton()Lcom/netflix/mediaclient/android/widget/NetflixToggleButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lo/PC;->e:[Lo/amT;

    new-instance v0, Lo/PC$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PC$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/PC;->c:Lo/PC$ActionBar;

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

    invoke-direct/range {v0 .. v5}, Lo/PC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/PC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hz:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/PC;->a:Lo/ams;

    .line 45
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hF:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/PC;->b:Lo/ams;

    .line 47
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->kS:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/PC;->d:Lo/ams;

    .line 48
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->fc:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/PC;->g:Lo/ams;

    .line 49
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->j:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/PC;->i:Lo/ams;

    .line 52
    sget-object p2, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    .line 55
    const-class p3, Lo/UnicodeScript;

    .line 53
    invoke-static {p1, p3}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "ContextUtils.requireCont\u2026ner::class.java\n        )"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lo/UnicodeScript;

    .line 52
    invoke-virtual {p2, p3}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p2

    iput-object p2, p0, Lo/PC;->j:Lo/UpdateEngine;

    .line 60
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->cZ:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Lo/MenuInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 123
    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 63
    new-instance p2, Lo/Oh;

    invoke-direct {p0}, Lo/PC;->d()Lo/ListView;

    move-result-object p3

    check-cast p3, Landroid/widget/CompoundButton;

    invoke-direct {p2, p3}, Lo/Oh;-><init>(Landroid/widget/CompoundButton;)V

    check-cast p2, Lo/Od;

    .line 64
    iget-object p3, p0, Lo/PC;->j:Lo/UpdateEngine;

    invoke-virtual {p3}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p3

    .line 61
    new-instance v0, Lo/Oc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lo/PC;->f:Lo/Oc;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 38
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/PC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 3

    iget-object v0, p0, Lo/PC;->g:Lo/ams;

    sget-object v1, Lo/PC;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method private final b()Lo/RemoteViewsListAdapter;
    .locals 3

    iget-object v0, p0, Lo/PC;->a:Lo/ams;

    sget-object v1, Lo/PC;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RemoteViewsListAdapter;

    return-object v0
.end method

.method private final c()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/PC;->d:Lo/ams;

    sget-object v1, Lo/PC;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method private final d()Lo/ListView;
    .locals 3

    iget-object v0, p0, Lo/PC;->i:Lo/ams;

    sget-object v1, Lo/PC;->e:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ListView;

    return-object v0
.end method

.method private final e()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/PC;->b:Lo/ams;

    sget-object v1, Lo/PC;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method


# virtual methods
.method public final setAddToMyListButtonView(Lo/Bc;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lo/PC;->f:Lo/Oc;

    .line 110
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoDetails.id"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    const-string v2, "videoDetails.type"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v2, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    sget-object v3, Lo/PC;->c:Lo/PC$ActionBar;

    invoke-virtual {v3}, Lo/PC$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x212

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v1, p1, v2, v3}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    :cond_0
    return-void
.end method

.method public final setBoxartView(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lo/PC;->b()Lo/RemoteViewsListAdapter;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/RemoteViewsListAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void
.end method

.method public final setDownloadButtonView(Lo/AK;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lo/PC;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 97
    invoke-direct {p0}, Lo/PC;->a()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v1

    check-cast p1, Lo/As;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 98
    invoke-direct {p0}, Lo/PC;->a()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eq p1, v0, :cond_0

    .line 99
    invoke-direct {p0}, Lo/PC;->a()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final setPlayButtonView(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lo/PC;->c()Lo/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lo/PC$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/PC$StateListAnimator;-><init>(Lo/PC;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSynopsisView(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "synopsis"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lo/PC;->e()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
