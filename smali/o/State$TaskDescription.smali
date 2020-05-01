.class Lo/State$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field a:I

.field b:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput p1, p0, Lo/State$TaskDescription;->a:I

    .line 487
    iput p2, p0, Lo/State$TaskDescription;->d:I

    .line 488
    iput p3, p0, Lo/State$TaskDescription;->e:I

    .line 489
    iput p4, p0, Lo/State$TaskDescription;->b:I

    return-void
.end method
