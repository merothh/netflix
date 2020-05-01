.class public Lo/MB;
.super Lo/Mx;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NETWORK_CONNECTIVITY_CHANGE"

    .line 17
    invoke-direct {p0, v0}, Lo/Mx;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lo/Mp;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "mdxui"

    const-string v1, "MDX_ACTION_UPDATE_NETWORK_CONNECTIVITY_CHANGE"

    .line 22
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "networkConnected"

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 24
    invoke-interface {p1, p2}, Lo/Mp;->c(Z)V

    return-void
.end method
