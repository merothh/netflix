.class public final Lo/eE;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eE$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/eE$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eE$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eE$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/eE;->e:Lo/eE$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "18161"

    .line 10
    iput-object v0, p0, Lo/eE;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lo/eE;->d:I

    const-string v0, "Lolomo UI Preload"

    .line 14
    iput-object v0, p0, Lo/eE;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/eE;->a:Ljava/lang/String;

    return-object v0
.end method
