.class public final Lo/UQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UQ$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/UQ$ActionBar;


# instance fields
.field private final a:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/UI;

.field private final c:Lo/UM;

.field private d:Ljava/lang/Long;

.field private final h:Lo/UK;

.field private final i:Landroid/view/View;

.field private final j:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/UQ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/UQ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/UQ;->e:Lo/UQ$ActionBar;

    return-void
.end method

.method public constructor <init>(Lo/UI;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UI;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lo/UK;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    const-string v0, "iPlayerFragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerRepository"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/UQ;->b:Lo/UI;

    iput-object p2, p0, Lo/UQ;->a:Lio/reactivex/Observable;

    iput-object p3, p0, Lo/UQ;->h:Lo/UK;

    iput-object p4, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    iput-object p5, p0, Lo/UQ;->i:Landroid/view/View;

    .line 69
    invoke-direct {p0}, Lo/UQ;->c()Lo/UM;

    move-result-object p1

    iput-object p1, p0, Lo/UQ;->c:Lo/UM;

    .line 118
    iget-object p1, p0, Lo/UQ;->i:Landroid/view/View;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lo/UQ;->b:Lo/UI;

    iget-object p2, p0, Lo/UQ;->c:Lo/UM;

    invoke-virtual {p2}, Lo/UM;->b()Lio/reactivex/subjects/Subject;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/UI;->e(Lio/reactivex/subjects/Subject;)V

    .line 126
    iget-object p1, p0, Lo/UQ;->c:Lo/UM;

    invoke-virtual {p1}, Lo/UM;->d()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/subjects/PublishSubject;->merge(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 127
    new-instance p2, Lo/UQ$PendingIntent;

    invoke-direct {p2, p0}, Lo/UQ$PendingIntent;-><init>(Lo/UQ;)V

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p6}, Lo/UQ;->c(Z)V

    const-string p2, "playerUIEventsObservable"

    .line 134
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/UQ;->e(Lio/reactivex/Observable;)V

    .line 136
    invoke-direct {p0, p1}, Lo/UQ;->d(Lio/reactivex/Observable;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Player main container is not a View Group!"

    .line 139
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic b(Lo/UQ;)Ljava/lang/Long;
    .locals 0

    .line 59
    iget-object p0, p0, Lo/UQ;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic c(Lo/UQ;)Lo/UI;
    .locals 0

    .line 59
    iget-object p0, p0, Lo/UQ;->b:Lo/UI;

    return-object p0
.end method

.method private final c()Lo/UM;
    .locals 8

    .line 79
    iget-object v0, p0, Lo/UQ;->b:Lo/UI;

    invoke-interface {v0}, Lo/UI;->ay()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lo/UJ;

    .line 81
    iget-object v2, p0, Lo/UQ;->i:Landroid/view/View;

    if-eqz v2, :cond_0

    check-cast v2, Lo/MenuInflater;

    iget-object v1, p0, Lo/UQ;->a:Lio/reactivex/Observable;

    .line 82
    iget-object v3, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    .line 83
    iget-object v4, p0, Lo/UQ;->h:Lo/UK;

    .line 80
    invoke-direct {v0, v2, v1, v3, v4}, Lo/UJ;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;)V

    check-cast v0, Lo/UM;

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iget-object v0, p0, Lo/UQ;->b:Lo/UI;

    invoke-interface {v0}, Lo/UI;->au()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    new-instance v0, Lo/UT;

    .line 87
    iget-object v2, p0, Lo/UQ;->i:Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast v2, Lo/MenuInflater;

    iget-object v1, p0, Lo/UQ;->a:Lio/reactivex/Observable;

    .line 88
    iget-object v3, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    .line 86
    invoke-direct {v0, v2, v1, v3}, Lo/UT;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    check-cast v0, Lo/UM;

    return-object v0

    .line 87
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    iget-object v0, p0, Lo/UQ;->b:Lo/UI;

    invoke-interface {v0}, Lo/UI;->J()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 92
    :goto_0
    sget-object v2, Lo/es;->b:Lo/es$Application;

    invoke-virtual {v2}, Lo/es$Application;->e()Z

    move-result v2

    if-eqz v0, :cond_6

    .line 95
    new-instance v0, Lo/UO;

    .line 96
    iget-object v2, p0, Lo/UQ;->i:Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v2, Lo/MenuInflater;

    iget-object v1, p0, Lo/UQ;->a:Lio/reactivex/Observable;

    .line 97
    iget-object v3, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    .line 98
    iget-object v4, p0, Lo/UQ;->h:Lo/UK;

    .line 95
    invoke-direct {v0, v2, v1, v3, v4}, Lo/UO;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;)V

    check-cast v0, Lo/UM;

    return-object v0

    .line 96
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v2, :cond_8

    .line 101
    new-instance v0, Lo/UV;

    .line 102
    iget-object v2, p0, Lo/UQ;->i:Landroid/view/View;

    if-eqz v2, :cond_7

    check-cast v2, Lo/MenuInflater;

    iget-object v1, p0, Lo/UQ;->a:Lio/reactivex/Observable;

    .line 103
    iget-object v3, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    .line 104
    iget-object v4, p0, Lo/UQ;->h:Lo/UK;

    .line 101
    invoke-direct {v0, v2, v1, v3, v4}, Lo/UV;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;)V

    check-cast v0, Lo/UM;

    return-object v0

    .line 102
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_8
    new-instance v0, Lo/UN;

    .line 108
    iget-object v2, p0, Lo/UQ;->i:Landroid/view/View;

    if-eqz v2, :cond_9

    move-object v3, v2

    check-cast v3, Lo/MenuInflater;

    iget-object v4, p0, Lo/UQ;->a:Lio/reactivex/Observable;

    .line 109
    iget-object v5, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    .line 110
    iget-object v6, p0, Lo/UQ;->h:Lo/UK;

    const/4 v7, 0x0

    move-object v2, v0

    .line 107
    invoke-direct/range {v2 .. v7}, Lo/UN;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;Z)V

    check-cast v0, Lo/UM;

    return-object v0

    .line 108
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final d(Lio/reactivex/Observable;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 186
    new-instance v0, Lo/UQ$Activity;

    invoke-direct {v0, p0}, Lo/UQ$Activity;-><init>(Lo/UQ;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic d(Lo/UQ;Ljava/lang/Long;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lo/UQ;->d:Ljava/lang/Long;

    return-void
.end method

.method private final e(Lio/reactivex/Observable;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 170
    sget-object v0, Lo/UQ$TaskDescription;->d:Lo/UQ$TaskDescription;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 175
    new-instance v0, Lo/UQ$StateListAnimator;

    invoke-direct {v0, p0}, Lo/UQ$StateListAnimator;-><init>(Lo/UQ;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lo/UQ;->b:Lo/UI;

    .line 146
    new-instance v1, Lo/UP$SharedElementCallback;

    invoke-direct {v1, p1, p1}, Lo/UP$SharedElementCallback;-><init>(ZZ)V

    check-cast v1, Lo/UP;

    .line 145
    invoke-interface {v0, v1}, Lo/UI;->c(Lo/UP;)V

    .line 149
    iget-object p1, p0, Lo/UQ;->i:Landroid/view/View;

    .line 1008
    invoke-static {p1}, Lo/SSLCertificateSocketFactory;->c(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "RxView.systemUiVisibilityChanges(this)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lo/UQ;->j:Lio/reactivex/Observable;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 152
    new-instance v0, Lo/UQ$Application;

    invoke-direct {v0, p0}, Lo/UQ$Application;-><init>(Lo/UQ;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 159
    iget-object p1, p0, Lo/UQ;->i:Landroid/view/View;

    new-instance v0, Lo/UQ$LoaderManager;

    invoke-direct {v0, p0}, Lo/UQ$LoaderManager;-><init>(Lo/UQ;)V

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
