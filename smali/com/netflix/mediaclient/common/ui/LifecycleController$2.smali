.class final Lcom/netflix/mediaclient/common/ui/LifecycleController$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


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
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/common/ui/LifecycleController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/common/ui/LifecycleController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController$2;->e:Lcom/netflix/mediaclient/common/ui/LifecycleController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController$2;->e:Lcom/netflix/mediaclient/common/ui/LifecycleController;

    invoke-static {p1}, Lcom/netflix/mediaclient/common/ui/LifecycleController;->b(Lcom/netflix/mediaclient/common/ui/LifecycleController;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 66
    iget-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController$2;->e:Lcom/netflix/mediaclient/common/ui/LifecycleController;

    invoke-static {p1}, Lcom/netflix/mediaclient/common/ui/LifecycleController;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/common/ui/LifecycleController$2;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
