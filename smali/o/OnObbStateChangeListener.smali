.class public Lo/OnObbStateChangeListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x2710

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lo/OnObbStateChangeListener;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lo/OnObbStateChangeListener;->d:I

    .line 18
    iput-boolean p2, p0, Lo/OnObbStateChangeListener;->b:Z

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/OnObbStateChangeListener;->b:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 22
    iget v0, p0, Lo/OnObbStateChangeListener;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lo/OnObbStateChangeListener;->e()I

    move-result v1

    const-string v2, "launchTimeoutMs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lo/OnObbStateChangeListener;->d()Z

    move-result v1

    const-string v2, "useStrictSpec"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
