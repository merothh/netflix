.class final Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;-><init>(Lo/BC;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
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
        "Lo/Te;",
        "Lo/SZ$Application;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/Te;Lo/SZ$Application;Landroid/view/View;I)V
    .locals 0

    .line 37
    invoke-virtual {p1}, Lo/Te;->B()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 38
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->toggleSelectedState(Lo/RZ;)V

    goto :goto_0

    .line 40
    :cond_0
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Activity;

    check-cast p2, Lo/MessagePdu;

    .line 41
    invoke-static {}, Lo/RL;->d()Lo/nS;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lo/Te;->w()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/nS;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 20
    check-cast p1, Lo/Te;

    check-cast p2, Lo/SZ$Application;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$ActionBar;->c(Lo/Te;Lo/SZ$Application;Landroid/view/View;I)V

    return-void
.end method
