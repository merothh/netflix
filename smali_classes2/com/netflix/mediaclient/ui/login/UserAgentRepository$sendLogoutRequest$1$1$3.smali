.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1$3;
.super Lo/yi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;->a(Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1$3;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;

    invoke-direct {p0}, Lo/yi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1$3;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1$3;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;->c:Lo/JM$SharedElementCallback;

    iget-object v1, v1, Lo/JM$SharedElementCallback;->a:Lo/JM;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v0}, Lo/JM;->d(Lo/JM;Lcom/netflix/mediaclient/android/app/Status;Lio/reactivex/ObservableEmitter;)V

    :cond_0
    return-void
.end method
