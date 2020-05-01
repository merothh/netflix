.class public final Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/MediaControlView2;


# direct methods
.method public constructor <init>(Lo/MediaControlView2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;->c:Lo/MediaControlView2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/akj;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;->c:Lo/MediaControlView2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/MediaControlView2;->e(Lo/MediaControlView2;Z)V

    .line 78
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;->c:Lo/MediaControlView2;

    invoke-static {p1}, Lo/MediaControlView2;->a(Lo/MediaControlView2;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;->c:Lo/MediaControlView2;

    invoke-virtual {v0, p1}, Lo/MediaControlView2;->setState(I)V

    .line 80
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;->c:Lo/MediaControlView2;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lo/MediaControlView2;->b(Lo/MediaControlView2;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;->d(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
