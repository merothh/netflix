.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$21;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lo/ym;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ym;

.field final synthetic d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 2287
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$21;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$21;->a:Lo/ym;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$21;->a:Lo/ym;

    if-eqz v0, :cond_0

    .line 2291
    invoke-interface {v0, p1, p2}, Lo/ym;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
