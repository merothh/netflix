.class Lo/IL$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IL;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lo/IL$3;->d:Lo/IL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 786
    iget-object v0, p0, Lo/IL$3;->d:Lo/IL;

    invoke-static {v0}, Lo/IL;->b(Lo/IL;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 787
    iget-object v0, p0, Lo/IL$3;->d:Lo/IL;

    invoke-static {v0}, Lo/IL;->c(Lo/IL;)Lo/DE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lo/IL$3;->d:Lo/IL;

    invoke-static {v0}, Lo/IL;->c(Lo/IL;)Lo/DE;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/DE;->d(I)V

    :cond_0
    return-void
.end method
