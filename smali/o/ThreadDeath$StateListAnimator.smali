.class Lo/ThreadDeath$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ThreadDeath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroidx/recyclerview/widget/RecyclerView$Intent;

.field public e:Landroidx/recyclerview/widget/RecyclerView$Intent;

.field public f:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lo/ThreadDeath$StateListAnimator;->e:Landroidx/recyclerview/widget/RecyclerView$Intent;

    .line 75
    iput-object p2, p0, Lo/ThreadDeath$StateListAnimator;->d:Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lo/ThreadDeath$StateListAnimator;-><init>(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 81
    iput p3, p0, Lo/ThreadDeath$StateListAnimator;->c:I

    .line 82
    iput p4, p0, Lo/ThreadDeath$StateListAnimator;->a:I

    .line 83
    iput p5, p0, Lo/ThreadDeath$StateListAnimator;->b:I

    .line 84
    iput p6, p0, Lo/ThreadDeath$StateListAnimator;->f:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ThreadDeath$StateListAnimator;->e:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ThreadDeath$StateListAnimator;->d:Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ThreadDeath$StateListAnimator;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ThreadDeath$StateListAnimator;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ThreadDeath$StateListAnimator;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ThreadDeath$StateListAnimator;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
