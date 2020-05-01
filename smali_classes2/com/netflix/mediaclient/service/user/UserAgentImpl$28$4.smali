.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$28$4;
.super Lo/yi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->c(Lo/ToggleButton;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;)V
    .locals 0

    .line 2634
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28$4;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;

    invoke-direct {p0}, Lo/yi;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2639
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28$4;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    goto :goto_0

    .line 2642
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28$4;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/cl/model/Error;)V

    :goto_0
    return-void
.end method
