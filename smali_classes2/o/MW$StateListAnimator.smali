.class public final Lo/MW$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/MW$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    .line 31
    new-instance v6, Lo/MW;

    .line 32
    new-instance v1, Lo/MZ;

    invoke-direct {v1}, Lo/MZ;-><init>()V

    .line 33
    sget-object v2, Lo/MU;->a:Lo/MU;

    .line 34
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 35
    new-instance v4, Lo/MS;

    invoke-direct {v4}, Lo/MS;-><init>()V

    .line 36
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v5

    const-string v0, "ErrorLoggerProvider.getErrorLogger()"

    invoke-static {v5, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v6

    .line 31
    invoke-direct/range {v0 .. v5}, Lo/MW;-><init>(Lo/MZ;Lo/MU;Lcom/netflix/cl/Logger;Lo/MS;Lo/SpinnerAdapter;)V

    .line 38
    const-class v0, Lo/o;

    invoke-static {v0, v6}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 103
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 41
    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    new-instance v2, Lo/Na;

    check-cast v6, Lo/o;

    invoke-direct {v2, v6}, Lo/Na;-><init>(Lo/o;)V

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
