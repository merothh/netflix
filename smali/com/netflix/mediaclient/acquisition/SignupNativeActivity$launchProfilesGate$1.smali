.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->launchProfilesGate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/service/user/UserAgent;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->invoke(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final invoke(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 7

    .line 866
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$getUserAgentRepository$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lo/JM;

    move-result-object p1

    invoke-virtual {p1}, Lo/JM;->h()Lio/reactivex/Observable;

    move-result-object p1

    .line 867
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 868
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$getMActivityDestroy$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "userAgentRepository.send\u2026keUntil(mActivityDestroy)"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    new-instance p1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
