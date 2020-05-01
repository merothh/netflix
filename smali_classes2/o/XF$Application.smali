.class final Lo/XF$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XF;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/XF;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/XF;I)V
    .locals 0

    iput-object p1, p0, Lo/XF$Application;->d:Lo/XF;

    iput p2, p0, Lo/XF$Application;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 138
    iget-object v0, p0, Lo/XF$Application;->d:Lo/XF;

    invoke-static {v0}, Lo/XF;->b(Lo/XF;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lo/XF$Application;->e:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
