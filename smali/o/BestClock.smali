.class public final Lo/BestClock;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Lio/reactivex/Observable;IJLo/alA;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;IJ",
            "Lo/alA<",
            "-",
            "Ljava/lang/Integer;",
            "Lo/akj;",
            ">;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$retryWithBackoff"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 26
    new-instance v0, Lcom/netflix/android/kotlinx/ObservableKt$retryWithBackoff$zipperCallback$1;

    invoke-direct {v0, p4, p1}, Lcom/netflix/android/kotlinx/ObservableKt$retryWithBackoff$zipperCallback$1;-><init>(Lo/alA;I)V

    check-cast v0, Lo/alN;

    .line 38
    new-instance p4, Lo/BestClock$ActionBar;

    invoke-direct {p4, p1, v0, p2, p3}, Lo/BestClock$ActionBar;-><init>(ILo/alN;J)V

    check-cast p4, Lio/reactivex/functions/Function;

    invoke-virtual {p0, p4}, Lio/reactivex/Observable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "this.retryWhen { errors \u2026ONDS)\n            }\n    }"

    invoke-static {p0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "backoffMultiplier must be positive number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
