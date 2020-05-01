.class public final Lo/fT$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/fT$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 25
    invoke-static {}, Lo/fT;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "clhe_sampling_config"

    .line 27
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 26
    check-cast v0, Lo/fT;

    .line 30
    sget-object v1, Lo/bH;->c:Lo/bH$TaskDescription;

    invoke-virtual {v0}, Lo/fT;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/bH$TaskDescription;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lo/fT;->e(Ljava/lang/Boolean;)V

    .line 32
    :cond_0
    invoke-static {}, Lo/fT;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
