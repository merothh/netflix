.class public final Lo/ev;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ev$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/ev$StateListAnimator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ev$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ev$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ev;->b:Lo/ev$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "16534"

    .line 17
    iput-object v0, p0, Lo/ev;->c:Ljava/lang/String;

    const-string v0, "Force enable partner features"

    .line 19
    iput-object v0, p0, Lo/ev;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Lo/ev;->e:I

    return-void
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/ev;->b:Lo/ev$StateListAnimator;

    invoke-virtual {v0}, Lo/ev$StateListAnimator;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/ev;->c:Ljava/lang/String;

    return-object v0
.end method
