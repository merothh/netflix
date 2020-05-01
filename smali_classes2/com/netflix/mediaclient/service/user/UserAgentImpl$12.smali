.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(ILjava/lang/String;Ljava/lang/String;Lo/ym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ym;

.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;->b:Lo/ym;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1595
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;->b:Lo/ym;

    if-nez p1, :cond_0

    return-void

    .line 1599
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12$3;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12$3;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
