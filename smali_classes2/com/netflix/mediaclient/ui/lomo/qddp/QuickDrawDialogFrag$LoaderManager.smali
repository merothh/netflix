.class final Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/agg;

.field final synthetic c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$LoaderManager;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$LoaderManager;->a:Lo/agg;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$LoaderManager;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 255
    sget-object p1, Lo/LL;->d:Lo/LL;

    invoke-virtual {p1}, Lo/LL;->c()V

    .line 256
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$LoaderManager;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->dismiss()V

    return-void
.end method
