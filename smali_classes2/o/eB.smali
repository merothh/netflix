.class public final Lo/eB;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eB$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/eB$StateListAnimator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eB$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eB$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/eB;->e:Lo/eB$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "18228"

    .line 27
    iput-object v0, p0, Lo/eB;->a:Ljava/lang/String;

    const-string v0, "Android Aim Low: SOAL Search"

    .line 29
    iput-object v0, p0, Lo/eB;->d:Ljava/lang/String;

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lo/eB;->c:I

    return-void
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/eB;->e:Lo/eB$StateListAnimator;

    invoke-virtual {v0}, Lo/eB$StateListAnimator;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/eB;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z_()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method
