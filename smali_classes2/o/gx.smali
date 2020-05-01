.class public final Lo/gx;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gx$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/gx$Activity;


# instance fields
.field private enableClientCheck:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableClientCheck"
    .end annotation
.end field

.field private safetyNetTokenExpirationTimeInDays:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "safetyNetTokenExpirationTimeInDays"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gx$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gx$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gx;->e:Lo/gx$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x7

    .line 16
    iput v0, p0, Lo/gx;->safetyNetTokenExpirationTimeInDays:I

    return-void
.end method

.method public static final d()Z
    .locals 1

    sget-object v0, Lo/gx;->e:Lo/gx$Activity;

    invoke-virtual {v0}, Lo/gx$Activity;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/gx;->enableClientCheck:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "mobileOnly"

    return-object v0
.end method
