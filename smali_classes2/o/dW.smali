.class public final Lo/dW;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dW$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/dW$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dW$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dW$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/dW;->c:Lo/dW$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "13119"

    .line 7
    iput-object v0, p0, Lo/dW;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lo/dW;->b:I

    const-string v0, "Smart Downloads Streaming Triggers"

    .line 11
    iput-object v0, p0, Lo/dW;->d:Ljava/lang/String;

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/dW;->c:Lo/dW$ActionBar;

    invoke-virtual {v0}, Lo/dW$ActionBar;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/dW;->a:Ljava/lang/String;

    return-object v0
.end method
