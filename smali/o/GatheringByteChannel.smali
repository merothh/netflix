.class public Lo/GatheringByteChannel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private c:Ljava/lang/Runnable;

.field private e:Landroid/view/ViewGroup;


# direct methods
.method static b(Landroid/view/View;)Lo/GatheringByteChannel;
    .locals 1

    .line 207
    sget v0, Lo/InterruptibleChannel$Activity;->c:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/GatheringByteChannel;

    return-object p0
.end method

.method static d(Landroid/view/View;Lo/GatheringByteChannel;)V
    .locals 1

    .line 196
    sget v0, Lo/InterruptibleChannel$Activity;->c:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 149
    iget-object v0, p0, Lo/GatheringByteChannel;->e:Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/GatheringByteChannel;->b(Landroid/view/View;)Lo/GatheringByteChannel;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 150
    iget-object v0, p0, Lo/GatheringByteChannel;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
