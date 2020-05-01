.class public abstract Lo/SynchronousResultReceiver;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SynchronousResultReceiver$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/WebChromeClient;"
    }
.end annotation


# static fields
.field public static final c:Lo/SynchronousResultReceiver$Activity;


# instance fields
.field private final A:Landroid/view/ViewGroup$LayoutParams;

.field private B:Ljava/util/HashMap;

.field private final C:Ljava/lang/Integer;

.field private b:Z

.field private d:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private e:Lio/reactivex/disposables/Disposable;

.field private f:Lio/reactivex/disposables/Disposable;

.field private h:Lio/reactivex/disposables/Disposable;

.field private final j:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation
.end field

.field private k:Landroidx/recyclerview/widget/RecyclerView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageButton;

.field private n:Lcom/netflix/android/widgetry/widget/menu/MenuController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
            "TT;>;"
        }
    .end annotation
.end field

.field private o:Landroid/view/ViewGroup;

.field private final p:Ljava/lang/Runnable;

.field private q:Landroid/widget/ProgressBar;

.field private final r:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lo/HorizontalScrollView;

.field private final t:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/Runnable;

.field private final v:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final w:Z

.field private final x:J

.field private final y:Ljava/lang/Runnable;

.field private final z:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SynchronousResultReceiver$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SynchronousResultReceiver$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/SynchronousResultReceiver;->c:Lo/SynchronousResultReceiver$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lo/SynchronousResultReceiver;-><init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    iput-wide p1, p0, Lo/SynchronousResultReceiver;->x:J

    iput-boolean p3, p0, Lo/SynchronousResultReceiver;->w:Z

    iput-object p4, p0, Lo/SynchronousResultReceiver;->A:Landroid/view/ViewGroup$LayoutParams;

    iput-object p5, p0, Lo/SynchronousResultReceiver;->C:Ljava/lang/Integer;

    iput-object p6, p0, Lo/SynchronousResultReceiver;->z:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lo/SynchronousResultReceiver;->b:Z

    .line 64
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<T>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/SynchronousResultReceiver;->j:Lio/reactivex/subjects/PublishSubject;

    .line 75
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Unit>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/SynchronousResultReceiver;->t:Lio/reactivex/subjects/PublishSubject;

    .line 76
    iget-object p1, p0, Lo/SynchronousResultReceiver;->t:Lio/reactivex/subjects/PublishSubject;

    if-eqz p1, :cond_1

    check-cast p1, Lio/reactivex/Observable;

    iput-object p1, p0, Lo/SynchronousResultReceiver;->r:Lio/reactivex/Observable;

    .line 77
    new-instance p1, Lo/SynchronousResultReceiver$Fragment;

    invoke-direct {p1, p0}, Lo/SynchronousResultReceiver$Fragment;-><init>(Lo/SynchronousResultReceiver;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/SynchronousResultReceiver;->p:Ljava/lang/Runnable;

    .line 79
    iget-object p1, p0, Lo/SynchronousResultReceiver;->j:Lio/reactivex/subjects/PublishSubject;

    if-eqz p1, :cond_0

    check-cast p1, Lio/reactivex/Observable;

    iput-object p1, p0, Lo/SynchronousResultReceiver;->v:Lio/reactivex/Observable;

    .line 81
    new-instance p1, Lo/SynchronousResultReceiver$FragmentManager;

    invoke-direct {p1, p0}, Lo/SynchronousResultReceiver$FragmentManager;-><init>(Lo/SynchronousResultReceiver;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/SynchronousResultReceiver;->u:Ljava/lang/Runnable;

    .line 87
    new-instance p1, Lo/SynchronousResultReceiver$StateListAnimator;

    invoke-direct {p1, p0}, Lo/SynchronousResultReceiver$StateListAnimator;-><init>(Lo/SynchronousResultReceiver;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/SynchronousResultReceiver;->y:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 90
    sget p2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->D:I

    invoke-virtual {p0, p1, p2}, Lo/SynchronousResultReceiver;->setStyle(II)V

    .line 93
    new-instance p1, Lo/SeekableByteChannel;

    invoke-direct {p1}, Lo/SeekableByteChannel;-><init>()V

    const/16 p2, 0x50

    .line 94
    invoke-virtual {p1, p2}, Lo/SeekableByteChannel;->e(I)V

    .line 95
    iget-wide p2, p0, Lo/SynchronousResultReceiver;->x:J

    invoke-virtual {p1, p2, p3}, Lo/SeekableByteChannel;->setDuration(J)Lo/CharsetDecoder;

    .line 97
    invoke-virtual {p0, p1}, Lo/SynchronousResultReceiver;->setEnterTransition(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, p1}, Lo/SynchronousResultReceiver;->setExitTransition(Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type io.reactivex.Observable<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type io.reactivex.Observable<kotlin.Unit>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;ILo/amc;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-wide/16 p1, 0x190

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p1, p7, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 43
    move-object p4, p2

    check-cast p4, Landroid/view/ViewGroup$LayoutParams;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 44
    move-object p5, p2

    check-cast p5, Ljava/lang/Integer;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    .line 45
    move-object p6, p2

    check-cast p6, Ljava/lang/Integer;

    :cond_4
    move-object v6, p6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lo/SynchronousResultReceiver;-><init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic a(Lo/SynchronousResultReceiver;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->k:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string v0, "recyclerView"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lo/SynchronousResultReceiver;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->t:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic b(Lo/SynchronousResultReceiver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/SynchronousResultReceiver;->e:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lo/SynchronousResultReceiver;)Ljava/lang/Integer;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->C:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic d(Lo/SynchronousResultReceiver;)Landroid/widget/ImageButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->m:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static final synthetic d(Lo/SynchronousResultReceiver;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/SynchronousResultReceiver;->q:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static final synthetic d(Lo/SynchronousResultReceiver;Lcom/netflix/android/widgetry/widget/menu/MenuController;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/SynchronousResultReceiver;->n:Lcom/netflix/android/widgetry/widget/menu/MenuController;

    return-void
.end method

.method public static final synthetic e(Lo/SynchronousResultReceiver;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->A:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method public static final synthetic e(Lo/SynchronousResultReceiver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/SynchronousResultReceiver;->h:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic f(Lo/SynchronousResultReceiver;)Lo/HorizontalScrollView;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->s:Lo/HorizontalScrollView;

    return-object p0
.end method

.method public static final synthetic g(Lo/SynchronousResultReceiver;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->l:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic h(Lo/SynchronousResultReceiver;)Landroid/widget/ProgressBar;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->q:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static final synthetic i(Lo/SynchronousResultReceiver;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lo/SynchronousResultReceiver;->b:Z

    return p0
.end method

.method public static final synthetic j(Lo/SynchronousResultReceiver;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/SynchronousResultReceiver;->j:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private final p()V
    .locals 8

    .line 184
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->j()V

    .line 190
    iget-object v0, p0, Lo/SynchronousResultReceiver;->y:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2ee

    invoke-static {v0, v1, v2}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    .line 191
    iget-object v0, p0, Lo/SynchronousResultReceiver;->p:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    .line 197
    iget-object v0, p0, Lo/SynchronousResultReceiver;->d:Lio/reactivex/Observable;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1

    .line 194
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;-><init>(Lo/SynchronousResultReceiver;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 226
    new-instance v0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$2;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$2;-><init>(Lo/SynchronousResultReceiver;)V

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 197
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/SynchronousResultReceiver;->f:Lio/reactivex/disposables/Disposable;

    .line 236
    iget-object v0, p0, Lo/SynchronousResultReceiver;->o:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const-string v1, "baseViewGroup"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lo/SynchronousResultReceiver$TaskDescription;

    invoke-direct {v1, p0}, Lo/SynchronousResultReceiver$TaskDescription;-><init>(Lo/SynchronousResultReceiver;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/SynchronousResultReceiver;->r:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final b()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 3

    .line 242
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->getActivity()Lo/Serializable;

    move-result-object v0

    .line 243
    instance-of v1, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_0

    .line 244
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    goto :goto_1

    .line 246
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MenuDialogFragment - activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->getActivity()Lo/Serializable;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "null"

    goto :goto_0

    :cond_1
    const-string v2, "not NetflixActivity"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->dismiss()V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 130
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cE:I

    return v0
.end method

.method public final c(Lio/reactivex/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lo/SynchronousResultReceiver;->d:Lio/reactivex/Observable;

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 320
    iget-object v0, p0, Lo/SynchronousResultReceiver;->s:Lo/HorizontalScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public d(Lio/reactivex/Observable;Lio/reactivex/subjects/PublishSubject;Z)Lio/reactivex/disposables/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;Z)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "controllerItemClicks"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClickItemsSubject"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    .line 291
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 292
    new-instance v0, Lo/SynchronousResultReceiver$Application;

    invoke-direct {v0, p0, p2, p3}, Lo/SynchronousResultReceiver$Application;-><init>(Lo/SynchronousResultReceiver;Lio/reactivex/subjects/PublishSubject;Z)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    .line 268
    iget-object v0, p0, Lo/SynchronousResultReceiver;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 269
    :cond_0
    iget-object v0, p0, Lo/SynchronousResultReceiver;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 270
    :cond_1
    iget-object v0, p0, Lo/SynchronousResultReceiver;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method public abstract d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V
.end method

.method public dismiss()V
    .locals 0

    .line 262
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->dismissAllowingStateLoss()V

    return-void
.end method

.method public final e()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lo/SynchronousResultReceiver;->v:Lio/reactivex/Observable;

    return-object v0
.end method

.method protected f()V
    .locals 2

    .line 274
    iget-object v0, p0, Lo/SynchronousResultReceiver;->o:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v1, "baseViewGroup"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lo/SynchronousResultReceiver$ActionBar;

    invoke-direct {v1, p0}, Lo/SynchronousResultReceiver$ActionBar;-><init>(Lo/SynchronousResultReceiver;)V

    check-cast v1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 306
    iget-object v0, p0, Lo/SynchronousResultReceiver;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    .line 307
    iget-object v0, p0, Lo/SynchronousResultReceiver;->q:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected h()V
    .locals 0

    .line 316
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->dismiss()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lo/SynchronousResultReceiver;->B:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected final j()V
    .locals 3

    .line 302
    iget-object v0, p0, Lo/SynchronousResultReceiver;->u:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2ee

    invoke-static {v0, v1, v2}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->getActivity()Lo/Serializable;

    move-result-object p1

    instance-of p1, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 107
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "ShareDialogFragment - arguments null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->dismiss()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "DismissOnSelection"

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/SynchronousResultReceiver;->b:Z

    .line 112
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, v0, p1}, Lo/SynchronousResultReceiver;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.activity.NetflixActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MenuDialogFragment - activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->getActivity()Lo/Serializable;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "null"

    goto :goto_0

    :cond_3
    const-string v1, "not NetflixActivity"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->dismiss()V

    :goto_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 163
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->requireActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->D:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 164
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "window"

    .line 165
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->d:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 167
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "window.decorView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 169
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    or-int/lit16 v1, v1, 0x210

    goto :goto_0

    :cond_0
    or-int/lit16 v1, v1, 0x200

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x400

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->c()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 139
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->I:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById(R.id.base_view_group)"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/SynchronousResultReceiver;->o:Landroid/view/ViewGroup;

    .line 140
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->kt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById(R.id.menu_recyclerview)"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/SynchronousResultReceiver;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->f()V

    .line 144
    iget-boolean p2, p0, Lo/SynchronousResultReceiver;->w:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 145
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->cA:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    instance-of v0, p2, Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    move-object p2, p3

    :cond_1
    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lo/SynchronousResultReceiver;->m:Landroid/widget/ImageButton;

    .line 146
    iget-object p2, p0, Lo/SynchronousResultReceiver;->m:Landroid/widget/ImageButton;

    if-eqz p2, :cond_2

    new-instance v0, Lo/SynchronousResultReceiver$Dialog;

    invoke-direct {v0, p0}, Lo/SynchronousResultReceiver$Dialog;-><init>(Lo/SynchronousResultReceiver;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_2
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->aP:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, p3

    :goto_1
    iput-object p2, p0, Lo/SynchronousResultReceiver;->l:Landroid/view/View;

    .line 150
    :cond_4
    iget-object p2, p0, Lo/SynchronousResultReceiver;->z:Ljava/lang/Integer;

    if-eqz p2, :cond_6

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 151
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const-string v1, "primaryCtaButtonStub"

    .line 152
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Lo/HorizontalScrollView;

    if-nez v0, :cond_5

    move-object p2, p3

    :cond_5
    check-cast p2, Lo/HorizontalScrollView;

    iput-object p2, p0, Lo/SynchronousResultReceiver;->s:Lo/HorizontalScrollView;

    .line 154
    iget-object p2, p0, Lo/SynchronousResultReceiver;->s:Lo/HorizontalScrollView;

    if-eqz p2, :cond_6

    new-instance p3, Lo/SynchronousResultReceiver$LoaderManager;

    invoke-direct {p3, p0, p1}, Lo/SynchronousResultReceiver$LoaderManager;-><init>(Lo/SynchronousResultReceiver;Landroid/view/View;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_6
    invoke-direct {p0}, Lo/SynchronousResultReceiver;->p()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 255
    invoke-super {p0}, Lo/WebChromeClient;->onDestroyView()V

    .line 257
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->d()V

    .line 258
    invoke-virtual {p0}, Lo/SynchronousResultReceiver;->i()V

    return-void
.end method
