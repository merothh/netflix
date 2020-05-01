.class public Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
.super Lcom/netflix/mediaclient/android/widget/ErrorWrapper;
.source "LoadingAndErrorWrapper.java"


# static fields
.field private static final SHOW_LOADING_VIEW_RUNNABLE_DELAY_MS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "LoadingAndErrorWrapper"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final loading:Landroid/view/View;

.field private final showLoadingViewAnimatedRunnable:Ljava/lang/Runnable;

.field private final showLoadingViewRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper$1;-><init>(Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingViewRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper$2;-><init>(Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingViewAnimatedRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->handler:Landroid/os/Handler;

    const v0, 0x7f0f0109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->loading:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->loading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->loading:Landroid/view/View;

    return-object v0
.end method

.method private cancelLoadingRunnables()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingViewAnimatedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->cancelLoadingRunnables()V

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->hide(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->loading:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    return-void
.end method

.method public showErrorView(IZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->cancelLoadingRunnables()V

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showErrorView(IZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->loading:Landroid/view/View;

    invoke-static {v0, p3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    return-void
.end method

.method public showErrorView(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->cancelLoadingRunnables()V

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showErrorView(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->loading:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->cancelLoadingRunnables()V

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->hide(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->loading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoadingAndErrorWrapper"

    const-string/jumbo v1, "Loading view is already visible - skipping"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "LoadingAndErrorWrapper"

    const-string/jumbo v1, "Showing loading view after delay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingViewAnimatedRunnable:Ljava/lang/Runnable;

    :goto_1
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingViewRunnable:Ljava/lang/Runnable;

    goto :goto_1
.end method
