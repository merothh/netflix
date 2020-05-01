.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1$5;
.super Lo/yi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->c(Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1$5;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;

    invoke-direct {p0}, Lo/yi;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->b:Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1$5;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->a:Lo/JM$Dialog;

    iget-boolean v1, v1, Lo/JM$Dialog;->i:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->a(Z)V

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1$5;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1$5;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->a:Lo/JM$Dialog;

    iget-object v1, v1, Lo/JM$Dialog;->a:Lo/JM;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v0}, Lo/JM;->d(Lo/JM;Lcom/netflix/mediaclient/android/app/Status;Lio/reactivex/ObservableEmitter;)V

    :cond_1
    return-void
.end method
