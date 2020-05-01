.class Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;
.source "BarkerKidsCharacterDetailsFrag.java"


# static fields
.field public static final CHARACTER_IMAGE_SIZE_MULTIPLIER:F = 0.39999998f

.field public static final CW_IMAGE_SIZE_MULTIPLIER:F = 0.6f

.field public static final CW_PLAYABLE_TITLE_SIZE_MULTIPLIER:F = 0.36f


# instance fields
.field characterView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field playView:Landroid/widget/ImageView;

.field pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->setupViews()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->setupPlayButton()V

    return-void
.end method

.method private getBackgroundResource()Landroid/graphics/drawable/Drawable;
    .locals 2

    const v1, 0x7f02005f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$800(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e007e
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupPlayButton()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->playView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$800(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f02006c

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->playView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020070

    goto :goto_1

    :pswitch_2
    const v0, 0x7f02006b

    goto :goto_1

    :pswitch_3
    const v0, 0x7f02006d

    goto :goto_1

    :pswitch_4
    const v0, 0x7f02006f

    goto :goto_1

    :pswitch_5
    const v0, 0x7f02006e

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e007e
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupViews()V
    .locals 7

    const/4 v2, 0x0

    const v6, 0x3f19999a    # 0.6f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    new-instance v2, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->onCWClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getBackgroundResource()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->characterView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->characterView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v3, v1

    const v4, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v3, v0

    const v4, 0x3fe39581    # 1.778f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float v1, v1

    const v2, 0x3eb851ec    # 0.36f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void

    :cond_0
    int-to-float v0, v1

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method private updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->title:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;->getCharacterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected alignViews()V
    .locals 0

    return-void
.end method

.method protected findViews()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViews()V

    const v0, 0x7f0f018d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->characterView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v0, 0x7f0f0190

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->playView:Landroid/widget/ImageView;

    const v0, 0x7f0f018e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    return-void
.end method

.method protected getlayoutId()I
    .locals 1

    const v0, 0x7f030067

    return v0
.end method

.method protected setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    return-void
.end method

.method protected updateBoxart(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)V
    .locals 9

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v8}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$1300(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    move-result-object v8

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateCharacterDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->updateBoxart(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->updateCharacterImage()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)V

    return-void
.end method

.method protected updateCharacterImage()V
    .locals 9

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->characterView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->characterView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$1300(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;->getCharacterImageUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v8}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$1300(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    move-result-object v8

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    :cond_0
    return-void
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
