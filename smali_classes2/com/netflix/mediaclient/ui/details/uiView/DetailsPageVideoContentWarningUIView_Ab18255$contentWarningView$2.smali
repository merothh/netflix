.class public final Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoContentWarningUIView_Ab18255$contentWarningView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fm;-><init>(Landroid/view/ViewGroup;)V
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
.field final synthetic d:Lo/Fm;


# direct methods
.method public constructor <init>(Lo/Fm;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoContentWarningUIView_Ab18255$contentWarningView$2;->d:Lo/Fm;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/view/View;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoContentWarningUIView_Ab18255$contentWarningView$2;->d:Lo/Fm;

    invoke-virtual {v0}, Lo/Fm;->h()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoContentWarningUIView_Ab18255$contentWarningView$2;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
