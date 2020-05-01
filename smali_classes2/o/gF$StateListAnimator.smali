.class public final Lo/gF$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_NonMemberABTestAllocationsIntegration"

    .line 15
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/gF$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const-string v0, "non_member_ab_test_allocations_integration_enabled"

    .line 20
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 19
    check-cast v0, Lo/gF;

    .line 23
    invoke-virtual {v0}, Lo/gF;->a()Z

    move-result v0

    return v0
.end method
