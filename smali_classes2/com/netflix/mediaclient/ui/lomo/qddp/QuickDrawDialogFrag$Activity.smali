.class final Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Activity;->a:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    sget-object p1, Lo/LL;->d:Lo/LL;

    invoke-virtual {p1}, Lo/LL;->b()V

    .line 81
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Activity;->a:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->dismiss()V

    return-void
.end method
