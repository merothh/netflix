.class Lo/OnDateChangedListener$1;
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
.field final synthetic e:Lo/OnDateChangedListener;


# direct methods
.method constructor <init>(Lo/OnDateChangedListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lo/OnDateChangedListener$1;->e:Lo/OnDateChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 254
    check-cast p1, Lo/ApfStats;

    invoke-virtual {p0, p1}, Lo/OnDateChangedListener$1;->e(Lo/ApfStats;)V

    return-void
.end method

.method public e(Lo/ApfStats;)V
    .locals 1

    .line 257
    iget-object p1, p0, Lo/OnDateChangedListener$1;->e:Lo/OnDateChangedListener;

    invoke-static {p1}, Lo/OnDateChangedListener;->d(Lo/OnDateChangedListener;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/OnDateChangedListener$1;->e:Lo/OnDateChangedListener;

    invoke-static {v0}, Lo/OnDateChangedListener;->d(Lo/OnDateChangedListener;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 259
    iget-object p1, p0, Lo/OnDateChangedListener$1;->e:Lo/OnDateChangedListener;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/OnDateChangedListener;->a(Lo/OnDateChangedListener;Ljava/lang/Long;)Ljava/lang/Long;

    :cond_0
    return-void
.end method
