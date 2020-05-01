.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GN;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/util/List<",
        "+",
        "Lo/Pa;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/GN;


# direct methods
.method public constructor <init>(Lo/GN;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;->c:Lo/GN;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;->c:Lo/GN;

    invoke-static {v0}, Lo/GN;->c(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;->c:Lo/GN;

    invoke-virtual {p1}, Lo/GN;->a()I

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;->c:Lo/GN;

    invoke-static {p1}, Lo/GN;->a(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;->c:Lo/GN;

    invoke-virtual {v0}, Lo/GN;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;->c:Lo/GN;

    invoke-static {p1}, Lo/GN;->e(Lo/GN;)Lo/Pd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Pd;->d()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;->a(Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
