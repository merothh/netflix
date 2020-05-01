.class public Lo/ActivityManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 12
    iget v0, p0, Lo/ActivityManager;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lo/ActivityManager;->d:F

    .line 13
    iget p1, p0, Lo/ActivityManager;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ActivityManager;->a:I

    .line 14
    iget p1, p0, Lo/ActivityManager;->a:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 15
    iget v0, p0, Lo/ActivityManager;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lo/ActivityManager;->d:F

    .line 16
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/ActivityManager;->a:I

    :cond_0
    return-void
.end method
