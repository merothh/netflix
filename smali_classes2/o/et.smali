.class public final Lo/et;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/et$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/et$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/et$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/et$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/et;->e:Lo/et$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "16433"

    .line 13
    iput-object v0, p0, Lo/et;->d:Ljava/lang/String;

    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lo/et;->c:I

    const-string v0, "Kids Parity V2"

    .line 17
    iput-object v0, p0, Lo/et;->a:Ljava/lang/String;

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/et;->e:Lo/et$ActionBar;

    invoke-virtual {v0}, Lo/et$ActionBar;->a()Z

    move-result v0

    return v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/et;->e:Lo/et$ActionBar;

    invoke-virtual {v0}, Lo/et$ActionBar;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/et;->d:Ljava/lang/String;

    return-object v0
.end method
