.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lo/RatingBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field final synthetic c:Lo/RatingBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lo/RatingBar;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->c:Lo/RatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->D()V

    .line 890
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z()V

    .line 891
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->c:Lo/RatingBar;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
