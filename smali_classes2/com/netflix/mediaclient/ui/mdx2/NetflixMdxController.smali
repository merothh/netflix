.class public final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;
.super Lcom/netflix/android/mdxpanel/MdxPanelController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;


# instance fields
.field private final d:Lo/UpdateEngine;

.field private f:Ljava/lang/String;

.field private g:Lo/MR;

.field private final h:Lo/Da;

.field private i:Lo/Dk;

.field private final j:Lo/aka;

.field private k:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/netflix/mediaclient/media/Language;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lo/aka;

.field private final m:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;

.field private n:Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

.field private o:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lo/Ms;

.field private final s:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

.field private t:Lo/Ml;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 12

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinatorLayout"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v0, p1

    check-cast v0, Lo/UnicodeScript;

    .line 72
    sget-object v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    goto :goto_0

    .line 75
    :cond_0
    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->d:Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;

    .line 68
    :goto_0
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Lo/UnicodeScript;Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;)V

    .line 88
    sget-object p2, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {p2, v0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d:Lo/UpdateEngine;

    .line 90
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$mdxTargetCallback$2;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$mdxTargetCallback$2;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->j:Lo/aka;

    .line 98
    new-instance p2, Lo/MR;

    invoke-direct {p2, p0, p1}, Lo/MR;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->g:Lo/MR;

    .line 99
    new-instance p2, Lo/Da;

    sget-object p3, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;->getLogTag()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lo/Da;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->h:Lo/Da;

    .line 108
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->l:Lo/aka;

    .line 132
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->m:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;

    .line 138
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    const-string p3, "PublishSubject.create()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->k:Lio/reactivex/subjects/PublishSubject;

    .line 144
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->s:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    .line 153
    sget-object p2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 814
    const-class p2, Lo/MO;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/MO;

    .line 153
    invoke-interface {p2, p0, p1}, Lo/MO;->d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 156
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->s:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    check-cast p3, Lo/ClassCircularityError;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    .line 157
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->s:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->e()Lio/reactivex/Observable;

    move-result-object p2

    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "mdxEventProducer.mdxAgen\u2026    .takeUntil(destroy())"

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    const/4 v2, 0x0

    .line 325
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$2;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v1, p2

    check-cast v1, Lo/alA;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 159
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 327
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->g:Lo/MR;

    invoke-virtual {p2}, Lo/MR;->c()Lio/reactivex/Observable;

    move-result-object p2

    .line 329
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "repository\n            .\u2026    .takeUntil(destroy())"

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    .line 409
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$4;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$4;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v1, p2

    check-cast v1, Lo/alA;

    .line 330
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 411
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->a()Lio/reactivex/Observable;

    move-result-object p2

    .line 412
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "uiEvents\n            .takeUntil(destroy())"

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    .line 557
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$6;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$6;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v1, p2

    check-cast v1, Lo/alA;

    .line 413
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 559
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->k:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "languages.takeUntil(destroy())"

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    .line 562
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$8;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$8;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v1, p2

    check-cast v1, Lo/alA;

    .line 560
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 564
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->l()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "activates().takeUntil(destroy())"

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$9;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$9;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    .line 571
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$10;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$10;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v1, p2

    check-cast v1, Lo/alA;

    .line 565
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 573
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->m()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "deactivates().takeUntil(destroy())"

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    .line 586
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$12;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$12;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v1, p2

    check-cast v1, Lo/alA;

    .line 574
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 588
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object v6

    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$13;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$13;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v9, p2

    check-cast v9, Lo/alA;

    const/4 v8, 0x0

    .line 590
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$14;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$14;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v7, p2

    check-cast v7, Lo/alA;

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 588
    invoke-static/range {v6 .. v11}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 592
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    .line 593
    sget-object p3, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$15;

    check-cast p3, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "stateEvents.takeUntil(de\u2026Event.VisibilityChanged }"

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$16;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$16;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    .line 596
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$17;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$17;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v1, p2

    check-cast v1, Lo/alA;

    .line 594
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 598
    sget-object p2, Lo/Build$TaskStackBuilder;->d:Lo/Build$TaskStackBuilder;

    check-cast p2, Lo/Build;

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    .line 601
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$20;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$20;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 612
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lo/Ml;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->t:Lo/Ml;

    return-object p0
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/CharSequence;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lo/Ms;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->q:Lo/Ms;

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lo/Ms;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->q:Lo/Ms;

    return-object p0
.end method

.method private final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 7

    .line 620
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldShowKidsTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 623
    sget-object v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Application;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Application;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 627
    sget-object v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$ActionBar;->c:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$ActionBar;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v1

    const-string v0, "stateEvents.takeUntil(de\u2026  .distinctUntilChanged()"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$enableKidsStatusNavBarFlipping$3;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$enableKidsStatusNavBarFlipping$3;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 640
    new-instance p1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$enableKidsStatusNavBarFlipping$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$enableKidsStatusNavBarFlipping$4;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 632
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method private final b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 671
    new-instance v0, Lo/Build$SharedElementCallback;

    invoke-direct {v0, p1}, Lo/Build$SharedElementCallback;-><init>(Ljava/lang/CharSequence;)V

    check-cast v0, Lo/Build;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    const/4 p1, 0x0

    .line 672
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Z)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 677
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 678
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 802
    const-class v0, Lo/xZ;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xZ;

    .line 678
    new-instance v1, Lo/pJ;

    invoke-direct {v1, v0, p1}, Lo/pJ;-><init>(Lo/xZ;Ljava/lang/String;)V

    .line 680
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 682
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 683
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;

    invoke-direct {v0, p0, v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lo/pJ;Landroid/graphics/BitmapFactory$Options;)V

    check-cast v0, Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;)V

    goto :goto_0

    .line 696
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    :goto_0
    return-void
.end method

.method private final c(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V
    .locals 19

    move-object/from16 v15, p0

    .line 701
    iget-object v14, v15, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->f:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 702
    invoke-static/range {p1 .. p2}, Lo/afA;->e(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v13, "controllerView.context"

    invoke-static {v1, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0xff8

    const/16 v17, 0x0

    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETAUDIOSUB"

    move-object/from16 v0, p0

    move-object v2, v14

    move-object/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v17

    invoke-static/range {v0 .. v14}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0xfd8

    const/4 v14, 0x0

    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_SETAUDIOSUB"

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v6, p2

    invoke-static/range {v0 .. v14}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 17

    move-object/from16 v9, p7

    move-object/from16 v8, p8

    .line 725
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v14, :cond_5

    .line 726
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 727
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    move-object/from16 v4, p2

    .line 728
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    const-string v0, "Intent(action)\n         \u2026Mdx.MDX_EXTRA_UUID, uuid)"

    invoke-static {v15, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 729
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 730
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "time"

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    if-eqz p5, :cond_1

    .line 732
    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 733
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "volume"

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    if-eqz p6, :cond_2

    .line 736
    invoke-virtual/range {p6 .. p6}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    const-string v1, "language.selectedAudio"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audioTrackId"

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    invoke-virtual/range {p6 .. p6}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    const-string v1, "language.selectedSubtitle"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subtitleTrackId"

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz v8, :cond_3

    const-string v0, "invocSource"

    .line 740
    invoke-virtual {v15, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz v9, :cond_4

    const-string v0, "segmentType"

    .line 743
    invoke-virtual {v15, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    :cond_4
    new-instance v16, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;-><init>(Landroid/content/Intent;Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V

    move-object/from16 v0, v16

    check-cast v0, Lo/alO;

    move-object/from16 v1, p9

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    invoke-static {v1, v2, v3, v0}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 756
    invoke-virtual {v14}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0, v15}, Lo/Am;->b(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n:Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Activity;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Activity;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 655
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Ljava/lang/Object;)V

    .line 656
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Activity;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Ljava/lang/CharSequence;)V

    .line 654
    check-cast v0, Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n:Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->x()V

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n:Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->k:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/CharSequence;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/Throwable;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method private final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/CharSequence;
    .locals 1

    .line 794
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-static {p1}, Lo/acE;->c(Lo/Am;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceManagerUtils.getM\u2026endlyName(serviceManager)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 16

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 715
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 716
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    .line 717
    move-object v1, v2

    check-cast v1, Lcom/netflix/mediaclient/media/Language;

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 718
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    .line 719
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v11, v1

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    .line 720
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    .line 721
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    .line 722
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    move-object v14, v1

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    .line 723
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v15, v0

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v15}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lo/Ml;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->t:Lo/Ml;

    return-void
.end method

.method private final e(Ljava/lang/Throwable;)V
    .locals 1

    .line 768
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic g(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lo/CT;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->y()Lo/CT;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->s:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    return-object p0
.end method

.method public static final synthetic j(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->m:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;

    return-object p0
.end method

.method private final x()V
    .locals 2

    .line 662
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->a()Lo/zN;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zN;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 664
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->f:Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n:Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final y()Lo/CT;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->l:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CT;

    return-object v0
.end method


# virtual methods
.method public final b(Lo/Dk;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->i:Lo/Dk;

    return-void
.end method

.method public d(Lo/Build;)V
    .locals 3

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    instance-of v0, p1, Lo/Build$DatabaseErrorHandler;

    if-nez v0, :cond_0

    .line 762
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 813
    const-class v0, Lo/MO;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MO;

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/Build;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/MO;->c(Ljava/lang/String;)V

    .line 764
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lo/Build;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Z
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->i:Lo/Dk;

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Lo/Dk;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    invoke-virtual {v0}, Lo/Dk;->dismiss()V

    const/4 v0, 0x1

    return v0

    .line 790
    :cond_0
    invoke-super {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->g()Z

    move-result v0

    return v0
.end method

.method public final k()Lo/UpdateEngine;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d:Lo/UpdateEngine;

    return-object v0
.end method

.method public final p()Lo/Mh;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->j:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Mh;

    return-object v0
.end method

.method public final q()Lo/MR;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->g:Lo/MR;

    return-object v0
.end method

.method public final r()Lo/Bc;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->g:Lo/MR;

    invoke-virtual {v0}, Lo/MR;->d()Lo/Bc;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Lo/Da;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->h:Lo/Da;

    return-object v0
.end method

.method public final v()V
    .locals 15

    .line 772
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "controllerView.context"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 777
    sget-object v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->g:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xf78

    const/4 v14, 0x0

    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_STOP"

    move-object v0, p0

    .line 773
    invoke-static/range {v0 .. v14}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
