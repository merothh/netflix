.class final Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;
.super Ljava/lang/Object;
.source "AlertDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$cleanupHandler:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$negativeButtonHandler:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$negativeButtonHandler:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$cleanupHandler:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$negativeButtonHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$negativeButtonHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$cleanupHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;->val$cleanupHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
