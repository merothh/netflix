.class final Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$3;->b:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$3;->e(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "bifPositionMillis"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$3;->b:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;

    iget-object v0, v0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->a:Lo/CommonTimeUtils;

    invoke-virtual {v0}, Lo/CommonTimeUtils;->a()Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    mul-int/lit16 p1, p1, 0x3e8

    invoke-interface {v0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lo/CommonTimeUtils;->c()Landroid/graphics/drawable/ColorDrawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method
