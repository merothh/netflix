.class public Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;
.super Landroid/widget/LinearLayout;
.source "UserMessageAreaView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserMessageAreaView"


# instance fields
.field private final mAlertView:Landroid/view/View;

.field private final mAlphaAnimation:Landroid/view/ViewPropertyAnimator;

.field private final mBody:Landroid/widget/TextView;

.field private final mCtaContainer:Landroid/view/ViewGroup;

.field private final mDimSpace:Landroid/widget/Space;

.field private final mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private mParentView:Landroid/widget/ListView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mShrinkAnimator:Landroid/animation/ValueAnimator;

.field private mSpaceAsHeader:Landroid/widget/Space;

.field private final mTitle:Landroid/widget/TextView;

.field private mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0x10e0001

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$1;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    const v0, 0x7f03010b

    invoke-static {p1, v0, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    const v0, 0x7f0f0066

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mTitle:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 100
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mBody:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mBody:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 102
    const v0, 0x7f0f038b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mCtaContainer:Landroid/view/ViewGroup;

    .line 103
    const v0, 0x7f0f0065

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 104
    const v0, 0x7f0f0388

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mAlertView:Landroid/view/View;

    .line 105
    const v0, 0x7f0f0389

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mDimSpace:Landroid/widget/Space;

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$2;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mCtaContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mAlphaAnimation:Landroid/view/ViewPropertyAnimator;

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mAlphaAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mAlphaAnimation:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$3;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 126
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$5;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->setVisibility(I)V

    .line 162
    return-void

    .line 129
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/widget/Space;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mSpaceAsHeader:Landroid/widget/Space;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Landroid/widget/Space;)Landroid/widget/Space;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mSpaceAsHeader:Landroid/widget/Space;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mParentView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mAlertView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->openLinkWithAutoLoginToken(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    return-void
.end method

.method private addCta(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 277
    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->selected()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01c1

    :goto_0
    invoke-direct {v2, v3, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mCtaContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mCtaContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mCtaContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 282
    const-string/jumbo v0, "LINK"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$7;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$7;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 277
    :cond_1
    const v0, 0x7f0b01c0

    goto :goto_0

    .line 309
    :cond_2
    const-string/jumbo v0, "UMS_IMPRESSION"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NOT_NOW"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private bind()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 244
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mBody:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mCtaContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->addCta(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    .line 256
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->addCta(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    .line 259
    :cond_1
    const-string/jumbo v0, "INFO"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v1, 0x7f0802f2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setTextColor(I)V

    .line 274
    :goto_2
    return-void

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_1

    .line 263
    :cond_4
    const-string/jumbo v0, "WARN"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v1, 0x7f0802ff

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setTextColor(I)V

    goto :goto_2

    .line 267
    :cond_5
    const-string/jumbo v0, "ERROR"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v1, 0x7f0802ef

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setTextColor(I)V

    goto :goto_2

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private openLinkWithAutoLoginToken(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 6

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unable to generate token, no service. [serviceManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/home/AccountHandler;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 333
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    sget-object v2, Lcom/netflix/mediaclient/util/VolleyUtils;->TIMEOUT_ERROR:Lcom/android/volley/VolleyError;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    .line 334
    new-instance v2, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Lcom/netflix/mediaclient/ui/home/AccountHandler;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    .line 340
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    new-instance v1, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/home/AccountHandler;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V

    .line 351
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz v0, :cond_0

    .line 227
    if-eqz p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mAlphaAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 232
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 233
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mParentView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mSpaceAsHeader:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mParentView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 167
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 168
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 174
    return-void
.end method

.method public show(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/widget/ListView;Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mParentView:Landroid/widget/ListView;

    .line 187
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 188
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->bind()V

    .line 189
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->setPadding(IIII)V

    .line 194
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;-><init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mDimSpace:Landroid/widget/Space;

    invoke-virtual {v0, v2}, Landroid/widget/Space;->setVisibility(I)V

    .line 208
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->setBackgroundResource(I)V

    .line 216
    :goto_0
    const-string/jumbo v0, "UserMessageAreaView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Displaying uma alert created on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mUmaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mParentView:Landroid/widget/ListView;

    invoke-virtual {v0, p0, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->mDimSpace:Landroid/widget/Space;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
