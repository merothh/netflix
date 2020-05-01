.class final Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;
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
        "Lo/NU;",
        "Lo/NO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

.field final synthetic b:Lo/Nw;


# direct methods
.method constructor <init>(Lo/Nw;Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;->b:Lo/Nw;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;->a:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/NU;Lo/NO;Landroid/view/View;I)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;->a:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;->b:Lo/Nw;

    invoke-virtual {p2}, Lo/Nw;->a()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->setSelectedOfferId(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;->a:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->requestModelBuild()V

    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 15
    check-cast p1, Lo/NU;

    check-cast p2, Lo/NO;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;->b(Lo/NU;Lo/NO;Landroid/view/View;I)V

    return-void
.end method
