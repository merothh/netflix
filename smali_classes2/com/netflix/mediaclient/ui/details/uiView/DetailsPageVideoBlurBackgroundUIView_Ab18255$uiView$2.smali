.class public final Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$uiView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fh;-><init>(Landroid/view/ViewGroup;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$uiView$2;->d:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lo/GridView;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$uiView$2;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->N:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/BatteryStats;->b(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/GridView;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$uiView$2;->b()Lo/GridView;

    move-result-object v0

    return-object v0
.end method
