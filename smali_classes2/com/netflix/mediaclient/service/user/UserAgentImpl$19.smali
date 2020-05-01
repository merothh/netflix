.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$19;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lo/ym;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ym;

.field final synthetic d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 2114
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$19;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$19;->c:Lo/ym;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$19;->c:Lo/ym;

    if-eqz v0, :cond_0

    .line 2118
    invoke-interface {v0, p1, p2}, Lo/ym;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
