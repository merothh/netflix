.class final Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/LongStream<",
        "Lo/Oa;",
        "Lo/NZ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Nr;

.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/Nr;Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;->a:Lo/Nr;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;->d:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 15
    check-cast p1, Lo/Oa;

    check-cast p2, Lo/NZ;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;->d(Lo/Oa;Lo/NZ;Landroid/view/View;I)V

    return-void
.end method

.method public final d(Lo/Oa;Lo/NZ;Landroid/view/View;I)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;->d:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->getSelectedOfferId()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "prepaidOfferId"

    .line 119
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;->d:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->access$getOnSubmitClicked$p(Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)Lo/alA;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "url.toString()"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
