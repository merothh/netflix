.class Lo/OnDateChangedListener$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Lo/ApfStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:J

.field final synthetic d:Lo/OnDateChangedListener;


# direct methods
.method constructor <init>(Lo/OnDateChangedListener;J)V
    .locals 0

    .line 219
    iput-object p1, p0, Lo/OnDateChangedListener$3;->d:Lo/OnDateChangedListener;

    iput-wide p2, p0, Lo/OnDateChangedListener$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 219
    check-cast p1, Lo/ApfStats;

    invoke-virtual {p0, p1}, Lo/OnDateChangedListener$3;->c(Lo/ApfStats;)V

    return-void
.end method

.method public c(Lo/ApfStats;)V
    .locals 5

    .line 222
    invoke-virtual {p1}, Lo/ApfStats;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v3, "SearchActionBar"

    const-string v4, "queryTextChanges: doOnNext \'%s\'"

    .line 223
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    iget-object v1, p0, Lo/OnDateChangedListener$3;->d:Lo/OnDateChangedListener;

    invoke-static {v1}, Lo/OnDateChangedListener;->d(Lo/OnDateChangedListener;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/OnDateChangedListener$3;->d:Lo/OnDateChangedListener;

    iget-wide v3, p0, Lo/OnDateChangedListener$3;->c:J

    invoke-static {v1, v3, v4, p1}, Lo/OnDateChangedListener;->e(Lo/OnDateChangedListener;JLo/ApfStats;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lo/OnDateChangedListener$3;->d:Lo/OnDateChangedListener;

    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v4, Lcom/netflix/cl/model/event/session/action/ThrottleSearch;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/action/ThrottleSearch;-><init>()V

    invoke-virtual {v3, v4}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lo/OnDateChangedListener;->a(Lo/OnDateChangedListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 233
    :cond_0
    invoke-virtual {p1}, Lo/ApfStats;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 234
    const-class p1, Lo/v;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/v;

    invoke-interface {p1, v0, v2}, Lo/v;->b(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
