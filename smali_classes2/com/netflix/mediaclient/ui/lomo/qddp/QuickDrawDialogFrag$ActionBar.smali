.class final Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;
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

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;->e:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;->a:Lo/agg;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 222
    sget-object p1, Lo/LL;->d:Lo/LL;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;->e:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/LL;->d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 223
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;->e:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;->a:Lo/agg;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V

    return-void
.end method
