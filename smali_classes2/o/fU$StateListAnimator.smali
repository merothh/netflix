.class public final Lo/fU$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/fU$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const-string v0, "autologin_config"

    .line 27
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/fU;

    .line 28
    invoke-virtual {v0}, Lo/fU;->b()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    const-string v0, "autologin_config"

    .line 33
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/fU;

    .line 34
    invoke-virtual {v0}, Lo/fU;->c()Z

    move-result v0

    return v0
.end method
