.class final Lo/VE$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VE;->b()V
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
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/VE;


# direct methods
.method constructor <init>(Lo/VE;)V
    .locals 0

    iput-object p1, p0, Lo/VE$Activity;->e:Lo/VE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lo/VE$Activity;->e(Ljava/util/Map$Entry;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/Map$Entry;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/Map$Entry<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/advisory/Advisory;

    invoke-interface {v0}, Lcom/netflix/model/leafs/advisory/Advisory;->getDelay()F

    move-result v0

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v2, v0

    .line 158
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/advisory/Advisory;

    invoke-interface {v0}, Lcom/netflix/model/leafs/advisory/Advisory;->getDuration()F

    move-result v0

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 162
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 163
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 164
    new-instance v2, Lo/VE$Activity$2;

    invoke-direct {v2, p0}, Lo/VE$Activity$2;-><init>(Lo/VE$Activity;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 165
    new-instance v2, Lo/VE$Activity$1;

    invoke-direct {v2, p0}, Lo/VE$Activity$1;-><init>(Lo/VE$Activity;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 202
    iget-object v2, p0, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v2}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object v2

    invoke-interface {v2}, Lo/Wu;->f()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 203
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 204
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    .line 201
    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 206
    new-instance v0, Lo/VE$Activity$3;

    invoke-direct {v0, p0}, Lo/VE$Activity$3;-><init>(Lo/VE$Activity;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v0}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object v0

    invoke-interface {v0}, Lo/Wu;->f()J

    move-result-wide v0

    .line 211
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 212
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    .line 209
    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
