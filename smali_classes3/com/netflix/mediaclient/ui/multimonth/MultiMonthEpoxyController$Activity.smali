.class final Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Activity;
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
        "Lo/NQ;",
        "Lo/NT;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Nr;

.field final synthetic e:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;


# direct methods
.method constructor <init>(Lo/Nr;Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Activity;->d:Lo/Nr;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Activity;->e:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/NQ;Lo/NT;Landroid/view/View;I)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Activity;->e:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->access$getOnDismissClicked$p(Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)Lo/alB;

    move-result-object p1

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 15
    check-cast p1, Lo/NQ;

    check-cast p2, Lo/NT;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Activity;->c(Lo/NQ;Lo/NT;Landroid/view/View;I)V

    return-void
.end method
