.class public final Lo/ed;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ed$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/ed$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ed$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ed$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ed;->c:Lo/ed$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "14585"

    .line 28
    iput-object v0, p0, Lo/ed;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lo/ed;->b:I

    const-string v0, "Android Aim Low: Lite Threshold Evolution"

    .line 32
    iput-object v0, p0, Lo/ed;->d:Ljava/lang/String;

    return-void
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/ed;->c:Lo/ed$ActionBar;

    invoke-virtual {v0}, Lo/ed$ActionBar;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/ed;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z_()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method
