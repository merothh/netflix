.class public final Lo/AdapterViewFlipper$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final a:I

.field private final b:F

.field private final d:I

.field private final e:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/AdapterViewFlipper$Activity;->a:I

    iput p2, p0, Lo/AdapterViewFlipper$Activity;->d:I

    iput p3, p0, Lo/AdapterViewFlipper$Activity;->b:F

    iput p4, p0, Lo/AdapterViewFlipper$Activity;->e:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 175
    iget v0, p0, Lo/AdapterViewFlipper$Activity;->b:F

    return v0
.end method

.method public final c()F
    .locals 1

    .line 175
    iget v0, p0, Lo/AdapterViewFlipper$Activity;->e:F

    return v0
.end method

.method public final d()I
    .locals 1

    .line 175
    iget v0, p0, Lo/AdapterViewFlipper$Activity;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 175
    iget v0, p0, Lo/AdapterViewFlipper$Activity;->a:I

    return v0
.end method
