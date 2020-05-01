.class Lo/Ga$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ga;->a()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Ga;


# direct methods
.method constructor <init>(Lo/Ga;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/Ga$5;->c:Lo/Ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lo/Ga$5;->c:Lo/Ga;

    invoke-static {v0}, Lo/Ga;->c(Lo/Ga;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->isReady()Z

    move-result v0

    const-string v1, "nf_appboot_error"

    if-eqz v0, :cond_0

    const-string v0, "User agent is ready, just logout."

    .line 38
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lo/Ga$5;->c:Lo/Ga;

    invoke-static {v0}, Lo/Ga;->c(Lo/Ga;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "User agent is NOT ready, do brute force."

    .line 41
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lo/Ga$5;->c:Lo/Ga;

    invoke-static {v0}, Lo/Ga;->e(Lo/Ga;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->g(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
