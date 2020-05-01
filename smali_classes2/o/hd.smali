.class public Lo/hd;
.super Lo/hq;
.source ""


# static fields
.field protected static c:Ljava/lang/String; = "safetyNet"


# instance fields
.field public disabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disabled"
    .end annotation
.end field

.field public disabledForSamsungFeatures:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disabledForSamsungFeatures"
    .end annotation
.end field

.field public renewTimeoutInHours:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "renewTimeoutInHours"
    .end annotation
.end field

.field public safetyNetTimeoutInMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "safetyNetTimeoutInMs"
    .end annotation
.end field

.field public safetyNetTokenExpirationTimeInDays:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "safetyNetTokenExpirationTimeInDays"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lo/hd;->disabled:Z

    const/16 v1, 0x18

    .line 30
    iput v1, p0, Lo/hd;->renewTimeoutInHours:I

    .line 33
    iput-boolean v0, p0, Lo/hd;->disabledForSamsungFeatures:Z

    const/4 v0, 0x7

    .line 36
    iput v0, p0, Lo/hd;->safetyNetTokenExpirationTimeInDays:I

    const-wide/16 v0, 0x2710

    .line 39
    iput-wide v0, p0, Lo/hd;->safetyNetTimeoutInMs:J

    return-void
.end method

.method public static a()I
    .locals 1

    .line 64
    sget-object v0, Lo/hd;->c:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/hd;

    if-eqz v0, :cond_0

    .line 65
    iget v0, v0, Lo/hd;->safetyNetTokenExpirationTimeInDays:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0
.end method

.method public static c()Z
    .locals 1

    .line 49
    sget-object v0, Lo/hd;->c:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/hd;

    if-eqz v0, :cond_0

    .line 50
    iget-boolean v0, v0, Lo/hd;->disabled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 1

    .line 59
    sget-object v0, Lo/hd;->c:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/hd;

    if-eqz v0, :cond_0

    .line 60
    iget-boolean v0, v0, Lo/hd;->disabledForSamsungFeatures:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lo/hd;->c:Ljava/lang/String;

    return-object v0
.end method
