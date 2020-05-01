.class public final Lo/fZ;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fZ$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/fZ$TaskDescription;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fZ$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fZ$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/fZ;->c:Lo/fZ$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lo/fZ;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/fZ;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "enable_dp_tabs_in_tablets"

    return-object v0
.end method
