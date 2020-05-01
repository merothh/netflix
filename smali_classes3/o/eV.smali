.class public final Lo/eV;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eV$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/eV$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eV$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eV$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/eV;->b:Lo/eV$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22078"

    .line 19
    iput-object v0, p0, Lo/eV;->c:Ljava/lang/String;

    const-string v0, "Android Search result on NAPA"

    .line 21
    iput-object v0, p0, Lo/eV;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lo/eV;->d:I

    return-void
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/eV;->b:Lo/eV$ActionBar;

    invoke-virtual {v0}, Lo/eV$ActionBar;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/eV;->c:Ljava/lang/String;

    return-object v0
.end method

.method public z_()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method
