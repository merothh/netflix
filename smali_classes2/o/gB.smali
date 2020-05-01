.class public final Lo/gB;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gB$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/gB$Application;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gB$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gB$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/gB;->e:Lo/gB$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/gB;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/gB;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "enable_nf_repo_in_dp_repo"

    return-object v0
.end method
