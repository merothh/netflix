.class public final Lo/gD;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gD$ActionBar;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;

.field public static final c:Lo/gD$ActionBar;


# instance fields
.field private samplingPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "samplingPercentage"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gD$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gD$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/gD;->c:Lo/gD$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x5

    .line 16
    iput v0, p0, Lo/gD;->samplingPercentage:I

    return-void
.end method

.method public static final synthetic c()Ljava/lang/Boolean;
    .locals 1

    .line 12
    sget-object v0, Lo/gD;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic c(Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    sput-object p0, Lo/gD;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 16
    iget v0, p0, Lo/gD;->samplingPercentage:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "offline_latency_logging_enabled"

    return-object v0
.end method
