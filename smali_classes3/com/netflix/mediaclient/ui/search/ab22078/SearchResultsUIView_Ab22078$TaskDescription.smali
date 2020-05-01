.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$TaskDescription;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$TaskDescription;->d:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$TaskDescription;->d:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 41
    sget-object p1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->b:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$TaskDescription;->d:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    sget-object p2, Lo/ZR$TaskDescription;->e:Lo/ZR$TaskDescription;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
