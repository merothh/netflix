.class public final Lo/fc;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fc$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/fc$StateListAnimator;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fc$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fc$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/fc;->d:Lo/fc$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22187"

    .line 15
    iput-object v0, p0, Lo/fc;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lo/fc;->b:I

    const-string v0, "More Like This Default tab"

    .line 19
    iput-object v0, p0, Lo/fc;->c:Ljava/lang/String;

    return-void
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/fc;->d:Lo/fc$StateListAnimator;

    invoke-virtual {v0}, Lo/fc$StateListAnimator;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/fc;->e:Ljava/lang/String;

    return-object v0
.end method
