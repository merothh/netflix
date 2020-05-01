.class final Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->a(Lo/Build;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Landroid/graphics/drawable/Drawable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$5;->e:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 52
    sget-object v0, Lo/CommonTimeUtils;->e:Lo/CommonTimeUtils$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 53
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$5;->e:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;

    iget-object v0, v0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->d:Lo/CountDownTimer;

    invoke-interface {v0, p1}, Lo/CountDownTimer;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$5;->d(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
