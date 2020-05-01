.class public final Lo/hf;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hf$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/hf$StateListAnimator;

.field private static e:Ljava/lang/Boolean;


# instance fields
.field private samplingPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "samplingPercentage"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hf$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hf$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/hf;->a:Lo/hf$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method

.method public static final synthetic d()Ljava/lang/Boolean;
    .locals 1

    .line 12
    sget-object v0, Lo/hf;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic e(Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    sput-object p0, Lo/hf;->e:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 16
    iget v0, p0, Lo/hf;->samplingPercentage:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "search_response_latency_logging_enabled"

    return-object v0
.end method
