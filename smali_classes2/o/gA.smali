.class public Lo/gA;
.super Lo/hq;
.source ""


# instance fields
.field public mdxOnlyDeviceEsnPrefixes:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mdxOnlyDeviceEsnPrefixes"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lo/gA;->mdxOnlyDeviceEsnPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public static c()[Ljava/lang/String;
    .locals 1

    const-string v0, "mdxOnlyDeviceEsnPrefixes"

    .line 23
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gA;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, v0, Lo/gA;->mdxOnlyDeviceEsnPrefixes:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "mdxOnlyDeviceEsnPrefixes"

    return-object v0
.end method
