.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zQ$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field final synthetic b:Lo/zQ;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/zQ;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$10;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$10;->b:Lo/zQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$10;->b:Lo/zQ;

    invoke-interface {v0, p0}, Lo/zQ;->d(Lo/zQ$Activity;)V

    const-string v0, "nf_service_useragent"

    if-nez p1, :cond_0

    .line 325
    invoke-static {}, Lo/gx;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "We failed to execute SafetyNet attestation, user needs to be logged out"

    .line 326
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$10;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    goto :goto_0

    :cond_0
    const-string p1, "SafetyNet attestation was success, check results"

    .line 330
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$10;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Z)V

    :cond_1
    :goto_0
    return-void
.end method
