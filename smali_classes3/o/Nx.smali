.class public Lo/Nx;
.super Lo/abT;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Nx$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/Nx$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Nx$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Nx$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Nx;->b:Lo/Nx$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/abT;-><init>()V

    return-void
.end method

.method private final e(I)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lo/Nx;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Lo/Nx;->finish()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "successMsg"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 47
    invoke-direct {p0, p1}, Lo/Nx;->e(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "failureMsg"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7fffffff

    .line 51
    invoke-direct {p0, p1}, Lo/Nx;->e(I)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
