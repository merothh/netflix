.class public final Lo/dI;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dI$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/dI$StateListAnimator;


# instance fields
.field private final a:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dI$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dI$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/dI;->e:Lo/dI$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "11536"

    .line 20
    iput-object v0, p0, Lo/dI;->c:Ljava/lang/String;

    const-string v0, "Android Playback Surface Creation Variations"

    .line 22
    iput-object v0, p0, Lo/dI;->d:Ljava/lang/String;

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lo/dI;->a:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/dI;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "persistent_ab11536"

    return-object v0
.end method
