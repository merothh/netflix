.class final Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$1;->c:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$1;->c(Ljava/lang/Integer;)V

    return-void
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$1;->c:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;

    iget-object v0, v0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->d:Lo/CountDownTimer;

    iget-object v1, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$1;->c:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;

    iget-object v1, v1, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->a:Lo/CommonTimeUtils;

    invoke-static {v1}, Lo/CommonTimeUtils;->c(Lo/CommonTimeUtils;)Lo/aeA;

    move-result-object v1

    const-string v2, "positionSeconds"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lo/aeA;->b(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Lo/CountDownTimer;->c(Ljava/lang/CharSequence;)V

    return-void
.end method
