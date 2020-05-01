.class public final Lo/eA;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eA$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/eA$TaskDescription;


# instance fields
.field private final a:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eA$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eA$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/eA;->c:Lo/eA$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "16867"

    .line 13
    iput-object v0, p0, Lo/eA;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lo/eA;->a:I

    const-string v0, "New Parental Controls"

    .line 17
    iput-object v0, p0, Lo/eA;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/eA;->d:Ljava/lang/String;

    return-object v0
.end method
