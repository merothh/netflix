.class public final Lo/gx$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_MobileOnly"

    .line 20
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/gx$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const-string v0, "mobileOnly"

    .line 25
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gx;

    invoke-virtual {v0}, Lo/gx;->a()Z

    move-result v0

    return v0
.end method
