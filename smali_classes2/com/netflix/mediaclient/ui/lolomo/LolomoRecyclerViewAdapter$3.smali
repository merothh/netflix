.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/KI$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$3;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$3;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b(I)Lo/ParcelFormatException;

    move-result-object p2

    .line 134
    instance-of v0, p2, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    if-eqz v0, :cond_0

    .line 135
    check-cast p2, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    .line 136
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method
