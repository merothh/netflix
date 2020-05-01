.class public final Lo/ap$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "PerformanceCaptureData"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/ap$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Lo/ap;->e()Ljava/text/DecimalFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "decimalFormat.format(floatValue)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
