.class final Lo/LR$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LR;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/agg;

.field final synthetic c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

.field final synthetic d:Lo/LR;


# direct methods
.method constructor <init>(Lo/LR;Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;)V
    .locals 0

    iput-object p1, p0, Lo/LR$TaskDescription;->d:Lo/LR;

    iput-object p2, p0, Lo/LR$TaskDescription;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iput-object p3, p0, Lo/LR$TaskDescription;->b:Lo/agg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lo/LR$TaskDescription;->c:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iget-object v1, p0, Lo/LR$TaskDescription;->d:Lo/LR;

    invoke-static {v1}, Lo/LR;->e(Lo/LR;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lo/LR$TaskDescription;->b:Lo/agg;

    iget-object v3, p0, Lo/LR$TaskDescription;->d:Lo/LR;

    invoke-static {v3}, Lo/LR;->d(Lo/LR;)Lo/Df;

    move-result-object v3

    invoke-interface {v3}, Lo/Df;->n()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method
