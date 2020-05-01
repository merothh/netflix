.class Lo/RuntimeException$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RuntimeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/RuntimeException;


# direct methods
.method constructor <init>(Lo/RuntimeException;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/RuntimeException$5;->a:Lo/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lo/RuntimeException$5;->a:Lo/RuntimeException;

    iget-object v0, v0, Lo/RuntimeException;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/RuntimeException$5;->a:Lo/RuntimeException;

    iget-object v1, v1, Lo/RuntimeException;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
