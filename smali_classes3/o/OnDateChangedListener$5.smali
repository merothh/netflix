.class Lo/OnDateChangedListener$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OnDateChangedListener;->l()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lo/ApfStats;",
        "Lio/reactivex/Observable<",
        "Lo/ApfStats;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/OnDateChangedListener;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lo/OnDateChangedListener;J)V
    .locals 0

    .line 239
    iput-object p1, p0, Lo/OnDateChangedListener$5;->c:Lo/OnDateChangedListener;

    iput-wide p2, p0, Lo/OnDateChangedListener$5;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 239
    check-cast p1, Lo/ApfStats;

    invoke-virtual {p0, p1}, Lo/OnDateChangedListener$5;->b(Lo/ApfStats;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/ApfStats;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ApfStats;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/ApfStats;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lo/OnDateChangedListener$5;->c:Lo/OnDateChangedListener;

    iget-wide v1, p0, Lo/OnDateChangedListener$5;->d:J

    invoke-static {v0, v1, v2, p1}, Lo/OnDateChangedListener;->e(Lo/OnDateChangedListener;JLo/ApfStats;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "SearchActionBar"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 243
    iget-wide v2, p0, Lo/OnDateChangedListener$5;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "queryTextChanges: debounce delay %d"

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 244
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    iget-wide v0, p0, Lo/OnDateChangedListener$5;->d:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "queryTextChanges: debounce NOW"

    .line 246
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p1, p0, Lo/OnDateChangedListener$5;->c:Lo/OnDateChangedListener;

    invoke-static {p1}, Lo/OnDateChangedListener;->e(Lo/OnDateChangedListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
