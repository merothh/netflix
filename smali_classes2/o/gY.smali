.class public final Lo/gY;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gY$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/gY$Activity;

.field private static b:Ljava/lang/Boolean;


# instance fields
.field private qoeMetricsSamplingPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qoeMetricsSamplingPercentage"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gY$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gY$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gY;->a:Lo/gY$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method

.method public static final synthetic c()Ljava/lang/Boolean;
    .locals 1

    .line 13
    sget-object v0, Lo/gY;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic d(Ljava/lang/Boolean;)V
    .locals 0

    .line 13
    sput-object p0, Lo/gY;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 17
    iget v0, p0, Lo/gY;->qoeMetricsSamplingPercentage:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "qoe_metrics"

    return-object v0
.end method
