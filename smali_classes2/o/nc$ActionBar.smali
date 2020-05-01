.class Lo/nc$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field b:Z

.field e:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-boolean p1, p0, Lo/nc$ActionBar;->e:Z

    .line 528
    iput-boolean p2, p0, Lo/nc$ActionBar;->b:Z

    return-void
.end method
