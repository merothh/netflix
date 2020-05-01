.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$fetchPreviewsData$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yx;->d(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lo/Yn;",
        ">;>;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Yx;


# direct methods
.method public constructor <init>(Lo/Yx;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$fetchPreviewsData$1;->b:Lo/Yx;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "+",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$fetchPreviewsData$1;->b:Lo/Yx;

    invoke-virtual {v0, p1}, Lo/Yx;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$fetchPreviewsData$1;->a(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
