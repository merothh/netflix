.class public Lo/hQ;
.super Lo/hS;
.source ""


# instance fields
.field private c:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/hS;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p1, p0, Lo/hQ;->e:Landroid/app/Activity;

    .line 16
    iput-object p2, p0, Lo/hQ;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 25
    iget-object v0, p0, Lo/hQ;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "ErrorManager"

    const-string v1, "Exit current activity, going to signup"

    .line 26
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lo/hQ;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->c(Lo/ym;)V

    .line 28
    iget-object v0, p0, Lo/hQ;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
