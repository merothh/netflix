.class final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$setPlayProgress$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->e(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/ImageSwitcher;",
        "Landroid/widget/SeekBar;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$setPlayProgress$1;->a:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/ImageSwitcher;Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "timeView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrubberView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$setPlayProgress$1;->a:I

    if-eq p1, v0, :cond_1

    .line 491
    :cond_0
    iget p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$setPlayProgress$1;->a:I

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lo/ImageSwitcher;

    check-cast p2, Landroid/widget/SeekBar;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$setPlayProgress$1;->b(Lo/ImageSwitcher;Landroid/widget/SeekBar;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
