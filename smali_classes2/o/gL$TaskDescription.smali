.class public final Lo/gL$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/gL$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 30
    invoke-static {}, Lo/gL;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "perf_debug_session_log_sampling_config"

    .line 32
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 31
    check-cast v0, Lo/gL;

    .line 35
    sget-object v1, Lo/bH;->c:Lo/bH$TaskDescription;

    invoke-virtual {v0}, Lo/gL;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/bH$TaskDescription;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lo/gL;->d(Ljava/lang/Boolean;)V

    .line 37
    :cond_0
    invoke-static {}, Lo/gL;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
