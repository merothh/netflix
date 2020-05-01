.class public final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;
.super Lcom/netflix/mediaclient/common/ui/LifecycleController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;,
        Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/common/ui/LifecycleController<",
        "Lo/HY;",
        ">;"
    }
.end annotation


# static fields
.field private static final L:[I

.field private static final M:J

.field private static final O:[I

.field private static final P:[I

.field static final synthetic b:[Lo/amT;

.field public static final c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;


# instance fields
.field private final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private final D:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:I

.field private final G:Lo/aka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/aka<",
            "Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:Z

.field private final J:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Landroid/view/View;

.field private final N:Lo/aka;

.field private final a:Lo/ams;

.field private final d:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/animation/ValueAnimator;

.field private final g:Landroid/view/View;

.field private h:[I

.field private final i:Lo/ListAdapter;

.field private final j:Lo/Lw;

.field private k:Z

.field private final l:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private final n:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {v3}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "audioToggle"

    const-string v5, "getAudioToggle()Landroid/widget/ToggleButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->b:[Lo/amT;

    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;-><init>(Lo/amc;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;

    .line 60
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->M:J

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    .line 63
    sget v4, Lo/GS$Dialog;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    sget v4, Lo/GS$Dialog;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    sget v4, Lo/GS$Dialog;->C:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    sget v4, Lo/GS$Dialog;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v2, v6

    sget v4, Lo/GS$Dialog;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    .line 64
    invoke-static {v2}, Lo/ako;->d([Ljava/lang/Integer;)[I

    move-result-object v2

    sput-object v2, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->L:[I

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Integer;

    .line 67
    sget v4, Lo/GS$Dialog;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 68
    sget v4, Lo/GS$Dialog;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    .line 69
    sget v4, Lo/GS$Dialog;->C:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 70
    sget v4, Lo/GS$Dialog;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    .line 71
    sget v4, Lo/GS$Dialog;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    .line 72
    sget v4, Lo/GS$Dialog;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 73
    sget v4, Lo/GS$Dialog;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x6

    aput-object v4, v2, v8

    .line 74
    sget v4, Lo/GS$Dialog;->s:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x7

    aput-object v4, v2, v9

    .line 75
    sget v4, Lo/GS$Dialog;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v10, 0x8

    aput-object v4, v2, v10

    .line 76
    invoke-static {v2}, Lo/ako;->d([Ljava/lang/Integer;)[I

    move-result-object v2

    sput-object v2, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->O:[I

    new-array v2, v10, [Ljava/lang/Integer;

    .line 79
    sget v4, Lo/GS$Dialog;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 80
    sget v3, Lo/GS$Dialog;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 81
    sget v0, Lo/GS$Dialog;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 82
    sget v0, Lo/GS$Dialog;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    .line 83
    sget v0, Lo/GS$Dialog;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    .line 84
    sget v0, Lo/GS$Dialog;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 85
    sget v0, Lo/GS$Dialog;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    .line 86
    sget v0, Lo/GS$Dialog;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 87
    invoke-static {v2}, Lo/ako;->d([Ljava/lang/Integer;)[I

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->P:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/alA;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/common/ui/LifecycleController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->J:Lo/alA;

    .line 90
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Unit>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d:Lio/reactivex/subjects/PublishSubject;

    .line 92
    sget p1, Lo/GS$Dialog;->a:I

    invoke-static {p0, p1}, Lo/NfcV;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a:Lo/ams;

    .line 93
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    sget v0, Lo/GS$Dialog;->u:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->g:Landroid/view/View;

    .line 95
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    sget v0, Lo/GS$Dialog;->t:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ListAdapter;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i:Lo/ListAdapter;

    .line 97
    new-instance p1, Lo/Lw;

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/GS$TaskDescription;->c:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lo/GS$TaskDescription;->d:I

    invoke-static {v0, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    .line 97
    invoke-direct/range {v0 .. v5}, Lo/Lw;-><init>(IIFILo/amc;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->j:Lo/Lw;

    .line 102
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->L:[I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->h:[I

    .line 107
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 109
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 110
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$TaskDescription;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    move-object v0, p1

    check-cast v0, Landroid/animation/Animator;

    .line 615
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    .line 621
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f:Landroid/animation/ValueAnimator;

    .line 138
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->l:Lio/reactivex/subjects/PublishSubject;

    .line 139
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->l:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->n:Lio/reactivex/Observable;

    .line 141
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o:Lio/reactivex/subjects/PublishSubject;

    .line 142
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->q:Lio/reactivex/Observable;

    .line 144
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p:Lio/reactivex/subjects/PublishSubject;

    .line 145
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s:Lio/reactivex/Observable;

    .line 147
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Long>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->t:Lio/reactivex/subjects/PublishSubject;

    .line 148
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->t:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->r:Lio/reactivex/Observable;

    .line 150
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->w:Lio/reactivex/subjects/PublishSubject;

    .line 151
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->w:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->y:Lio/reactivex/Observable;

    .line 153
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->x:Lio/reactivex/subjects/PublishSubject;

    .line 154
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->x:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->v:Lio/reactivex/Observable;

    .line 156
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Boolean>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->u:Lio/reactivex/subjects/PublishSubject;

    .line 157
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->u:Lio/reactivex/subjects/PublishSubject;

    check-cast p1, Lio/reactivex/Observable;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->D:Lio/reactivex/Observable;

    .line 159
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->A:Ljava/util/Map;

    .line 161
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->z:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;

    .line 173
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Fragment;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Fragment;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->B:Landroid/view/View$OnClickListener;

    .line 176
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Application;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Application;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->C:Landroid/view/View$OnClickListener;

    const/16 p1, 0x8

    .line 178
    iput p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    .line 192
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$lazyControlsDelegate$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$lazyControlsDelegate$1;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    check-cast p2, Lo/alB;

    invoke-static {p1, p2}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->G:Lo/aka;

    .line 197
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->G:Lo/aka;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->N:Lo/aka;

    .line 307
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->l()Lio/reactivex/Observable;

    move-result-object v0

    .line 309
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->J:Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 308
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 333
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->m()Lio/reactivex/Observable;

    move-result-object v6

    .line 334
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;

    move-object v9, p1

    check-cast v9, Lo/alA;

    .line 337
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->J:Lo/alA;

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 333
    invoke-static/range {v6 .. v11}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 340
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d:Lio/reactivex/subjects/PublishSubject;

    .line 341
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 342
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1, p2}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 343
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "hideAfterDelay\n         \u2026dSchedulers.mainThread())"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$3;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 348
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->J:Lo/alA;

    .line 344
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object v6

    .line 352
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$4;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    move-object v9, p1

    check-cast v9, Lo/alA;

    .line 353
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->J:Lo/alA;

    .line 351
    invoke-static/range {v6 .. v11}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 356
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->g:Landroid/view/View;

    const-string p2, "progressLineView"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->j:Lo/Lw;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->b(II)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->z:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;

    return-object p0
.end method

.method private final b(II)V
    .locals 2

    .line 430
    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->E:I

    if-eq p2, v0, :cond_0

    .line 431
    iput p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->E:I

    .line 434
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->j:Lo/Lw;

    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->E:I

    if-lez v0, :cond_1

    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, p1

    mul-float v1, v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lo/Lw;->c(F)V

    .line 439
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->x()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 441
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object p2

    const-string v0, "lazyControls.time"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "lazyControls.scrubber"

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object p2

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 442
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object p2

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 444
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    iget p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->E:I

    if-eq p1, p2, :cond_4

    .line 445
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->E:I

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_4
    return-void
.end method

.method private final c(I)Landroid/view/View;
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->A:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 507
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->A:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->t:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->m:Z

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 376
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(ZZZZ)V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->C:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->k:Z

    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 450
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(ZZZ)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->B:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic f(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->w:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic g(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lo/alA;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->J:Lo/alA;

    return-object p0
.end method

.method public static final synthetic h(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->I:Z

    return p0
.end method

.method public static final synthetic i(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic j(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->x:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic k(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic l(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->r()V

    return-void
.end method

.method public static final synthetic m(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lo/ListAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i:Lo/ListAdapter;

    return-object p0
.end method

.method public static final synthetic n(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/widget/ToggleButton;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p()Landroid/widget/ToggleButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method private final p()Landroid/widget/ToggleButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public static final synthetic p(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/Observable;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->m()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->l:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic r(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private final r()V
    .locals 8

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->h:[I

    .line 582
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget v5, v1, v4

    .line 122
    invoke-direct {p0, v5}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 123
    :cond_0
    invoke-direct {p0, v5}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    int-to-float v6, v3

    const/4 v7, 0x1

    cmpl-float v6, v0, v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p()Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, -0x1

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->d()Lo/GridLayout;

    move-result-object v0

    const-string v3, "lazyControls.fullscreen"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/GridLayout;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p()Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "audioToggle.layoutParams"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTranslationY(F)V

    return-void

    .line 119
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->N:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    return-object v0
.end method

.method public static final synthetic t()J
    .locals 2

    .line 51
    sget-wide v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->M:J

    return-wide v0
.end method

.method public static final synthetic t(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->u:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private final x()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->G:Lo/aka;

    invoke-interface {v0}, Lo/aka;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s:Lio/reactivex/Observable;

    const-string v1, "playAnimatedButtonClicks"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->K:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/GS$TaskDescription;->c:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->j:Lo/Lw;

    invoke-virtual {v0, p1}, Lo/Lw;->a(I)V

    const/16 v0, 0x45

    .line 569
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->j:Lo/Lw;

    .line 572
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 573
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 574
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 570
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 569
    invoke-virtual {v1, v0}, Lo/Lw;->d(I)V

    .line 577
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object v0

    const-string v1, "lazyControls.scrubber"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 578
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 291
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p()Landroid/widget/ToggleButton;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public final a(ZZZ)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 453
    :goto_0
    iput v2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    .line 458
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 459
    iget v2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    if-nez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p3, :cond_4

    .line 461
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    .line 462
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v1

    aput v2, v3, v4

    .line 461
    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 465
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 462
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_4
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput v2, v3, v1

    aput v2, v3, v4

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 468
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 471
    :goto_2
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->u:Lio/reactivex/subjects/PublishSubject;

    iget v2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 474
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->g:Landroid/view/View;

    const-string v2, "progressLineView"

    invoke-static {p3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->H:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->m:Z

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    .line 584
    :goto_5
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(ZZZZ)V
    .locals 11

    .line 378
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->H:Z

    .line 380
    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    .line 382
    invoke-static/range {v5 .. v10}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZILjava/lang/Object;)V

    const-string v0, "lazyControls.playPause"

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 385
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->O:[I

    goto :goto_1

    .line 386
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->P:[I

    .line 385
    :goto_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->h:[I

    if-nez p4, :cond_5

    .line 388
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a(Z)V

    .line 391
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c()Lo/MediaControlView2;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/MediaControlView2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lo/GS$ActionBar;->e:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 392
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c()Lo/MediaControlView2;

    move-result-object p3

    invoke-virtual {p3, p1, p1, p1, p1}, Lo/MediaControlView2;->setPadding(IIII)V

    goto :goto_2

    .line 401
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->L:[I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->h:[I

    if-nez p4, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a(Z)V

    .line 405
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c()Lo/MediaControlView2;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/MediaControlView2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lo/GS$ActionBar;->a:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 406
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c()Lo/MediaControlView2;

    move-result-object p4

    invoke-virtual {p4, p1, p1, p1, p1}, Lo/MediaControlView2;->setPadding(IIII)V

    :cond_3
    if-eqz p3, :cond_4

    .line 410
    sget p1, Lo/GS$Dialog;->x:I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :cond_4
    sget p1, Lo/GS$Dialog;->s:I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 415
    invoke-static/range {v3 .. v8}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZILjava/lang/Object;)V

    .line 416
    iget p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    if-nez p1, :cond_6

    .line 417
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i()V

    :cond_6
    if-eqz p2, :cond_7

    .line 421
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i:Lo/ListAdapter;

    invoke-virtual {p1, v2}, Lo/ListAdapter;->setState(I)V

    :cond_7
    return-void
.end method

.method public final b()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->q:Lio/reactivex/Observable;

    .line 365
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$FragmentManager;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$FragmentManager;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "lazyPlayPauseClicks\n    \u2026 hideChromeAfterDelay() }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Z)V
    .locals 10

    .line 541
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 542
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->I:Z

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 544
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i:Lo/ListAdapter;

    invoke-virtual {v3, v2}, Lo/ListAdapter;->setState(I)V

    .line 545
    iget v3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    if-nez v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZILjava/lang/Object;)V

    .line 546
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p()Landroid/widget/ToggleButton;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->k:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 606
    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 548
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p()Landroid/widget/ToggleButton;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 608
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 550
    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c()Lo/MediaControlView2;

    move-result-object v0

    invoke-virtual {v0}, Lo/MediaControlView2;->g()I

    move-result v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 555
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c()Lo/MediaControlView2;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/MediaControlView2;->setState(I)V

    goto :goto_3

    :cond_3
    if-nez p1, :cond_4

    if-eq v0, v1, :cond_4

    .line 557
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c()Lo/MediaControlView2;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/MediaControlView2;->setState(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final c()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->D:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final d(Lo/HZ;)I
    .locals 2

    const-string v0, "video"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p1}, Lo/HZ;->d()I

    move-result p1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->s()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object v0

    const-string v1, "lazyControls.scrubber"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->n:Lio/reactivex/Observable;

    const-string v1, "lazyFullscreenClicks"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Z)V
    .locals 1

    .line 519
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;

    check-cast v0, Lo/MessagePdu;

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i:Lo/ListAdapter;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lo/ListAdapter;->setState(I)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i:Lo/ListAdapter;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lo/ListAdapter;->setState(I)V

    :goto_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, v0, v0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(ZZZ)V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->H:Z

    return v0
.end method

.method public final f()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->r:Lio/reactivex/Observable;

    const-string v1, "seekStarts"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->v:Lio/reactivex/Observable;

    const-string v1, "seekings"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 478
    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->F:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->G:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    .line 483
    :cond_0
    invoke-virtual {p0, v1, v1, v1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(ZZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0, v1, v1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final j()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->y:Lio/reactivex/Observable;

    const-string v1, "seekEnds"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 530
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i:Lo/ListAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/ListAdapter;->setState(I)V

    return-void
.end method

.method public final q()V
    .locals 2

    .line 535
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i:Lo/ListAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/ListAdapter;->setState(I)V

    return-void
.end method
