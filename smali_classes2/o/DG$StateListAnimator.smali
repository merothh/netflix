.class public final Lo/DG$StateListAnimator;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Z

.field private final d:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    iput p1, p0, Lo/DG$StateListAnimator;->d:I

    iput-boolean p2, p0, Lo/DG$StateListAnimator;->a:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lo/DG$StateListAnimator;->a:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .line 28
    iget v0, p0, Lo/DG$StateListAnimator;->d:I

    return v0
.end method
