.class public final Lo/gy$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_MoreDownloadsPostPlay"

    .line 15
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/gy$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const-string v0, "more_downloads_postplay"

    .line 21
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 19
    check-cast v0, Lo/gy;

    .line 24
    invoke-virtual {v0}, Lo/gy;->a()Z

    move-result v0

    return v0
.end method
