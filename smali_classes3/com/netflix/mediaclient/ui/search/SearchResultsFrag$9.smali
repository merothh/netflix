.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$9;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$9;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1002
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$9;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$9;->c:I

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V

    :cond_0
    return-void
.end method
