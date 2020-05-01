.class public abstract Lo/afB;
.super Ljava/lang/Object;
.source ""


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.LOGGING"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.LOG_RESUME_EVENTS_DELIVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.LOGGING"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "flush"

    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p0

    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p0

    invoke-virtual {p0, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public static d()Ljava/util/UUID;
    .locals 1

    .line 91
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
