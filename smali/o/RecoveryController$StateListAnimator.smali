.class public final Lo/RecoveryController$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecoveryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "FetchInteractiveRestartStateTask"

    .line 25
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/RecoveryController$StateListAnimator;-><init>()V

    return-void
.end method