.class public final Lcom/netflix/android/components/LoadingPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BeamShareData;-><init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/BeamShareData;


# direct methods
.method public constructor <init>(Lo/BeamShareData;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/components/LoadingPresenter$1;->e:Lo/BeamShareData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/ApduList;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lo/ApduList$TaskDescription;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/netflix/android/components/LoadingPresenter$1;->e:Lo/BeamShareData;

    invoke-static {v0}, Lo/BeamShareData;->e(Lo/BeamShareData;)Lo/NsdServiceInfo;

    move-result-object v0

    invoke-interface {v0}, Lo/NsdServiceInfo;->e()V

    .line 22
    check-cast p1, Lo/ApduList$TaskDescription;

    invoke-virtual {p1}, Lo/ApduList$TaskDescription;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netflix/android/components/LoadingPresenter$1;->e:Lo/BeamShareData;

    invoke-static {p1}, Lo/BeamShareData;->e(Lo/BeamShareData;)Lo/NsdServiceInfo;

    move-result-object p1

    invoke-interface {p1}, Lo/NsdServiceInfo;->f()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netflix/android/components/LoadingPresenter$1;->e:Lo/BeamShareData;

    invoke-static {p1}, Lo/BeamShareData;->e(Lo/BeamShareData;)Lo/NsdServiceInfo;

    move-result-object p1

    invoke-interface {p1}, Lo/NsdServiceInfo;->j()V

    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object p1, p0, Lcom/netflix/android/components/LoadingPresenter$1;->e:Lo/BeamShareData;

    invoke-static {p1}, Lo/BeamShareData;->e(Lo/BeamShareData;)Lo/NsdServiceInfo;

    move-result-object p1

    invoke-interface {p1}, Lo/NsdServiceInfo;->b()V

    goto :goto_0

    .line 27
    :cond_2
    instance-of p1, p1, Lo/ApduList$Application;

    if-eqz p1, :cond_3

    .line 28
    iget-object p1, p0, Lcom/netflix/android/components/LoadingPresenter$1;->e:Lo/BeamShareData;

    invoke-static {p1}, Lo/BeamShareData;->e(Lo/BeamShareData;)Lo/NsdServiceInfo;

    move-result-object p1

    invoke-interface {p1}, Lo/NsdServiceInfo;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/ApduList;

    invoke-virtual {p0, p1}, Lcom/netflix/android/components/LoadingPresenter$1;->c(Lo/ApduList;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
