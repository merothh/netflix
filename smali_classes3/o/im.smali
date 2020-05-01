.class public Lo/im;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bY;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/im;->a:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lo/im;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lo/im;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lo/im;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lio/reactivex/ObservableEmitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lo/im;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableEmitter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic c(Lo/im;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lo/im;->e(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method static synthetic d(Lo/im;Ljava/lang/String;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lo/im;->b(Ljava/lang/String;)Lio/reactivex/ObservableEmitter;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 10

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 84
    new-instance v0, Lo/im$2;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    move-object v3, v0

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lo/im$2;-><init>(Lo/im;JJLjava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lo/im$2;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private e(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lo/im;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lo/bY$TaskDescription;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bY$TaskDescription;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lo/im$1;

    invoke-direct {v0, p0, p1}, Lo/im$1;-><init>(Lo/im;Lo/bY$TaskDescription;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Ljava/util/Collection;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p1, Lo/im$5;

    invoke-direct {p1, p0}, Lo/im$5;-><init>(Lo/im;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/bY$ActionBar;Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public d(Lo/bY$TaskDescription;)V
    .locals 0

    return-void
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
