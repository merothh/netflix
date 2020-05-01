.class public final Lo/gz;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gz$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/gz$Application;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field

.field private termsUrl$1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "termsUrl"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gz$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gz$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/gz;->c:Lo/gz$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/gz;->termsUrl$1:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/gz;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "member_referral_enabled_2"

    return-object v0
.end method
