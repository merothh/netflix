.class final Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Dialog;
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
.field final synthetic b:Lo/agg;

.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Dialog;->b:Lo/agg;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Dialog;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Dialog;->b:Lo/agg;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;)V

    return-void
.end method
