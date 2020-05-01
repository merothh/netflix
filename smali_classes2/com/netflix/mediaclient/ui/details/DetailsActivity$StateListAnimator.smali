.class Lcom/netflix/mediaclient/ui/details/DetailsActivity$StateListAnimator;
.super Lo/Of;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/details/DetailsActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    .line 608
    invoke-direct {p0, p2}, Lo/Of;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 627
    invoke-super {p0, p1}, Lo/Of;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 628
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gJ:I

    .line 629
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v1, p1, :cond_0

    .line 630
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->iz:I

    goto :goto_0

    .line 631
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cZ:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v1, :cond_1

    const-string p1, "DetailsActivity"

    const-string v0, "It was already removed"

    .line 632
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->iz:I

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 635
    invoke-static {v0, p1}, Lo/adk;->c(II)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 613
    invoke-super {p0, p1}, Lo/Of;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 614
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gF:I

    .line 615
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v1, p1, :cond_0

    .line 616
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ir:I

    goto :goto_0

    .line 617
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cY:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_1

    .line 618
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kF:I

    goto :goto_0

    .line 619
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cX:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v1, :cond_2

    .line 620
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gH:I

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 622
    invoke-static {v0, p1}, Lo/adk;->c(II)V

    return-void
.end method
