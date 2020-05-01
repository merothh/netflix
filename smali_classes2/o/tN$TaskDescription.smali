.class public Lo/tN$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field public a:I

.field public b:D

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IDIII)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lo/tN$TaskDescription;->a:I

    .line 21
    iput-wide p2, p0, Lo/tN$TaskDescription;->b:D

    .line 22
    iput p4, p0, Lo/tN$TaskDescription;->d:I

    .line 23
    iput p5, p0, Lo/tN$TaskDescription;->e:I

    .line 24
    iput p6, p0, Lo/tN$TaskDescription;->c:I

    return-void
.end method
