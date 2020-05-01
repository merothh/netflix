.class final Lo/Xw$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xw;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayExperience;Lio/reactivex/subjects/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Xw;


# direct methods
.method constructor <init>(Lo/Xw;)V
    .locals 0

    iput-object p1, p0, Lo/Xw$2;->d:Lo/Xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 52
    iget-object p1, p0, Lo/Xw$2;->d:Lo/Xw;

    invoke-static {p1}, Lo/Xw;->a(Lo/Xw;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    new-instance v0, Lo/UU$TypedArray;

    iget-object v1, p0, Lo/Xw$2;->d:Lo/Xw;

    invoke-static {v1}, Lo/Xw;->d(Lo/Xw;)Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object v1

    const-string v2, "autoPlayItem"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/UU$TypedArray;-><init>(Lcom/netflix/model/leafs/PostPlayItem;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lo/Xw$2;->d:Lo/Xw;

    invoke-virtual {p1}, Lo/Xw;->b()V

    .line 54
    iget-object p1, p0, Lo/Xw$2;->d:Lo/Xw;

    invoke-static {p1}, Lo/Xw;->c(Lo/Xw;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 55
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 56
    iget-object p1, p0, Lo/Xw$2;->d:Lo/Xw;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-static {p1, v0}, Lo/Xw;->b(Lo/Xw;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
