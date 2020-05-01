.class public Lo/gl;
.super Lo/hq;
.source ""


# instance fields
.field public disabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lo/gl;->disabled:Z

    return-void
.end method

.method public static a()Z
    .locals 2

    const-string v0, "ftl"

    .line 23
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gl;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 24
    iget-boolean v0, v0, Lo/gl;->disabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ftl"

    return-object v0
.end method
