.class public abstract Lo/CI;
.super Lo/MessagePdu;
.source ""

# interfaces
.implements Lo/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CI$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/CI$ActionBar;

.field private static e:Lo/CG;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CI$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CI$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/CI;->b:Lo/CI$ActionBar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/CI;->a:Ljava/lang/String;

    return-void
.end method

.method private final a()I
    .locals 3

    .line 41
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 125
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "nflx_update_skipped"

    const/4 v2, 0x0

    .line 41
    invoke-static {v0, v1, v2}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final synthetic d(Lo/CG;)V
    .locals 0

    .line 20
    sput-object p0, Lo/CI;->e:Lo/CG;

    return-void
.end method

.method private final e(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "flexible"

    goto :goto_0

    :cond_0
    const-string p1, "immediate"

    :goto_0
    return-object p1
.end method

.method public static final synthetic e()Lo/CG;
    .locals 1

    .line 20
    sget-object v0, Lo/CI;->e:Lo/CG;

    return-object v0
.end method

.method private final j()I
    .locals 2

    .line 47
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->e()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lo/cz;->as()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/Jx;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final b()Z
    .locals 7

    .line 77
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->e()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Lo/cz;->aB()I

    move-result v1

    invoke-static {v1}, Lo/adi;->e(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 126
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-wide/16 v3, 0x0

    const-string v5, "nflx_update_skipped_time"

    .line 79
    invoke-static {v1, v5, v3, v4}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    .line 80
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    .line 81
    move-object v1, p0

    check-cast v1, Lo/MessagePdu;

    .line 82
    invoke-interface {v0}, Lo/cz;->ax()I

    move-result v0

    int-to-long v0, v0

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    return v2

    .line 86
    :cond_0
    invoke-direct {p0}, Lo/CI;->a()I

    move-result v0

    .line 87
    invoke-direct {p0}, Lo/CI;->j()I

    move-result v1

    .line 88
    move-object v3, p0

    check-cast v3, Lo/MessagePdu;

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()V
    .locals 3

    .line 102
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 138
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "nflx_update_skipped"

    const/4 v2, 0x0

    .line 102
    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected final d()V
    .locals 3

    const/4 v0, 0x0

    .line 97
    check-cast v0, Lo/CG;

    sput-object v0, Lo/CI;->e:Lo/CG;

    .line 98
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 137
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "nflx_inapp_update_failed"

    const/4 v2, 0x1

    .line 98
    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final d(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lo/ik;

    invoke-direct {p0, p2}, Lo/CI;->e(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lo/ik;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/Logblob;

    invoke-interface {v0, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method protected final e(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lo/CI;->j()I

    move-result v0

    const-string v1, "nflx_update_skipped"

    invoke-static {p1, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "nflx_update_skipped_time"

    invoke-static {p1, v2, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method protected final e(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 2

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p3}, Lo/ChooserTargetService;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "Log.getStackTrace(t)"

    invoke-static {p3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lo/ik;

    invoke-direct {p0, p2}, Lo/CI;->e(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Lo/ik;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/Logblob;

    invoke-interface {v0, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method
