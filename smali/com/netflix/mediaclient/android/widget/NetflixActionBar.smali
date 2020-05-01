.class public Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.super Ljava/lang/Object;
.source "NetflixActionBar.java"


# static fields
.field private static final HIDE_ANIMATION_DURATION_MS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "NetflixActionBar"


# instance fields
.field private actionBarGroup:Landroid/view/ViewGroup;

.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private hasUpAction:Z

.field private homeView:Landroid/view/View;

.field protected systemActionBar:Landroid/support/v7/app/ActionBar;

.field protected toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating action bar of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iput-boolean p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hasUpAction:Z

    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->attachToolBarToViewHierarchy()V

    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setToolBarAsActionBar(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->init(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->findNavigationView()V

    .line 57
    return-void
.end method

.method private applyUpButtonTint()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string/jumbo v1, "NetflixActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Applying tint to navIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 175
    :cond_1
    return-void
.end method

.method private attachToolBarToViewHierarchy()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 105
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "actionBarGroup is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_2

    .line 111
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "toolBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarParentViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private findNavigationView()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 141
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 143
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 144
    check-cast v0, Landroid/widget/ImageView;

    .line 145
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 146
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->homeView:Landroid/view/View;

    .line 152
    :cond_0
    return-void

    .line 141
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private init(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setupFocusability()V

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    return-void
.end method

.method private performUpAction()Z
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hasUpAction:Z

    if-eqz v0, :cond_0

    .line 344
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "performing up action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    .line 346
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setToolBarAsActionBar(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "ActionBar is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    return-void
.end method

.method private setupFocusability()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x102002c

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 197
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public bringToFront()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 134
    :cond_0
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method protected getFullSizeLogoId()I
    .locals 1

    .prologue
    .line 288
    const/high16 v0, 0x7f020000

    return v0
.end method

.method public getHomeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->homeView:Landroid/view/View;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 335
    const v0, 0x7f03001a

    return v0
.end method

.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public handleHomeButtonSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 207
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleHomeButtonSelected, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->performUpAction()Z

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 222
    if-eqz p1, :cond_0

    .line 223
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 224
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 225
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 228
    return-void
.end method

.method public hidelogo()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 216
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onManagerReady()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public replaceUpButtonWithCancelIcon(Z)V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f0200c2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 83
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0200c5

    goto :goto_0

    :cond_1
    const v0, 0x7f0200c6

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setAlpha(F)V

    .line 355
    :cond_0
    return-void
.end method

.method public setAlphaWithAnimation(FI)V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 365
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    .line 87
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hasUpAction:Z

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 157
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->findNavigationView()V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->applyUpButtonTint()V

    .line 162
    :cond_0
    return-void
.end method

.method public setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 255
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "system actionBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p1, v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 268
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->MONOCHROME:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p1, v0, :cond_5

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getFullSizeLogoId()I

    move-result v0

    .line 272
    :goto_1
    const-string/jumbo v2, "NetflixActionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set logo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->MONOCHROME:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p1, v2, :cond_4

    .line 274
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_3

    .line 276
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 277
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    goto :goto_0

    .line 280
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public setSandwichIcon(Z)V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f020100

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 79
    return-void

    .line 78
    :cond_0
    const v0, 0x7f0200fe

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 310
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set subtitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 312
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "system actionBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSubtitleColor(I)V
    .locals 3

    .prologue
    .line 319
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set subtitle color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    .line 321
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "toolbar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 292
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 294
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "system actionBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 3

    .prologue
    .line 301
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set title color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    .line 303
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "system actionBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 236
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 237
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 240
    return-void
.end method

.method protected showDropShadowIfAvailable()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_0
    return-void
.end method
