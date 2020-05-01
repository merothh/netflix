.class public final Lo/hh$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_ServiceTokenCAD"

    .line 28
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/hh$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const-string v0, "serviceTokenCAD"

    .line 41
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/hh;

    .line 42
    invoke-virtual {v0}, Lo/hh;->b()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    const-string v0, "serviceTokenCAD"

    .line 32
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/hh;

    .line 33
    invoke-virtual {v0}, Lo/hh;->c()Z

    move-result v0

    return v0
.end method
