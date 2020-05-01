.class public final Lo/fa;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fa$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/fa$StateListAnimator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fa$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fa$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/fa;->c:Lo/fa$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22197"

    .line 18
    iput-object v0, p0, Lo/fa;->e:Ljava/lang/String;

    const-string v0, "Android Ase Filter on Resolution Limit"

    .line 20
    iput-object v0, p0, Lo/fa;->b:Ljava/lang/String;

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lo/fa;->a:I

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/fa;->c:Lo/fa$StateListAnimator;

    invoke-virtual {v0}, Lo/fa$StateListAnimator;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/fa;->e:Ljava/lang/String;

    return-object v0
.end method
