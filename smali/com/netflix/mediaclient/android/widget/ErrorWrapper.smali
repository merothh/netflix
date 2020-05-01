.class public Lcom/netflix/mediaclient/android/widget/ErrorWrapper;
.super Ljava/lang/Object;
.source "ErrorWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorWrapper"


# instance fields
.field private callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private final errorGroup:Landroid/view/View;

.field private final errorMsg:Landroid/widget/TextView;

.field private final retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

.field private final retryClickListener:Landroid/view/View$OnClickListener;

.field private showRetry:Z

.field private final viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showRetry:Z

    new-instance v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$2;-><init>(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    const v0, 0x7f0f017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const v1, 0x7f0f017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const v1, 0x7f0f017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$1;-><init>(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->configureViewsForKidsExperience(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->setRetryVisibility()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-object v0
.end method

.method private configureViewsForKidsExperience(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 10

    const v9, 0x7f0a018c

    const v8, 0x7f0a0053

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    const v2, 0x7f0e0046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    const v2, 0x7f0a0059

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->applyFrom(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v1, v5}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setAllCaps(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {v1, v8}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v7}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v3

    add-int v4, v2, v3

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v2, v6, v6, v1, v6}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {p1, v7}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawablePadding(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->applyFrom(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setAllCaps(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const v1, 0x7f08025a

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setRetryVisibility()V
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showRetry:Z

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getErrorMessageTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method public hide(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    return-void
.end method

.method public showErrorView(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iput-boolean p2, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showRetry:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    invoke-static {v0, p3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->setRetryVisibility()V

    return-void
.end method

.method public showErrorView(Ljava/lang/CharSequence;ILcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showRetry:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->setRetryVisibility()V

    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method public showErrorView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->setRetryVisibility()V

    return-void
.end method

.method public showViewMyDownloadsButton()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
