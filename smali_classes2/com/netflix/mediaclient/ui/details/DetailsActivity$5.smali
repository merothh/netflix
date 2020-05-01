.class Lcom/netflix/mediaclient/ui/details/DetailsActivity$5;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/ui/details/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$5;->d:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$5;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 479
    invoke-super {p0, p1, p2}, Lo/zP;->c(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 481
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$5;->d:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ix:I

    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$5;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$5;->d:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gG:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 486
    :goto_0
    invoke-static {p1, p2}, Lo/adk;->a(Ljava/lang/String;I)V

    return-void
.end method
