.class public final Lo/hn$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_WidevineFailureHandling"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/hn$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const-string v0, "widevineFailureHandling"

    .line 27
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/hn;

    .line 28
    invoke-virtual {v0}, Lo/hn;->c()Z

    move-result v0

    return v0
.end method
