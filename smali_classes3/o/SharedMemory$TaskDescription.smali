.class final Lo/SharedMemory$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SharedMemory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/SharedMemory;


# direct methods
.method constructor <init>(Lo/SharedMemory;)V
    .locals 0

    iput-object p1, p0, Lo/SharedMemory$TaskDescription;->b:Lo/SharedMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lo/SharedMemory$TaskDescription;->b:Lo/SharedMemory;

    invoke-virtual {v0, p1}, Lo/SharedMemory;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 149
    iget-object v1, p0, Lo/SharedMemory$TaskDescription;->b:Lo/SharedMemory;

    invoke-static {v1}, Lo/SharedMemory;->e(Lo/SharedMemory;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 152
    iget-object v2, p0, Lo/SharedMemory$TaskDescription;->b:Lo/SharedMemory;

    invoke-virtual {v2}, Lo/SharedMemory;->d()Lo/SharedMemory$StateListAnimator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 153
    iget-object v3, p0, Lo/SharedMemory$TaskDescription;->b:Lo/SharedMemory;

    invoke-virtual {v3}, Lo/SharedMemory;->b()Lo/SharedMemory$Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lo/SharedMemory$Activity;->e()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_2

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "view"

    .line 158
    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1, v1, v0}, Lo/SharedMemory$StateListAnimator;->c(Landroid/view/View;II)V

    goto :goto_2

    .line 155
    :cond_2
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag click out of bounds (p="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
