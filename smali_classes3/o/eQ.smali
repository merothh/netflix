.class public final Lo/eQ;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eQ$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/eQ$TaskDescription;


# instance fields
.field private final b:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eQ$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eQ$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/eQ;->a:Lo/eQ$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "19886"

    .line 18
    iput-object v0, p0, Lo/eQ;->d:Ljava/lang/String;

    const/4 v0, 0x3

    .line 20
    iput v0, p0, Lo/eQ;->b:I

    const-string v0, "Feed Call to Action (Extras)"

    .line 22
    iput-object v0, p0, Lo/eQ;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/eQ;->d:Ljava/lang/String;

    return-object v0
.end method
