.class public final Lo/fU;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fU$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/fU$StateListAnimator;


# instance fields
.field private expirationTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expirationTime"
    .end annotation
.end field

.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fU$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fU$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/fU;->b:Lo/fU$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/fU;->isEnabled:Z

    const v0, 0x36ee80

    .line 16
    iput v0, p0, Lo/fU;->expirationTime:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 16
    iget v0, p0, Lo/fU;->expirationTime:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/fU;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "autologin_config"

    return-object v0
.end method
