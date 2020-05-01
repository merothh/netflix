.class public final Lo/em;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/em$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/em$StateListAnimator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/em$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/em$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/em;->c:Lo/em$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "15769"

    .line 37
    iput-object v0, p0, Lo/em;->b:Ljava/lang/String;

    const/4 v0, 0x2

    .line 39
    iput v0, p0, Lo/em;->d:I

    const-string v0, "Android Falcor Cache Clear on endpoint change"

    .line 41
    iput-object v0, p0, Lo/em;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/em;->b:Ljava/lang/String;

    return-object v0
.end method
