.class public final Lcom/netflix/mediaclient/ui/player/TopPanel;
.super Lcom/netflix/mediaclient/ui/player/PlayerSection;
.source "TopPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "screen"


# instance fields
.field private final mActionBar:Landroid/support/v7/app/ActionBar;

.field private final mBackListener:Landroid/view/View$OnClickListener;

.field private mCurrentToolbarAnimation:Landroid/view/ViewPropertyAnimator;

.field private mDebugMetadata:Landroid/view/MenuItem;

.field private mDialogLanguageId:Ljava/lang/String;

.field private mEpisodeSelector:Landroid/view/MenuItem;

.field private mEpisodeSelectorEnabled:Z

.field private mLanguage:Landroid/view/MenuItem;

.field private mLanguageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field private final mListeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

.field private mMDXSelectorEnabled:Z

.field protected mMdxTarget:Landroid/view/MenuItem;

.field private mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

.field private mSound:Landroid/view/MenuItem;

.field private final mTitleLabel:Landroid/widget/TextView;

.field private mToolBar:Landroid/support/v7/widget/Toolbar;

.field private mTopGradient:Landroid/view/View;

.field protected mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerSection;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$1;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mBackListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mListeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0293

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mToolBar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/TopPanel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDialogLanguageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/player/TopPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDialogLanguageId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/media/Language;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->processLanguageChange(Lcom/netflix/mediaclient/media/Language;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/TopPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->updateLastPanelInteractionTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mListeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/player/TopPanel;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method private changeControlsVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mToolBar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mCurrentToolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hideAdvisories()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->showLanguageMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/MenuItem;Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setGradientVisibility(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mCurrentToolbarAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mCurrentToolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mToolBar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->showAdvisories()V

    goto :goto_0
.end method

.method private createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/support/v7/app/AlertDialog;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getLocalDevicePosition()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->setTarget(I)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    const v4, 0x7f08018e

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setTitle(I)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getTargets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setAdapterData(Ljava/util/List;)V

    const v4, 0x7f080247

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->getCurrentTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setSelection(ILjava/lang/String;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel$8;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel$9;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel$9;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getCurrentTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideAdvisories()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideAdvisories()V

    :cond_0
    return-void
.end method

.method private initBack()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private initGeneric(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0800a2

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelectorEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    const v1, 0x7f0200ed

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$6;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private initLanguages(Landroid/view/Menu;)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$3;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->createInstance(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    const v0, 0x7f0800a3

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->showLanguageMenuItem()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    const v1, 0x7f020146

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$4;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private initMDX(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0800a4

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    const v1, 0x7f0200d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMDXSelectorEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$7;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private initQa(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method private initSound(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0800b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    const v1, 0x7f02014b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$2;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private isMdxTargetSelectionVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->isMdxTargetSelectionVisible(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)Z

    move-result v0

    return v0
.end method

.method private isMdxTargetSelectionVisible(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processLanguageChange(Lcom/netflix/mediaclient/media/Language;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->saveUserChoice(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v4

    if-nez v4, :cond_5

    const-string/jumbo v0, "screen"

    const-string/jumbo v5, "Selected subtitle is NONE"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "screen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Selected subtitle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "screen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Selected audio source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentNccpAudioIndex()I

    move-result v3

    if-eq v0, v3, :cond_6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "screen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Audio source is switched from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentNccpAudioIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " NCCP index"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v3, "Start change language, get awake clock"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    move v0, v2

    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentNccpSubtitleIndex()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "screen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Subtitle is now visible and it is switched from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentNccpSubtitleIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NCCP index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    const-string/jumbo v0, "screen"

    const-string/jumbo v4, "Reloading tracks"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->changeLanguage(Lcom/netflix/mediaclient/media/Language;Z)V

    :cond_4
    if-nez v3, :cond_9

    :goto_4
    move v1, v2

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "screen"

    const-string/jumbo v3, "No need to change audio."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    move v0, v1

    goto :goto_2

    :cond_7
    const-string/jumbo v4, "screen"

    const-string/jumbo v5, "No need to change subtitle."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string/jumbo v0, "screen"

    const-string/jumbo v4, "Subtitle is off"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_3

    :cond_9
    move v2, v1

    goto :goto_4
.end method

.method private showAdvisories()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showAdvisories()V

    :cond_0
    return-void
.end method

.method private showLanguageMenuItem()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->isLanguageSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLastPanelInteractionTime()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->extendTimeoutTimer()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized changeActionState(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->enableButton(Landroid/view/MenuItem;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->enableButton(Landroid/view/MenuItem;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->enableButton(Landroid/view/MenuItem;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->enableButton(Landroid/view/MenuItem;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected displayMdxTargets()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :cond_0
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Non local targets are not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "MDX target is reachable, display dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method getLanguageSelector()Lcom/netflix/mediaclient/ui/common/LanguageSelector;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    return-object v0
.end method

.method public declared-synchronized hide()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->changeControlsVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initMDX(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initGeneric(Landroid/view/Menu;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initBack()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initQa(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initLanguages(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initSound(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled menu action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mBackListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method setEpisodeSelectorVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelectorEnabled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/MenuItem;Z)V

    goto :goto_0
.end method

.method setGradientVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->isMdxTargetSelectionVisible()Z

    move-result v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "screen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bottom panel is visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "screen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MDX target whould be visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Player activity was destroyed, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/MenuItem;Z)V

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMDXSelectorEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$10;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel$10;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized show()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->changeControlsVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
