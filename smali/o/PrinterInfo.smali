.class public abstract Lo/PrinterInfo;
.super Lo/PrinterCapabilitiesInfo;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0}, Lo/PrinterCapabilitiesInfo;-><init>(Lo/amc;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lo/PrinterInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Number;
.end method

.method public abstract f()I
.end method

.method public abstract j()J
.end method
