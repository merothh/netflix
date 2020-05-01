.class Lcom/netflix/mediaclient/ui/home/HomeActivity$1;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/home/HomeActivity;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;->a:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Lo/aef;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/akj;)V
    .locals 1

    .line 507
    const-class p1, Lo/o;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/o;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;->a:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/o;->d(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 504
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;->b(Lo/akj;)V

    return-void
.end method
