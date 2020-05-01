.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;
.super Landroid/widget/RelativeLayout;
.source "RoleDetailsFrag.java"


# instance fields
.field actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

.field actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

.field alias:Landroid/widget/TextView;

.field born:Landroid/widget/TextView;

.field bornLabel:Landroid/widget/TextView;

.field knownFor:Landroid/widget/TextView;

.field knownForLabel:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field onNetFlixLabel:Landroid/view/View;

.field spouse:Landroid/widget/TextView;

.field spouseLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->init()V

    return-void
.end method

.method private findViews()V
    .locals 2

    const v0, 0x7f0f0323

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    const v0, 0x7f0f0324

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/CircleImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    const v0, 0x7f0f0328

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    const v0, 0x7f0f0327

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownForLabel:Landroid/widget/TextView;

    const v0, 0x7f0f032c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    const v0, 0x7f0f032b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouseLabel:Landroid/widget/TextView;

    const v0, 0x7f0f0326

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->name:Landroid/widget/TextView;

    const v0, 0x7f0f032a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    const v0, 0x7f0f0329

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->bornLabel:Landroid/widget/TextView;

    const v0, 0x7f0f0325

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->onNetFlixLabel:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    const v1, 0x7f0f032d

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1102(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->getlayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViews()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->setupCaret()V

    return-void
.end method

.method private setupCaret()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/view/View;

    move-result-object v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private updateActorHeadshotmage(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getHeadshotImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    iget-object v2, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v2}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getHeadshotImageUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFrag.ActorDetailsView.actorHeadshotImg"

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateActorStillImage(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const v0, 0x7f0f01f6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->adjustHeight(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/model/branches/FalkorActorStill;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCutomCroppingEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/model/branches/FalkorActorStill;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorActorStill;->getStillXFocus()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCropPointXOffsetPercent(F)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/model/branches/FalkorActorStill;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/branches/FalkorActorStill;->getStillUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFrag.ActorDetailsView.actorStillImg"

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->clearColorFilter()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCutomCroppingEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1200(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setColorFilter(I)V

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBorn(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getBorn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getBorn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->bornLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->bornLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateKnownFor(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getKnownFor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getKnownFor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownForLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownForLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateName(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->name:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->name:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateSpouse(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getSpouse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getSpouse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouseLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouseLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected adjustHeight(Landroid/widget/ImageView;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1300(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v0

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    int-to-float v2, v3

    div-float v2, v0, v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    :goto_0
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    return-void

    :cond_0
    const/high16 v0, 0x3f100000    # 0.5625f

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1300(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method protected getlayoutId()I
    .locals 1

    const v0, 0x7f0300eb

    return v0
.end method

.method updateDetails(Lcom/netflix/model/branches/FalkorPerson;Z)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateName(Lcom/netflix/model/branches/FalkorPerson;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateSpouse(Lcom/netflix/model/branches/FalkorPerson;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateBorn(Lcom/netflix/model/branches/FalkorPerson;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateKnownFor(Lcom/netflix/model/branches/FalkorPerson;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateActorStillImage(Lcom/netflix/model/branches/FalkorPerson;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateActorHeadshotmage(Lcom/netflix/model/branches/FalkorPerson;)V

    goto :goto_0
.end method
