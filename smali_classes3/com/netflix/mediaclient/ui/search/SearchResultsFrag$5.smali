.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ae()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 807
    instance-of p1, p2, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    if-eqz p1, :cond_0

    .line 808
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    check-cast p2, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V

    :cond_0
    return-void
.end method
