.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lo/RatingBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/RatingBar;

.field final synthetic d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lo/RatingBar;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;->a:Lo/RatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    .line 901
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;->a:Lo/RatingBar;

    invoke-virtual {v0}, Lo/RatingBar;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;->a:Lo/RatingBar;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
