.class public final Lcom/netflix/android/components/ErrorPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WakeupEvent;-><init>(Lo/WimaxManagerConstants;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/ApduList;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/WimaxManagerConstants;


# direct methods
.method public constructor <init>(Lo/WimaxManagerConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/components/ErrorPresenter$1;->d:Lo/WimaxManagerConstants;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/ApduList;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v0, p1, Lo/ApduList$TaskDescription;

    if-eqz v0, :cond_0

    .line 20
    iget-object p1, p0, Lcom/netflix/android/components/ErrorPresenter$1;->d:Lo/WimaxManagerConstants;

    invoke-interface {p1}, Lo/WimaxManagerConstants;->b()V

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object p1, p0, Lcom/netflix/android/components/ErrorPresenter$1;->d:Lo/WimaxManagerConstants;

    invoke-interface {p1}, Lo/WimaxManagerConstants;->b()V

    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p1, Lo/ApduList$Application;

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/netflix/android/components/ErrorPresenter$1;->d:Lo/WimaxManagerConstants;

    invoke-interface {v0}, Lo/WimaxManagerConstants;->e()V

    .line 27
    check-cast p1, Lo/ApduList$Application;

    invoke-virtual {p1}, Lo/ApduList$Application;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netflix/android/components/ErrorPresenter$1;->d:Lo/WimaxManagerConstants;

    invoke-interface {p1}, Lo/WimaxManagerConstants;->j()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/netflix/android/components/ErrorPresenter$1;->d:Lo/WimaxManagerConstants;

    invoke-interface {p1}, Lo/WimaxManagerConstants;->h()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/ApduList;

    invoke-virtual {p0, p1}, Lcom/netflix/android/components/ErrorPresenter$1;->d(Lo/ApduList;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
