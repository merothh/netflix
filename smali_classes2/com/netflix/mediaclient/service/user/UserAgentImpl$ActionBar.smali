.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field c:Lo/ym;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 1917
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {p0}, Lo/yj;-><init>()V

    .line 1918
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;->c:Lo/ym;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;Lcom/netflix/mediaclient/service/user/UserAgentImpl$5;)V
    .locals 0

    .line 1914
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1923
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/yq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/yq;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1924
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;->c:Lo/ym;

    invoke-interface {p1, p2}, Lo/ym;->b(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
