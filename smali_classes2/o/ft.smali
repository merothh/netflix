.class public final Lo/ft;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ft$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/ft$StateListAnimator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ft$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ft$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ft;->d:Lo/ft$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "23560"

    .line 17
    iput-object v0, p0, Lo/ft;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lo/ft;->c:I

    const-string v0, "CW Menu Productization (Holdback)"

    .line 21
    iput-object v0, p0, Lo/ft;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/ft;->e:Ljava/lang/String;

    return-object v0
.end method
