.class Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "KubrickGalleryViewGroup.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$2;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$2;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->access$000(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
