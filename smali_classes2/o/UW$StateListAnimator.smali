.class public final Lo/UW$StateListAnimator;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final c:Z

.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lo/UW$StateListAnimator;-><init>(IZILo/amc;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UW$StateListAnimator;->e:I

    iput-boolean p2, p0, Lo/UW$StateListAnimator;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILo/amc;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 182
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/UW$StateListAnimator;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lo/UW$StateListAnimator;->c:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 182
    iget v0, p0, Lo/UW$StateListAnimator;->e:I

    return v0
.end method
