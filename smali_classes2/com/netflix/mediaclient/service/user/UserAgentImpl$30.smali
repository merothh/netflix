.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$30;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(JLo/ym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field final synthetic c:Lo/ym;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 2719
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$30;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$30;->c:Lo/ym;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 2722
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$30;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$30$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$30$4;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$30;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
