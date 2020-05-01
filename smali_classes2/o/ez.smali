.class public final Lo/ez;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ez$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/ez$ActionBar;


# instance fields
.field private final a:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ez$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ez$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ez;->c:Lo/ez$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "17878"

    .line 15
    iput-object v0, p0, Lo/ez;->d:Ljava/lang/String;

    const-string v0, "Animated My List Button"

    .line 17
    iput-object v0, p0, Lo/ez;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lo/ez;->a:I

    return-void
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/ez;->c:Lo/ez$ActionBar;

    invoke-virtual {v0}, Lo/ez$ActionBar;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/ez;->d:Ljava/lang/String;

    return-object v0
.end method
