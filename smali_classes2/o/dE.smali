.class public final Lo/dE;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dE$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/dE$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dE$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dE$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/dE;->c:Lo/dE$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22595"

    .line 20
    iput-object v0, p0, Lo/dE;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lo/dE;->b:I

    const-string v0, "Release DRM resources in suspend mode"

    .line 24
    iput-object v0, p0, Lo/dE;->e:Ljava/lang/String;

    return-void
.end method

.method public static final d()Z
    .locals 1

    sget-object v0, Lo/dE;->c:Lo/dE$ActionBar;

    invoke-virtual {v0}, Lo/dE$ActionBar;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/dE;->a:Ljava/lang/String;

    return-object v0
.end method
