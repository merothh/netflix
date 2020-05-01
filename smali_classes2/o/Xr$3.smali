.class final Lo/Xr$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xr;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Xr;


# direct methods
.method constructor <init>(Lo/Xr;)V
    .locals 0

    iput-object p1, p0, Lo/Xr$3;->d:Lo/Xr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lo/Xr$3;->d:Lo/Xr;

    invoke-virtual {p1}, Lo/Xr;->s()Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->isAutoPlay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lo/Xr$3;->d:Lo/Xr;

    invoke-virtual {p1}, Lo/Xr;->k()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 87
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 88
    iget-object p1, p0, Lo/Xr$3;->d:Lo/Xr;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lo/Xr;->e(Ljava/lang/Long;)V

    .line 91
    :cond_0
    iget-object p1, p0, Lo/Xr$3;->d:Lo/Xr;

    invoke-virtual {p1}, Lo/Xr;->p()Lio/reactivex/subjects/Subject;

    move-result-object p1

    .line 92
    new-instance v0, Lo/UU$TypedArray;

    iget-object v1, p0, Lo/Xr$3;->d:Lo/Xr;

    invoke-virtual {v1}, Lo/Xr;->s()Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/UU$TypedArray;-><init>(Lcom/netflix/model/leafs/PostPlayItem;)V

    .line 91
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
