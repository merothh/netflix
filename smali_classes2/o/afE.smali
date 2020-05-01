.class public Lo/afE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afE$ActionBar;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "nf_log_ex"

    const-string v1, "Saving uncaughtException..."

    .line 26
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v1, Lo/afE$ActionBar;

    invoke-direct {v1, p0}, Lo/afE$ActionBar;-><init>(Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v3, "%s"

    .line 28
    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a(Ljava/lang/Throwable;)V

    .line 32
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p0

    const-string v2, "NF_CrashReport"

    invoke-virtual {v1}, Lo/afE$ActionBar;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to save to preferences!"

    .line 34
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Lo/afE$ActionBar;
    .locals 8

    const-string v0, "NF_CrashReport"

    const-string v1, "nf_log_ex"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    :try_start_0
    invoke-static {p0, v0, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Crash report found: %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v3

    .line 71
    invoke-static {v1, v5, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v4, :cond_0

    .line 73
    new-instance v5, Lo/afE$ActionBar;

    invoke-direct {v5, v4}, Lo/afE$ActionBar;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 74
    invoke-static {v1, v2, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v5

    goto :goto_0

    :catchall_1
    move-exception v4

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Failed to create crash report object!"

    .line 77
    invoke-static {v1, v4, v5, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    :cond_0
    :goto_1
    invoke-static {p0, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2
.end method

.method public static e()V
    .locals 4

    .line 41
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/afE;->d(Landroid/content/Context;)Lo/afE$ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "nf_log_ex"

    const-string v3, "last crash exist, report! %s"

    .line 44
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 46
    invoke-static {v0}, Lo/afE$ActionBar;->e(Lo/afE$ActionBar;)Lcom/netflix/cl/model/Error;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/LastAppCrashed;

    invoke-static {v0}, Lo/afE$ActionBar;->e(Lo/afE$ActionBar;)Lcom/netflix/cl/model/Error;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/cl/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/discrete/LastAppCrashed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, "Missing CLv2 of last crash. Can not report!"

    .line 51
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :catch_0
    :goto_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NF_CrashReport"

    invoke-static {v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
