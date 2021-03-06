.class public Lcom/netflix/mediaclient/ui/ums/EogLandingPage;
.super Ljava/lang/Object;
.source "EogLandingPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "eog_landing"


# instance fields
.field private mAccount:Landroid/widget/TextView;

.field private mBody:Landroid/widget/TextView;

.field private mContinue:Landroid/widget/TextView;

.field private mImage1:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private mImage2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

.field private mPlans:Landroid/widget/TextView;

.field private mSeeOtherPlansHeader:Landroid/widget/LinearLayout;

.field private mSkip:Landroid/widget/TextView;

.field private mSkipNowButton:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v0, 0x7f0f0150

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0f0151

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mBody:Landroid/widget/TextView;

    const v0, 0x7f0f0153

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mContinue:Landroid/widget/TextView;

    const v0, 0x7f0f0155

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mPlans:Landroid/widget/TextView;

    const v0, 0x7f0f0156

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSkip:Landroid/widget/TextView;

    const v0, 0x7f0f0157

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mAccount:Landroid/widget/TextView;

    const v0, 0x7f0f014c

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSkipNowButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0154

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSeeOtherPlansHeader:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static buildAccountString(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;
    .locals 5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerLinkText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerLinkText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public initUi()V
    .locals 9

    const/16 v8, 0x8

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->canProceed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mBody:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mContinue:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->continueBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mPlans:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->seeOtherPlansText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->skipBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mAccount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v1, v7}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->buildAccountString(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mAccount:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSkipNowButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldUseLayoutWithImages(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f014d

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage1:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage1:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage1:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage1()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, ""

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    :cond_4
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage2()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, ""

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    :cond_5
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldShowOtherPlans(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSeeOtherPlansHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v1, "eog_landing"

    const-string/jumbo v2, "EogLandingPage:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "eog_landing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uknown view, unable to handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldShowOtherPlans(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->goToPlanPage()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "eog_landing"

    const-string/jumbo v2, "showPlans view should be invisible.."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->backPressed()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->recordPlanSelection()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0f014c -> :sswitch_1
        0x7f0f0152 -> :sswitch_2
        0x7f0f0154 -> :sswitch_0
    .end sparse-switch
.end method
