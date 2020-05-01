.class Lcom/netflix/mediaclient/ui/home/HomeActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/home/HomeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 2

    .line 472
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/ep;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c(Lo/Am;)V

    goto :goto_1

    .line 473
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->s()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 474
    invoke-static {v1}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->d(Lo/UnicodeScript;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$4;Lo/Am;)V

    .line 475
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->b(Lio/reactivex/Observer;)V

    :goto_1
    return-void
.end method
