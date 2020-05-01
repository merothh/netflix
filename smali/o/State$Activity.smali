.class Lo/State$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field a:I

.field b:I

.field e:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput p1, p0, Lo/State$Activity;->b:I

    .line 975
    iput p2, p0, Lo/State$Activity;->a:I

    .line 976
    iput-boolean p3, p0, Lo/State$Activity;->e:Z

    return-void
.end method
