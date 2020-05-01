.class final Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$1;->b:Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/akj;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$1;->b:Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;

    iget-object p1, p1, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-virtual {p1}, Lo/SynchronousResultReceiver;->dismiss()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$1;->a(Lo/akj;)V

    return-void
.end method
