.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1$4;
.super Lo/yi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;->b(Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1$4;->e:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;

    invoke-direct {p0}, Lo/yi;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1$4;->e:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1$4;->e:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;->b:Lo/JM$FragmentManager;

    iget-object v1, v1, Lo/JM$FragmentManager;->a:Lo/JM;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v0}, Lo/JM;->d(Lo/JM;Lcom/netflix/mediaclient/android/app/Status;Lio/reactivex/ObservableEmitter;)V

    :cond_0
    return-void
.end method
