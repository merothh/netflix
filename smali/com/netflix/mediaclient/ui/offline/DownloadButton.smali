.class public Lcom/netflix/mediaclient/ui/offline/DownloadButton;
.super Landroid/widget/LinearLayout;
.source "DownloadButton.java"


# static fields
.field static final BUTTON_TAG:Ljava/lang/String; = "download_btn"

.field private static final TAG:Ljava/lang/String; = "download_button"

.field static preQueued:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field private kidsExperience:Z

.field private playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field private playableId:Ljava/lang/String;

.field private primaryMessageView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private showPrimaryMessages:Z

.field private showViewMyDownloads:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 75
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->findViews(Landroid/view/View;)V

    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->initViews()V

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setupLongPressMessages()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playableId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->showViewMyDownloads:Z

    return v0
.end method

.method private animateIconChange(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static clearPreQueued()V
    .locals 1

    .prologue
    .line 558
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 559
    return-void
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0f0147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    .line 104
    const v0, 0x7f0f0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    .line 105
    return-void
.end method

.method private getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 316
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->kidsExperience:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    const v1, 0x7f0200af

    if-eq p1, v1, :cond_0

    const v1, 0x7f0200ab

    if-ne p1, v1, :cond_1

    .line 319
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e007f

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 323
    :cond_1
    return-object v0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->DownloadButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->showPrimaryMessages:Z

    .line 97
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->showViewMyDownloads:Z

    .line 98
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->kidsExperience:Z

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->showPrimaryMessages:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0200ab

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    const-string/jumbo v0, "download_btn"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 87
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static removePreQueued(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 554
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method private rotateIcon()V
    .locals 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 331
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 332
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 333
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 335
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$2;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 356
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setButtonIcon()V
    .locals 5

    .prologue
    const v4, 0x7f0800ce

    const/4 v3, 0x0

    .line 253
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string/jumbo v0, "download_button"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setButtonIcon playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getState()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    .line 309
    :goto_0
    return-void

    .line 260
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$3;->$SwitchMap$com$netflix$mediaclient$ui$offline$DownloadButton$ButtonState:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0200af

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->rotateIcon()V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 263
    const v0, 0x7f0200b2

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 269
    const v0, 0x7f0200ac

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 279
    const v0, 0x7f0200b0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 291
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 292
    const v0, 0x7f0200ad

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 296
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 304
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0200ab

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private setupLongPressMessages()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$1;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playableId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method

.method public refreshDownloadButton(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 562
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playableId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 565
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 153
    :cond_0
    return-void
.end method

.method setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 238
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playableId:Ljava/lang/String;

    .line 240
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eq p1, v0, :cond_0

    .line 241
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setButtonIcon()V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "download_btn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setTag(Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    const-string/jumbo v0, "download_button"

    const-string/jumbo v3, "setStateFromPlayable"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 158
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    .line 162
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-direct {v3, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v3

    .line 164
    const/4 v0, 0x0

    .line 165
    if-eqz v3, :cond_2

    .line 166
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 168
    :cond_2
    const-string/jumbo v3, "download_button"

    const-string/jumbo v4, "setStateFromPlayable hasOfflinePlayableData=%b"

    new-array v5, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    if-eqz v0, :cond_a

    .line 170
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->hasErrorOrWarning(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 168
    goto :goto_1

    .line 175
    :cond_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    .line 176
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v2

    .line 178
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$3;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 216
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 217
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->hasError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->DOWNLOADING:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    goto/16 :goto_0

    .line 198
    :pswitch_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->showBangIconErrorInUi()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_6
    if-lez v2, :cond_7

    .line 203
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PAUSED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    goto/16 :goto_0

    .line 206
    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :pswitch_4
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_8
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_2

    .line 219
    :cond_9
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_a
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 224
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_3

    .line 226
    :cond_c
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
