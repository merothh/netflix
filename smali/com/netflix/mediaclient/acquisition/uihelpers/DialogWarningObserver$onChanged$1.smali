.class final Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver$onChanged$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->onChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver$onChanged$1;->this$0:Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 20
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver$onChanged$1;->this$0:Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->access$setDialogShowing$p(Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;Z)V

    return-void
.end method
