.class public Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;
.super Landroid/widget/LinearLayout;
.source "DiscoveryPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscoveryPage"


# instance fields
.field private allCWView:Landroid/view/View;

.field private pivot1Boxart:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private pivot1Title:Landroid/widget/TextView;

.field private pivot2Boxart:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private pivot2Title:Landroid/widget/TextView;

.field private playableView:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

.field private topPlayableLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;)Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->playableView:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->setOrientation(I)V

    .line 54
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    const v1, 0x7f03004c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    const v0, 0x7f0f013c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->topPlayableLayout:Landroid/view/ViewGroup;

    .line 57
    const v0, 0x7f0f013d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot1Boxart:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 58
    const v0, 0x7f0f013f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot2Boxart:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 59
    const v0, 0x7f0f013e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot1Title:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0f0140

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot2Title:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0f0141

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->allCWView:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->playableView:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->topPlayableLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->playableView:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public sizeCWView()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->playableView:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 85
    return-void
.end method

.method public updatePage(Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot1Boxart:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot1BoxartUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot1Title()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot1Title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot1Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot2Boxart:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot2BoxartUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot2Title()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot2Title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot2Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->playableView:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getFalkorVideo()Lcom/netflix/model/branches/FalkorVideo;

    move-result-object v3

    move-object v4, p6

    move v5, p2

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->allCWView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola2Utils;->shouldHideContinueWatchingLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->allCWView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->allCWView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot1Boxart:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->pivot2Boxart:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->sizeCWView()V

    .line 108
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->allCWView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
