.class public final Lo/ec;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ec$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/ec$Activity;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ec$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ec$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ec;->a:Lo/ec$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "14681"

    .line 29
    iput-object v0, p0, Lo/ec;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lo/ec;->b:I

    const-string v0, "Insomnia Battery Usage Systems Test"

    .line 33
    iput-object v0, p0, Lo/ec;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/ec;->d:Ljava/lang/String;

    return-object v0
.end method
