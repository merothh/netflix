.class public Lcom/netflix/mediaclient/ui/lomo/CwView;
.super Landroid/widget/RelativeLayout;
.source "CwView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CW_IMG_HEIGHT_TO_WIDTH_RATIO:F = 0.5625f

.field private static final TAG:Ljava/lang/String; = "CwView"


# instance fields
.field protected clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field protected img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected info:Landroid/view/View;

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field protected progress:Landroid/widget/ProgressBar;

.field protected title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->init()V

    return-void
.end method

.method public static calculateProgress(II)I
    .locals 1

    if-lez p0, :cond_0

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x200f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/lomo/CwView;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f030032

    return v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    return-void
.end method

.method protected init()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setFocusable(Z)V

    const v0, 0x7f0201e6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setBackgroundResource(I)V

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    const v1, 0x7f0f0115

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->title:Landroid/widget/TextView;

    const v1, 0x7f0f0112

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v1, 0x7f0f0114

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->progress:Landroid/widget/ProgressBar;

    const v1, 0x7f0f0116

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    return-void
.end method

.method public setInfoViewId(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public setTitle(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080156

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080155

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getEpisodeNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x200f

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CwView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating for video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p0, v8}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setTitle(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V

    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->bif:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    if-eqz p4, :cond_1

    move v7, v6

    :goto_0
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getRuntime()I

    move-result v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->calculateProgress(II)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->castPrefetchAndCacheManifestIfEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/CwView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/CwView;Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    return-void

    :cond_1
    move v7, v8

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/CwView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
