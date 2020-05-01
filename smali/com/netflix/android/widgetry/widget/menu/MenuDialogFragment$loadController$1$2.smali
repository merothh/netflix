.class final Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->a(Lcom/netflix/android/widgetry/widget/menu/MenuController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$2;->a:Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "requireContext"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$2;->a:Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->a(Lo/SynchronousResultReceiver;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$2;->b(Landroid/content/Context;I)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
