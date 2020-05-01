.class public abstract Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
.super Ljava/lang/Object;
.source "Advisor.java"


# static fields
.field public static final DEFAULT_DELAY:J

.field public static final DEFAULT_DURATION:J

.field public static final SLOP:J = 0x3a98L

.field public static final TAG:Ljava/lang/String; = "AdvisorToast"

.field private static sQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/netflix/mediaclient/android/widget/advisor/Advisor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field advisory:Lcom/netflix/model/leafs/advisory/Advisory;

.field anchor:Landroid/view/View;

.field context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field delayInSeconds:F

.field dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final dismissPopup:Ljava/lang/Runnable;

.field durationInSeconds:F

.field protected hasSecondMessage:Z

.field private internalDismiss:Landroid/widget/PopupWindow$OnDismissListener;

.field isHardDismiss:Z

.field messageView:Landroid/widget/TextView;

.field final popupView:Landroid/view/View;

.field final popupWindow:Landroid/widget/PopupWindow;

.field secondaryMessageView:Landroid/widget/TextView;

.field private final showPopup:Ljava/lang/Runnable;

.field timeSinceLastShow:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->DEFAULT_DURATION:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->DEFAULT_DELAY:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    return-void
.end method

.method protected constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->DEFAULT_DURATION:J

    long-to-float v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->durationInSeconds:F

    sget-wide v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->DEFAULT_DELAY:J

    long-to-float v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->delayInSeconds:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->timeSinceLastShow:J

    iput-boolean v4, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->isHardDismiss:Z

    new-instance v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;-><init>(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showPopup:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$2;-><init>(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissPopup:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;-><init>(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->internalDismiss:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->advisory:Lcom/netflix/model/leafs/advisory/Advisory;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupView:Landroid/view/View;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->internalDismiss:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->getMessageViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->getSecondaryMessageViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->secondaryMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->getMessageViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->getSecondaryMessageViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/netflix/model/leafs/advisory/Advisory;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/netflix/model/leafs/advisory/Advisory;->getSecondaryMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withSecondaryMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/advisory/Advisory;->getDelay()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withDelay(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/advisory/Advisory;->getDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->forDuration(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissPopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showPopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Z)V
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->processNextInQueue(Z)V

    return-void
.end method

.method public static destroyAll()V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissAll()V

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public static dismissAll()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissHard()V

    :cond_0
    return-void
.end method

.method private dismissWindow()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setLifeCycleListener(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static getQueueSize()I
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method private static hasShownLongEnough(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)Z
    .locals 10

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->getAdvisory()Lcom/netflix/model/leafs/advisory/Advisory;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->getAdvisory()Lcom/netflix/model/leafs/advisory/Advisory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/Advisory;->getDuration()F

    move-result v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->timeSinceLastShow:J

    long-to-float v2, v2

    add-float/2addr v1, v2

    float-to-long v2, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AdvisorToast"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasShown? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static make(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/netflix/mediaclient/android/widget/advisor/Advisor;",
            ">(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/netflix/model/leafs/advisory/Advisory;->getType()Lcom/netflix/model/leafs/advisory/Advisory$Type;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$5;->$SwitchMap$com$netflix$model$leafs$advisory$Advisory$Type:[I

    invoke-virtual {v0}, Lcom/netflix/model/leafs/advisory/Advisory$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/netflix/mediaclient/android/widget/advisor/ProductPlacementAdvisor;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/android/widget/advisor/ProductPlacementAdvisor;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/advisor/ContentAdvisor;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/android/widget/advisor/ContentAdvisor;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static processNextInQueue(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AdvisorToast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNextInQueue .... stopAfterRemoval -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " .... size -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->hasShownLongEnough(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AdvisorToast"

    const-string/jumbo v1, "hasShownEnough..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_1
    if-eqz p0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    if-nez v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->processNextInQueue(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showInternal()V

    goto :goto_0
.end method

.method private queueIfDoesntExist(Z)V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showInternal()V

    :cond_1
    return-void
.end method

.method public static showAll()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->sQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showInternal()V

    :cond_0
    return-void
.end method


# virtual methods
.method public anchoredAt(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->anchor:Landroid/view/View;

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissWindow()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public dismissHard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->isHardDismiss:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissWindow()V

    return-void
.end method

.method public forDuration(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->durationInSeconds:F

    return-object p0
.end method

.method public getAdvisory()Lcom/netflix/model/leafs/advisory/Advisory;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->advisory:Lcom/netflix/model/leafs/advisory/Advisory;

    return-object v0
.end method

.method public abstract getLayoutId()I
.end method

.method public abstract getMessageViewId()I
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getSecondaryMessageViewId()I
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public queue()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->queueIfDoesntExist(Z)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->queueIfDoesntExist(Z)V

    return-void
.end method

.method protected showInternal()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->isHardDismiss:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showPopup:Ljava/lang/Runnable;

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->delayInSeconds:F

    float-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public withAnimation(I)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-object p0
.end method

.method public withDelay(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->delayInSeconds:F

    return-object p0
.end method

.method public withDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method public withMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->messageView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    :cond_0
    return-object p0
.end method

.method public withSecondaryMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->secondaryMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->secondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->secondaryMessageView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->hasSecondMessage:Z

    :cond_0
    return-object p0
.end method

.method public withViewTracking(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;-><init>(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p0
.end method
