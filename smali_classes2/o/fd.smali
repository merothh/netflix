.class public final Lo/fd;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fd$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/fd$StateListAnimator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fd$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fd$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/fd;->d:Lo/fd$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22316"

    .line 8
    iput-object v0, p0, Lo/fd;->b:Ljava/lang/String;

    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lo/fd;->c:I

    const-string v0, "Postplay with Playgraph"

    .line 12
    iput-object v0, p0, Lo/fd;->a:Ljava/lang/String;

    return-void
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/fd;->d:Lo/fd$StateListAnimator;

    invoke-virtual {v0}, Lo/fd$StateListAnimator;->e()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/fd;->d:Lo/fd$StateListAnimator;

    invoke-virtual {v0}, Lo/fd$StateListAnimator;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/fd;->b:Ljava/lang/String;

    return-object v0
.end method
