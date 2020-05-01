.class public final Lo/hh;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hh$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/hh$Application;


# instance fields
.field private errorCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCount"
    .end annotation
.end field

.field private isDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isDisabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hh$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hh$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/hh;->e:Lo/hh$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lo/hh;->errorCount:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 22
    iget v0, p0, Lo/hh;->errorCount:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/hh;->isDisabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "serviceTokenCAD"

    return-object v0
.end method
