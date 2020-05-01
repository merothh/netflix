.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrePlaySkipRecapUIView$containerId$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WX;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/WX;


# direct methods
.method public constructor <init>(Lo/WX;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrePlaySkipRecapUIView$containerId$2;->e:Lo/WX;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrePlaySkipRecapUIView$containerId$2;->e:Lo/WX;

    invoke-virtual {v0}, Lo/WX;->j()Lo/ExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExpandableListAdapter;->getId()I

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrePlaySkipRecapUIView$containerId$2;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
