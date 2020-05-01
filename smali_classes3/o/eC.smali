.class public final Lo/eC;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eC$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/eC$StateListAnimator;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eC$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eC$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/eC;->a:Lo/eC$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "18165"

    .line 13
    iput-object v0, p0, Lo/eC;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lo/eC;->d:I

    const-string v0, "New Parental Controls (Android)"

    .line 17
    iput-object v0, p0, Lo/eC;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/eC;->c:Ljava/lang/String;

    return-object v0
.end method
