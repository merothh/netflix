.class public interface abstract Lo/aoU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/alj$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aoU$StateListAnimator;,
        Lo/aoU$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/aoU$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/aoU$ActionBar;->a:Lo/aoU$ActionBar;

    sput-object v0, Lo/aoU;->d:Lo/aoU$ActionBar;

    return-void
.end method


# virtual methods
.method public abstract a(Lo/aod;)Lo/anW;
.end method

.method public abstract b(Lo/alA;)Lo/aoA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;)",
            "Lo/aoA;"
        }
    .end annotation
.end method

.method public abstract b(ZZLo/alA;)Lo/aoA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;)",
            "Lo/aoA;"
        }
    .end annotation
.end method

.method public abstract c()Z
.end method

.method public abstract d(Lo/ale;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract l()Z
.end method

.method public abstract n()Ljava/util/concurrent/CancellationException;
.end method
