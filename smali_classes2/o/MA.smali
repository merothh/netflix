.class public final Lo/MA;
.super Lo/Mx;
.source ""


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_READY"

    .line 24
    invoke-direct {p0, v0}, Lo/Mx;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lo/Mp;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "mdxui"

    const-string v0, "MDX_ACTION_UPDATE_READY"

    .line 29
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 30
    invoke-interface {p1, p2}, Lo/Mp;->d(Z)V

    return-void
.end method
