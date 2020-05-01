.class final Lo/Fd$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fd;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Fd;


# direct methods
.method constructor <init>(Lo/Fd;)V
    .locals 0

    iput-object p1, p0, Lo/Fd$TaskDescription;->a:Lo/Fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 155
    iget-object v0, p0, Lo/Fd$TaskDescription;->a:Lo/Fd;

    invoke-static {v0}, Lo/Fd;->e(Lo/Fd;)Lo/ListView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->sQ:I

    invoke-virtual {v0, v1}, Lo/ListView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lo/Fd$TaskDescription;->a:Lo/Fd;

    invoke-static {v1}, Lo/Fd;->e(Lo/Fd;)Lo/ListView;

    move-result-object v1

    invoke-virtual {v1}, Lo/ListView;->getVisibility()I

    move-result v1

    .line 157
    iget-object v2, p0, Lo/Fd$TaskDescription;->a:Lo/Fd;

    invoke-static {v2}, Lo/Fd;->e(Lo/Fd;)Lo/ListView;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->sQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/ListView;->setTag(ILjava/lang/Object;)V

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    .line 160
    iget-object v0, p0, Lo/Fd$TaskDescription;->a:Lo/Fd;

    invoke-static {v0}, Lo/Fd;->c(Lo/Fd;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Fd;->c(Lo/Fd;Landroid/widget/FrameLayout;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lo/Fd$TaskDescription;->a:Lo/Fd;

    invoke-static {v0}, Lo/Fd;->c(Lo/Fd;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
