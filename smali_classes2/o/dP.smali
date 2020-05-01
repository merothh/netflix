.class public final Lo/dP;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dP$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/dP$StateListAnimator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dP$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dP$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/dP;->e:Lo/dP$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "12543"

    .line 15
    iput-object v0, p0, Lo/dP;->b:Ljava/lang/String;

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Lo/dP;->c:I

    const-string v0, "Player Lite"

    .line 21
    iput-object v0, p0, Lo/dP;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/dP;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
