.class public Lo/Face;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/util/SparseIntArray;

.field public final e:I

.field public h:Z

.field public final i:I


# direct methods
.method public constructor <init>(IILandroid/util/SparseIntArray;)V
    .locals 7

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 82
    invoke-direct/range {v0 .. v6}, Lo/Face;-><init>(IILandroid/util/SparseIntArray;III)V

    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseIntArray;III)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 102
    iput p1, p0, Lo/Face;->c:I

    .line 103
    iput p2, p0, Lo/Face;->a:I

    .line 104
    iput-object p3, p0, Lo/Face;->d:Landroid/util/SparseIntArray;

    .line 105
    iput p4, p0, Lo/Face;->e:I

    .line 106
    iput p5, p0, Lo/Face;->b:I

    .line 107
    iput p6, p0, Lo/Face;->i:I

    return-void
.end method
