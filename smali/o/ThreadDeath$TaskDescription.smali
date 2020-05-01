.class Lo/ThreadDeath$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ThreadDeath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroidx/recyclerview/widget/RecyclerView$Intent;

.field public d:I

.field public e:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/ThreadDeath$TaskDescription;->c:Landroidx/recyclerview/widget/RecyclerView$Intent;

    .line 63
    iput p2, p0, Lo/ThreadDeath$TaskDescription;->d:I

    .line 64
    iput p3, p0, Lo/ThreadDeath$TaskDescription;->a:I

    .line 65
    iput p4, p0, Lo/ThreadDeath$TaskDescription;->e:I

    .line 66
    iput p5, p0, Lo/ThreadDeath$TaskDescription;->b:I

    return-void
.end method
