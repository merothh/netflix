.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$27$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 2470
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27$4;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27$4;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2476
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27$4;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;->d:Lo/ym;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27$4;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->n(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isAgeVerified()Z

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27$4;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ym;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
