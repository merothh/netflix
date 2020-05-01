.class final Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->e(Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

.field final synthetic e:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;->e:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;->a:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;->a:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;->e:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;->e:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->c:Lo/Bx;

    check-cast v2, Lo/agg;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;->e:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method
