.class public Lo/Ga;
.super Lo/Ge;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/hK;)V
    .locals 0

    .line 26
    invoke-direct {p0, p3}, Lo/Ge;-><init>(Lo/hK;)V

    .line 27
    iput-object p1, p0, Lo/Ga;->a:Landroid/content/Context;

    .line 28
    check-cast p2, Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lo/Ga;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    return-void
.end method

.method public static b(Landroid/content/Context;Lo/zE;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)Lo/Ga;
    .locals 3

    const-string p1, "nf_appboot_error"

    const-string v0, "ActionID 13 Forcelogout"

    .line 50
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->b:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 55
    :cond_0
    new-instance p1, Lo/Ga$3;

    invoke-direct {p1}, Lo/Ga$3;-><init>()V

    .line 62
    new-instance v0, Lo/hK;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, p3, v1, p1}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 63
    new-instance p1, Lo/Ga;

    invoke-direct {p1, p0, p2, v0}, Lo/Ga;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/hK;)V

    return-object p1
.end method

.method static synthetic c(Lo/Ga;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Ga;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    return-object p0
.end method

.method static synthetic e(Lo/Ga;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Ga;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    .line 34
    new-instance v0, Lo/Ga$5;

    invoke-direct {v0, p0}, Lo/Ga$5;-><init>(Lo/Ga;)V

    return-object v0
.end method
