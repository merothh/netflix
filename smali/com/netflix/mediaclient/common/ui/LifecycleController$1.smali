.class final Lcom/netflix/mediaclient/common/ui/LifecycleController$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/common/ui/LifecycleController;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/common/ui/LifecycleController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/common/ui/LifecycleController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController$1;->a:Lcom/netflix/mediaclient/common/ui/LifecycleController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController$1;->a:Lcom/netflix/mediaclient/common/ui/LifecycleController;

    invoke-static {v0}, Lcom/netflix/mediaclient/common/ui/LifecycleController;->b(Lcom/netflix/mediaclient/common/ui/LifecycleController;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController$1;->a:Lcom/netflix/mediaclient/common/ui/LifecycleController;

    invoke-static {v0}, Lcom/netflix/mediaclient/common/ui/LifecycleController;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/common/ui/LifecycleController$1;->c()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
