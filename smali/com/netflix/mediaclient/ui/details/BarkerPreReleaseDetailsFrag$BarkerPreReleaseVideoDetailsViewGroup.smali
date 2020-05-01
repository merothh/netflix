.class Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;
.super Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.source "BarkerPreReleaseDetailsFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreReleaseVideoDetailsViewGroup"


# instance fields
.field private playButton:Landroid/widget/Button;

.field private supplementalMessage:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    .line 194
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->playButton:Landroid/widget/Button;

    return-object v0
.end method

.method private fetchSupplementalVideos(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    const-string/jumbo v0, "PreReleaseVideoDetailsViewGroup"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->requestId:J

    .line 262
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    iget-wide v4, v3, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->requestId:J

    invoke-direct {v2, p0, v4, v5}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;J)V

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private updateSupplementalMessage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->isSupplementalMessageAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected alignViews()V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getPreReleaseContentWidth()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 206
    return-void
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViews()V

    .line 211
    const v0, 0x7f0f0395

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->playButton:Landroid/widget/Button;

    .line 212
    const v0, 0x7f0f0392

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 214
    return-void
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 199
    const v0, 0x7f030118

    return v0
.end method

.method protected setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 218
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->hasTrailers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getDefaultTrailer()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->fetchSupplementalVideos(Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->playButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->updateSupplementalMessage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 270
    return-void
.end method

.method protected updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 231
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 236
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitleCroppedImgUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTvCardUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 239
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    move-object v4, p3

    .line 234
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 243
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 245
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 248
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    move-object v1, v7

    move-object v4, p3

    .line 243
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 252
    return-void

    .line 236
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitleCroppedImgUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
