.class public Lo/ajc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9c4

    .line 17
    invoke-direct {p0, v0}, Lo/ajc;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lo/ajc;->e:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 33
    iget v0, p0, Lo/ajc;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lo/ajc;->e()I

    move-result v1

    const-string v2, "deviceInfoTimeoutMs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
