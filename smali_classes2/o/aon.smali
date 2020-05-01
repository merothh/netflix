.class public abstract Lo/aon;
.super Lo/alc;
.source ""

# interfaces
.implements Lo/ald;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aon$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/aon$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aon$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aon$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/aon;->d:Lo/aon$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lo/ald;->a:Lo/ald$StateListAnimator;

    check-cast v0, Lo/alj$Application;

    invoke-direct {p0, v0}, Lo/alc;-><init>(Lo/alj$Application;)V

    return-void
.end method


# virtual methods
.method public a(Lo/alj;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lo/ale;)Lo/ale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ale<",
            "-TT;>;)",
            "Lo/ale<",
            "TT;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lo/aow;

    invoke-direct {v0, p0, p1}, Lo/aow;-><init>(Lo/aon;Lo/ale;)V

    check-cast v0, Lo/ale;

    return-object v0
.end method

.method public c(Lo/ale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 103
    check-cast p1, Lo/aow;

    invoke-virtual {p1}, Lo/aow;->b()Lo/anT;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/anT;->f()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<*>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(Lo/alj;Ljava/lang/Runnable;)V
.end method

.method public e(Lo/alj;Ljava/lang/Runnable;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2}, Lo/aon;->c(Lo/alj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lo/ald$ActionBar;->c(Lo/ald;Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lo/alj$Application;)Lo/alj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$Application<",
            "*>;)",
            "Lo/alj;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lo/ald$ActionBar;->e(Lo/ald;Lo/alj$Application;)Lo/alj;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lo/aos;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/aos;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
