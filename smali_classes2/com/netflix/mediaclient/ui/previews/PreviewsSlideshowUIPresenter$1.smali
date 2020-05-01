.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yx;-><init>(Lo/Yz;Lio/reactivex/Observable;Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/YB;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Yx;


# direct methods
.method public constructor <init>(Lo/Yx;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$1;->d:Lo/Yx;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/YB;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$1;->d:Lo/Yx;

    const-string v1, "uiEvent"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/Yx;->e(Lo/YB;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lo/YB;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$1;->c(Lo/YB;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
