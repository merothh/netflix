.class public Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;
.super Lcom/netflix/mediaclient/ui/player/CurrentTime;
.source "CurrentTimeTablet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CurrentTimeTablet"


# instance fields
.field private final bottomMarginInPx:I

.field private endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

.field private startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->bottomMarginInPx:I

    return-void
.end method

.method private startStartAnimation(Ljava/nio/ByteBuffer;)V
    .locals 5

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStartAnimation()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;-><init>(Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;Ljava/nio/ByteBuffer;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    const/4 v3, 0x0

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->bottomMarginInPx:I

    neg-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showBif(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->start()V

    return-void
.end method

.method private startStopAnimation(Z)V
    .locals 5

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStopAnimation()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;-><init>(Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;Z)V

    new-instance v1, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    iget v3, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->bottomMarginInPx:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->start()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    return-void
.end method


# virtual methods
.method public start(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CurrentTimeTablet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: bb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    if-nez v0, :cond_4

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "start: bb -> playerFragment or currentTime is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->updateCurrentTime()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startStartAnimation(Ljava/nio/ByteBuffer;)V

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "start end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stop(Z)V
    .locals 2

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "Start animation is not completed yet - cancelling it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->cancel()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "stop end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->updateCurrentTime()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startStopAnimation(Z)V

    goto :goto_1
.end method

.method public updateTimeMargins()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "doUpdateTimeMargins"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
