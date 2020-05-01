.class public final Lo/fV$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/fV$ActionBar;-><init>()V

    return-void
.end method

.method private final e()Lo/fV;
    .locals 2

    const-string v0, "feature_control_config"

    .line 41
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    const-string v1, "PersistentFastPropertyCo\u2026    FP_NAME\n            )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/fV;

    return-object v0
.end method


# virtual methods
.method public final a()Lo/hs;
    .locals 1

    .line 47
    move-object v0, p0

    check-cast v0, Lo/fV$ActionBar;

    invoke-direct {v0}, Lo/fV$ActionBar;->e()Lo/fV;

    move-result-object v0

    invoke-virtual {v0}, Lo/fV;->d()Lo/hs;

    move-result-object v0

    return-object v0
.end method
