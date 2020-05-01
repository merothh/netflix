.class public final Lo/dN;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dN$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/dN$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dN$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dN$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/dN;->d:Lo/dN$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "12400"

    .line 43
    iput-object v0, p0, Lo/dN;->c:Ljava/lang/String;

    const-string v0, "Android Image Loader Systems Test"

    .line 45
    iput-object v0, p0, Lo/dN;->a:Ljava/lang/String;

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lo/dN;->b:I

    return-void
.end method

.method public static final g()I
    .locals 1

    sget-object v0, Lo/dN;->d:Lo/dN$ActionBar;

    invoke-virtual {v0}, Lo/dN$ActionBar;->e()I

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/dN;->c:Ljava/lang/String;

    return-object v0
.end method

.method public z_()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method
