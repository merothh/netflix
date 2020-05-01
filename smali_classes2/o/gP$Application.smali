.class public final Lo/gP$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_Player_Brightness_Productization"

    .line 15
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/gP$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const-string v0, "brightness_enable_property"

    .line 21
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 19
    check-cast v0, Lo/gP;

    .line 24
    invoke-virtual {v0}, Lo/gP;->c()Z

    move-result v0

    return v0
.end method
