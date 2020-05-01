.class public abstract Lo/RZ;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/TimeUnit;",
        ">",
        "Lo/IntBinaryOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/RZ;->b:Z

    return v0
.end method

.method public final I()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lo/RZ;->c:Z

    return v0
.end method

.method public final d(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lo/RZ;->c:Z

    return-void
.end method

.method public final i(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lo/RZ;->b:Z

    return-void
.end method
