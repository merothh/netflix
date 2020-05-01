.class public Lo/AdapterViewAnimator;
.super Lo/AnalogClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/AnalogClock<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/WebViewFactoryProvider;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lo/AnalogClock;-><init>()V

    .line 14
    invoke-virtual {p1}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AdapterViewAnimator;->b:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lo/AdapterViewAnimator;->b:Ljava/lang/String;

    iput-object v0, p0, Lo/AdapterViewAnimator;->d:Ljava/lang/String;

    const-string v0, ""

    .line 16
    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lo/AdapterViewAnimator;->a:Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {p1}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AdapterViewAnimator;->i:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lo/WebViewFactoryProvider;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AdapterViewAnimator;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 2

    .line 18
    iget-boolean v0, p0, Lo/AdapterViewAnimator;->e:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lo/AdapterViewAnimator;->a:Ljava/lang/CharSequence;

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call validate and get true before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "TT;>;)",
            "Lio/reactivex/Single<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "shareable"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lo/AdapterViewAnimator$ActionBar;

    invoke-direct {p1, p0, p2}, Lo/AdapterViewAnimator$ActionBar;-><init>(Lo/AdapterViewAnimator;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-static {p1}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.fromCallable {\n  \u2026\"\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/AdapterViewAnimator;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/pm/PackageManager;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/content/pm/PackageInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "pm"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "installedPackages"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lo/AdapterViewAnimator;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1

    .line 28
    sget-object p1, Lo/AbsSeekBar;->b:Lo/AbsSeekBar$StateListAnimator;

    invoke-virtual {p1}, Lo/AbsSeekBar$StateListAnimator;->c()Lo/AbsSeekBar;

    move-result-object p1

    iget-object p2, p0, Lo/AdapterViewAnimator;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/AbsSeekBar;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 30
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/AdapterViewAnimator;->c(Ljava/lang/CharSequence;)V

    .line 31
    sget-object p1, Lo/AbsSeekBar;->b:Lo/AbsSeekBar$StateListAnimator;

    invoke-virtual {p1}, Lo/AbsSeekBar$StateListAnimator;->c()Lo/AbsSeekBar;

    move-result-object p1

    iget-object p2, p0, Lo/AdapterViewAnimator;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/AbsSeekBar;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AdapterViewAnimator;->c(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lo/AdapterViewAnimator;->e:Z

    return p1

    .line 30
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/AdapterViewAnimator;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lo/AdapterViewAnimator;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/AdapterViewAnimator;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/AdapterViewAnimator;->b:Ljava/lang/String;

    return-object v0
.end method
