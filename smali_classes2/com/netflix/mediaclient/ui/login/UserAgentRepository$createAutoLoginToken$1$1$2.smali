.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1$2;
.super Lo/yi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;->d(Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1$2;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;

    invoke-direct {p0}, Lo/yi;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1$2;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    .line 150
    new-instance v1, Lo/JM$StateListAnimator;

    invoke-direct {v1, p1, p2}, Lo/JM$StateListAnimator;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 151
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_0
    return-void
.end method
