.class public final Lo/dL;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dL$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/dL$StateListAnimator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dL$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dL$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/dL;->c:Lo/dL$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "12399"

    .line 7
    iput-object v0, p0, Lo/dL;->b:Ljava/lang/String;

    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lo/dL;->d:I

    const-string v0, "Downloads Highlight Errors"

    .line 11
    iput-object v0, p0, Lo/dL;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/dL;->b:Ljava/lang/String;

    return-object v0
.end method