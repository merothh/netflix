.class public final Lo/fO;
.super Lo/fQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fO$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/fO$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fO$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fO$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/fO;->a:Lo/fO$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/fQ;-><init>()V

    return-void
.end method

.method public static final e()Z
    .locals 1

    sget-object v0, Lo/fO;->a:Lo/fO$StateListAnimator;

    invoke-virtual {v0}, Lo/fO$StateListAnimator;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "23540"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "23540"

    return-object v0
.end method
