.class public final Lo/gj;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gj$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/gj$TaskDescription;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gj$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gj$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/gj;->d:Lo/gj$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/gj;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "enable_falcor_clear_hash"

    return-object v0
.end method
