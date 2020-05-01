.class final Lo/Xb$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xb;-><init>(Landroid/view/ViewGroup;Lio/reactivex/subjects/Subject;Lcom/netflix/model/leafs/SeasonRenewal;Lcom/netflix/model/leafs/PostPlayItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Xb;


# direct methods
.method constructor <init>(Lo/Xb;)V
    .locals 0

    iput-object p1, p0, Lo/Xb$2;->e:Lo/Xb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    iget-object p1, p0, Lo/Xb$2;->e:Lo/Xb;

    invoke-virtual {p1}, Lo/Xb;->b()V

    .line 48
    iget-object p1, p0, Lo/Xb$2;->e:Lo/Xb;

    invoke-static {p1}, Lo/Xb;->c(Lo/Xb;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lo/Xb$2;->e:Lo/Xb;

    invoke-static {p1}, Lo/Xb;->d(Lo/Xb;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 50
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 51
    iget-object p1, p0, Lo/Xb$2;->e:Lo/Xb;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-static {p1, v0}, Lo/Xb;->d(Lo/Xb;Ljava/lang/Long;)V

    .line 54
    :cond_0
    iget-object p1, p0, Lo/Xb$2;->e:Lo/Xb;

    invoke-static {p1}, Lo/Xb;->a(Lo/Xb;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    new-instance v0, Lo/UU$TypedArray;

    iget-object v1, p0, Lo/Xb$2;->e:Lo/Xb;

    invoke-static {v1}, Lo/Xb;->j(Lo/Xb;)Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/UU$TypedArray;-><init>(Lcom/netflix/model/leafs/PostPlayItem;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
