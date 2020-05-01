.class Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;
.super Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
.source "KubrickLolomoUtils.java"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final topSpacer:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)V

    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 77
    iput-object p6, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->topSpacer:Landroid/view/View;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->topSpacer:Landroid/view/View;

    return-object v0
.end method
