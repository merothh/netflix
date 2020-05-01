.class public final Lo/eh;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eh$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/eh$Application;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eh$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eh$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/eh;->c:Lo/eh$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "14997"

    .line 21
    iput-object v0, p0, Lo/eh;->d:Ljava/lang/String;

    const/16 v0, 0x8

    .line 23
    iput v0, p0, Lo/eh;->a:I

    const-string v0, "Top 10 Retest"

    .line 25
    iput-object v0, p0, Lo/eh;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/eh;->d:Ljava/lang/String;

    return-object v0
.end method
