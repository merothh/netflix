.class public Lo/Ku;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

.field private final d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ku;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iput-object p2, p0, Lo/Ku;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/Ku;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v1, p0, Lo/Ku;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/view/View;)V

    return-void
.end method
