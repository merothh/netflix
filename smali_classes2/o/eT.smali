.class public final Lo/eT;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eT$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/eT$ActionBar;


# instance fields
.field private final b:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eT$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eT$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/eT;->a:Lo/eT$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "19957"

    .line 13
    iput-object v0, p0, Lo/eT;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lo/eT;->b:I

    const-string v0, "New Character DP"

    .line 17
    iput-object v0, p0, Lo/eT;->d:Ljava/lang/String;

    return-void
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/eT;->a:Lo/eT$ActionBar;

    invoke-virtual {v0}, Lo/eT$ActionBar;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/eT;->e:Ljava/lang/String;

    return-object v0
.end method
