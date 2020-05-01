.class public final Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ImageButton$TaskDescription$ActionBar;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/WebStorage;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ImageButton$TaskDescription$ActionBar;

.field final synthetic d:Lio/reactivex/SingleEmitter;


# direct methods
.method public constructor <init>(Lo/ImageButton$TaskDescription$ActionBar;Lio/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;->a:Lo/ImageButton$TaskDescription$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;->d:Lio/reactivex/SingleEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/WebStorage;)V
    .locals 6

    invoke-virtual {p1}, Lo/WebStorage;->e()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {p1}, Lo/WebStorage;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lo/WebStorage;->h()I

    move-result v2

    invoke-virtual {p1}, Lo/WebStorage;->g()I

    move-result p1

    .line 136
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;->a:Lo/ImageButton$TaskDescription$ActionBar;

    iget-object v3, v3, Lo/ImageButton$TaskDescription$ActionBar;->d:Lo/ImageButton;

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;->a:Lo/ImageButton$TaskDescription$ActionBar;

    iget-object v4, v4, Lo/ImageButton$TaskDescription$ActionBar;->a:Landroid/content/Context;

    .line 137
    new-instance v5, Lo/WebStorage;

    invoke-direct {v5, v0, v1, v2, p1}, Lo/WebStorage;-><init>(Lo/DESedeKeySpec;Ljava/util/List;II)V

    .line 136
    invoke-virtual {v3, v4, v5}, Lo/ImageButton;->setNetflixLottieComposition(Landroid/content/Context;Lo/WebStorage;)V

    .line 144
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;->d:Lio/reactivex/SingleEmitter;

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Lo/WebStorage;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;->c(Lo/WebStorage;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
