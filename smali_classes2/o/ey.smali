.class public final Lo/ey;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ey$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/ey$StateListAnimator;


# instance fields
.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ey$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ey$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ey;->b:Lo/ey$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "17867"

    .line 12
    iput-object v0, p0, Lo/ey;->e:Ljava/lang/String;

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lo/ey;->c:I

    const-string v0, "Profile Gate Throttling"

    .line 16
    iput-object v0, p0, Lo/ey;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/ey;->e:Ljava/lang/String;

    return-object v0
.end method
