.class public final Lo/hj$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_SmsOtpVersionCheck"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/hj$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    const-string v0, "smsotpversioncheck"

    .line 22
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 20
    check-cast v0, Lo/hj;

    .line 25
    invoke-virtual {v0}, Lo/hj;->b()I

    move-result v0

    return v0
.end method
