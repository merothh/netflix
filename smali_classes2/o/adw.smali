.class public final Lo/adw;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->U:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    const-string p1, "nf_fetcherrorutils"

    const-string v0, "Broadcasting DELETED_PROFILE intent"

    .line 28
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.netflix.mediaclient.intent.action.DELETED_PROFILE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method
