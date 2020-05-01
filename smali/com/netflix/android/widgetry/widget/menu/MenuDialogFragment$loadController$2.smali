.class public final Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynchronousResultReceiver;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/SynchronousResultReceiver;


# direct methods
.method public constructor <init>(Lo/SynchronousResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$2;->c:Lo/SynchronousResultReceiver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "MenuDialogFragment - Error emitted by controller observable"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$2;->c:Lo/SynchronousResultReceiver;

    invoke-virtual {p1}, Lo/SynchronousResultReceiver;->dismiss()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$2;->e(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
