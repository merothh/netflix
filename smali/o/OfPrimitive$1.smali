.class Lo/OfPrimitive$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OfPrimitive;->onAttachedToRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/OfPrimitive;


# direct methods
.method constructor <init>(Lo/OfPrimitive;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lo/OfPrimitive$1;->d:Lo/OfPrimitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 806
    iget-object v0, p0, Lo/OfPrimitive$1;->d:Lo/OfPrimitive;

    invoke-static {v0}, Lo/OfPrimitive;->access$1000(Lo/OfPrimitive;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 807
    iget-object v0, p0, Lo/OfPrimitive$1;->d:Lo/OfPrimitive;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This EpoxyController had its adapter added to more than one ReyclerView. Epoxy does not support attaching an adapter to multiple RecyclerViews because saved state will not work properly. If you did not intend to attach your adapter to multiple RecyclerViews you may be leaking a reference to a previous RecyclerView. Make sure to remove the adapter from any previous RecyclerViews (eg if the adapter is reused in a Fragment across multiple onCreateView/onDestroyView cycles). See https://github.com/airbnb/epoxy/wiki/Avoiding-Memory-Leaks for more information."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/OfPrimitive;->onExceptionSwallowed(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method
