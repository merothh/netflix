.class public final Lo/CI$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lo/CI$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lo/CG;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lo/CI;->e()Lo/CG;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    const-class v0, Lo/CI;

    monitor-enter v0

    .line 115
    :try_start_0
    invoke-static {}, Lo/CI;->e()Lo/CG;

    move-result-object v1

    if-nez v1, :cond_0

    .line 116
    invoke-static {p1}, Lo/CJ;->b(Landroid/content/Context;)Lo/CG;

    move-result-object p1

    invoke-static {p1}, Lo/CI;->d(Lo/CG;)V

    .line 118
    :cond_0
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 120
    :cond_1
    :goto_0
    invoke-static {}, Lo/CI;->e()Lo/CG;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    return-object p1
.end method

.method public final e()Z
    .locals 3

    .line 109
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 125
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "nflx_inapp_update_failed"

    const/4 v2, 0x0

    .line 109
    invoke-static {v0, v1, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
