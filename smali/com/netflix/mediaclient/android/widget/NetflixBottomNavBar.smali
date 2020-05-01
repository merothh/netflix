.class public Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;,
        Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;,
        Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;
    }
.end annotation


# static fields
.field private static d:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lo/QL;

.field protected b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:I

.field private h:Landroid/animation/ObjectAnimator;

.field private final i:Landroid/content/BroadcastReceiver;

.field private j:Landroid/view/View;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d:Lio/reactivex/subjects/BehaviorSubject;

    .line 105
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    new-instance p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$4;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->f:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$2;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->i:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 228
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    .line 229
    new-instance p1, Lo/Editor;

    invoke-direct {p1, p0}, Lo/Editor;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->m:Ljava/lang/Runnable;

    .line 233
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->k:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    new-instance p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$4;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->f:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$2;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->i:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 228
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    .line 229
    new-instance p1, Lo/Editor;

    invoke-direct {p1, p0}, Lo/Editor;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->m:Ljava/lang/Runnable;

    .line 233
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->k:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    return p1
.end method

.method static synthetic a(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private a(II)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [F

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "translationY"

    .line 543
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v3, 0x96

    .line 544
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 545
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 546
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h:Landroid/animation/ObjectAnimator;

    .line 557
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setVisibility(I)V

    .line 558
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    .line 359
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 360
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setOnTabSelectedListener(Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$Activity;)V

    .line 362
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "bottomTab"

    .line 363
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 366
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-static {v3}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "NetflixBottomNavBar"

    const-string v5, "Couldn\'t find specified bottom tab"

    .line 369
    invoke-static {v2, v5, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tab not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " tab: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->values()[Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 375
    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setSelectedTabId(IZ)V

    .line 383
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    .line 251
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aQ:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    .line 257
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->n()V

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    new-instance v1, Lo/TransactionTracker;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->hH:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qr:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->bA:I

    invoke-direct {v1, v2, v3, v4}, Lo/TransactionTracker;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {}, Lo/adq;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    new-instance v1, Lo/TransactionTracker;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->qM:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qx:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->bD:I

    invoke-direct {v1, v2, v3, v4}, Lo/TransactionTracker;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_1
    const-class v1, Lo/m;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/m;

    invoke-interface {v1}, Lo/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    const-class v1, Lo/m;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/m;

    invoke-interface {v1}, Lo/m;->d()Lo/TransactionTracker;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_2
    new-instance v1, Lo/TransactionTracker;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->fi:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qt:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->aE:I

    invoke-direct {v1, v2, v3, v4}, Lo/TransactionTracker;-><init>(ILjava/lang/String;I)V

    const/4 v2, 0x0

    .line 272
    invoke-virtual {v1, v2}, Lo/TransactionTracker;->d(Z)V

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v3, Lo/TransactionTracker;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->pm:I

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->qq:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v5, Lcom/netflix/mediaclient/ui/R$Activity;->bE:I

    invoke-direct {v3, v4, p1, v5}, Lo/TransactionTracker;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setTabs(Ljava/util/List;)V

    .line 278
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getKeyboardState()Lo/RecoverySystem;

    move-result-object p1

    .line 279
    new-instance v3, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$5;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$5;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    invoke-virtual {p1, v3}, Lo/RecoverySystem;->d(Lo/RecoverySystem$ActionBar;)V

    .line 289
    invoke-virtual {p1}, Lo/RecoverySystem;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(Landroid/content/Intent;)V

    .line 291
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b(I)V

    .line 292
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setLabelVisibility(Z)V

    .line 294
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v2, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Ljava/util/List;Lo/TransactionTracker;)V

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->t()V

    return-void
.end method

.method private b(Lo/Am;Ljava/util/List;Lo/TransactionTracker;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/util/List<",
            "Lo/TransactionTracker;",
            ">;",
            "Lo/TransactionTracker;",
            ")Z"
        }
    .end annotation

    .line 342
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/RL;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p3, v0}, Lo/TransactionTracker;->d(Z)V

    .line 344
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g()V

    const/4 p1, 0x0

    return p1

    .line 347
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)Ljava/lang/Boolean;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->l()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private c(I)V
    .locals 4

    .line 639
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d(I)Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-lez p1, :cond_1

    const/4 v1, 0x0

    .line 645
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setVisibility(I)V

    .line 646
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->ac:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundColor(I)V

    .line 647
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    sget-object p1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    goto :goto_0

    .line 649
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->k()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 650
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->ax:I

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 652
    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "fromBottomTab"

    .line 786
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;Landroid/content/Intent;)V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 410
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 411
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 413
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 414
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 415
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 420
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->o()V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;Landroid/content/Intent;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lo/Am;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e(Lo/Am;Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Lo/Am;)V
    .locals 2

    .line 723
    invoke-virtual {p1}, Lo/Am;->U()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iY:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j:Landroid/view/View;

    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j:Landroid/view/View;

    new-instance v1, Lo/FastScroller;

    invoke-direct {v1, p0, p1}, Lo/FastScroller;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lo/Am;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d(Lo/Am;)V

    return-void
.end method

.method private synthetic e(Lo/Am;Landroid/view/View;)V
    .locals 2

    .line 726
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lo/Am;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 727
    invoke-virtual {p1}, Lo/Am;->U()Ljava/util/List;

    move-result-object p1

    .line 728
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 729
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BC;

    .line 730
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 731
    invoke-interface {p1}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    .line 730
    invoke-static {v0, p1}, Lo/YM;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 732
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_1

    .line 733
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object p2, Lo/Zg;->c:Lo/Zg;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 735
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    .line 733
    invoke-virtual {p2, v0, v1}, Lo/Zg;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lo/Am;Ljava/util/List;Lo/TransactionTracker;)Z
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b(Lo/Am;Ljava/util/List;Lo/TransactionTracker;)Z

    move-result p0

    return p0
.end method

.method static synthetic f()Lio/reactivex/subjects/BehaviorSubject;
    .locals 1

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method private g()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 479
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;->f()Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->c:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    if-ne v0, v1, :cond_0

    .line 489
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c:Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->d()V

    .line 493
    :cond_0
    invoke-static {}, Lo/QL;->f()Lio/reactivex/Observable;

    move-result-object v0

    .line 494
    invoke-static {p0}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 495
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$8;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    .line 496
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static j()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 1

    .line 794
    const-class v0, Lo/m;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/m;

    invoke-interface {v0}, Lo/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewNewsFeedCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewNewsFeedCommand;-><init>()V

    return-object v0

    .line 797
    :cond_0
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewPreviewsCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewPreviewsCommand;-><init>()V

    return-object v0
.end method

.method private k()Ljava/lang/Boolean;
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a:Lo/QL;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Lo/QL;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lo/QL;->e()I

    move-result v1

    invoke-virtual {v0}, Lo/QL;->a()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 633
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 635
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/Boolean;
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a:Lo/QL;

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {v0}, Lo/QL;->a()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/QL;->e()I

    move-result v1

    invoke-virtual {v0}, Lo/QL;->a()I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 627
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 625
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 618
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 721
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lo/ForwardingListener;

    invoke-direct {v1, p0}, Lo/ForwardingListener;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .line 659
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$10;->c:[I

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;->f()Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c:Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    .line 678
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->e()J

    move-result-wide v1

    .line 676
    invoke-static {v0, v1, v2}, Lo/RL;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;J)I

    move-result v2

    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/RL;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;J)I

    move-result v2

    .line 681
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(I)V

    return-void
.end method

.method private s()V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;

    .line 803
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;->d(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic t()V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a()Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    return-object v0
.end method

.method public a(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getKeyboardState()Lo/RecoverySystem;

    move-result-object v0

    invoke-virtual {v0}, Lo/RecoverySystem;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 589
    iget p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 590
    iput v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    .line 591
    invoke-direct {p0, v1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(II)V

    goto :goto_0

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->m()V

    .line 594
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setVisibility(I)V

    :goto_0
    if-nez v0, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->s()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 108
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 395
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e()Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    const/4 v1, 0x0

    .line 398
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setVisibility(I)V

    .line 399
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->Y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundColor(I)V

    .line 400
    sget-object v2, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    .line 401
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 403
    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 455
    invoke-static {p0}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$3;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    .line 456
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 463
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->i:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 467
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.PLAYER"

    .line 468
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public c(F)V
    .locals 2

    .line 603
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    .line 604
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setTranslationY(F)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 606
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    goto :goto_0

    .line 608
    :cond_0
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    .line 610
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected c(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;I)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d(I)Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 535
    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setVisibility(I)V

    .line 537
    sget-object v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    .line 538
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .line 473
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 474
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 573
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 574
    iget p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 575
    iput v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    .line 576
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getHeight()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(II)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->m()V

    .line 579
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setVisibility(I)V

    :goto_0
    if-eqz v0, :cond_1

    .line 582
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->s()V

    :cond_1
    return-void
.end method

.method protected e()Lcom/netflix/android/widgetry/widget/tabs/BadgeView;
    .locals 2

    .line 387
    const-class v0, Lo/m;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/m;

    invoke-interface {v0}, Lo/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->b:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d(I)Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    move-result-object v0

    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d(I)Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d(I)Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 524
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 525
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setVisibility(I)V

    .line 526
    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    .line 527
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->ac:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundColor(I)V

    .line 528
    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setProgress(I)V

    :cond_0
    return-void
.end method

.method protected e(Lo/QL;)V
    .locals 1

    .line 505
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a:Lo/QL;

    .line 506
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->o()V

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {p1}, Lo/QL;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lo/QL;->d()I

    move-result v0

    if-lez v0, :cond_1

    .line 509
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->az:I

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;I)V

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p1}, Lo/QL;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lo/QL;->c()I

    move-result v0

    if-lez v0, :cond_3

    .line 511
    sget-object p1, Lo/he;->a:Lo/he$Application;

    invoke-virtual {p1}, Lo/he$Application;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lo/RL;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 512
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aB:I

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;I)V

    goto :goto_0

    .line 514
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aA:I

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;I)V

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {p1}, Lo/QL;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e(I)V

    :goto_0
    return-void
.end method

.method public h()Z
    .locals 4

    .line 562
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public i()Z
    .locals 8

    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 701
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    .line 704
    sget-object v2, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 705
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 706
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    if-ne v5, v0, :cond_1

    .line 708
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v0, -0x1

    if-ne v5, v7, :cond_2

    const-string v4, "fromBottomTab"

    .line 710
    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v4, v6}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 712
    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v4, v1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    const/4 v4, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 354
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {p0, v1, v0}, Lo/RemoteException;->c(Landroid/view/View;II)V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 441
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 442
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 447
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 448
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 316
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 317
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j:Landroid/view/View;

    const/high16 v2, -0x80000000

    .line 318
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 317
    invoke-virtual {v1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 320
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 323
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    mul-int/lit8 v3, v1, 0x5

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->e(I)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v4, v1}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-static {v0, v3, v1}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-static {v0, v4, v4}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-static {v0, v3, v1}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 425
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 432
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->m:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->m:Ljava/lang/Runnable;

    invoke-static {p1}, Lo/adX;->c(Ljava/lang/Runnable;)V

    .line 435
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a()Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 830
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 685
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aM:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->o:I

    invoke-static {p1, v0, p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
