.class public final Lo/ei;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ei$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/ei$StateListAnimator;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ei$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ei$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ei;->e:Lo/ei$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "15113"

    .line 13
    iput-object v0, p0, Lo/ei;->c:Ljava/lang/String;

    const/4 v0, 0x4

    .line 15
    iput v0, p0, Lo/ei;->b:I

    const-string v0, "Android Limit BW on Device Metrics"

    .line 17
    iput-object v0, p0, Lo/ei;->d:Ljava/lang/String;

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/ei;->e:Lo/ei$StateListAnimator;

    invoke-virtual {v0}, Lo/ei$StateListAnimator;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/ei;->c:Ljava/lang/String;

    return-object v0
.end method
