.class public final Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fq;-><init>(Landroid/view/ViewStub;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic e:Lo/Fq;


# direct methods
.method public constructor <init>(Lo/Fq;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;->e:Lo/Fq;

    iput p2, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Landroid/view/View;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;->e:Lo/Fq;

    invoke-virtual {v0}, Lo/Fq;->o()Landroid/view/ViewStub;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;->e:Lo/Fq;

    invoke-virtual {v0}, Lo/Fq;->o()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$uiView$2;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
