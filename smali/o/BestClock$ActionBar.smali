.class final Lo/BestClock$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BestClock;->c(Lio/reactivex/Observable;IJLo/alA;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/alN;

.field final synthetic b:J

.field final synthetic d:I


# direct methods
.method constructor <init>(ILo/alN;J)V
    .locals 0

    iput p1, p0, Lo/BestClock$ActionBar;->d:I

    iput-object p2, p0, Lo/BestClock$ActionBar;->a:Lo/alN;

    iput-wide p3, p0, Lo/BestClock$ActionBar;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "errors"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lo/BestClock$ActionBar;->d:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lio/reactivex/Observable;->range(II)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.range(1, maxRetryCount)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableSource;

    iget-object v1, p0, Lo/BestClock$ActionBar;->a:Lo/alN;

    .line 48
    new-instance v2, Lo/BestClock$ActionBar$ActionBar;

    invoke-direct {v2, v1}, Lo/BestClock$ActionBar$ActionBar;-><init>(Lo/alN;)V

    check-cast v2, Lio/reactivex/functions/BiFunction;

    invoke-virtual {p1, v0, v2}, Lio/reactivex/Observable;->zipWith(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "zipWith(other, BiFunctio\u2026-> zipper.invoke(t, u) })"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lo/BestClock$ActionBar$3;

    invoke-direct {v0, p0}, Lo/BestClock$ActionBar$3;-><init>(Lo/BestClock$ActionBar;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lo/BestClock$ActionBar;->a(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
