.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e(Landroid/os/Bundle;Lo/RatingBar;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/RatingBar;

.field final synthetic c:I

.field final synthetic e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;Lo/RatingBar;I)V
    .locals 0

    .line 1479
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;->a:Lo/RatingBar;

    iput p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;->a:Lo/RatingBar;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;->c:I

    .line 1483
    invoke-virtual {v0, v1}, Lo/RatingBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;->c:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;->a:Lo/RatingBar;

    .line 1485
    invoke-virtual {v3}, Lo/RatingBar;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;->c:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1482
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/RatingBar;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
