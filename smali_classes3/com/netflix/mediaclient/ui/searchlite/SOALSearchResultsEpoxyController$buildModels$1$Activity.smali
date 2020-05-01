.class final Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EncryptedPrivateKeyInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->e(Lo/Bs;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/EncryptedPrivateKeyInfo<",
        "Lo/aaJ;",
        "Lo/aaK;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

.field final synthetic d:Lo/By;

.field final synthetic e:Lo/Bs;

.field final synthetic h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method constructor <init>(Lo/By;Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;ILjava/lang/String;Lo/Bs;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;->d:Lo/By;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

    iput p3, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;->a:I

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;->e:Lo/Bs;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;->h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;FFII)V
    .locals 7

    .line 25
    move-object v1, p1

    check-cast v1, Lo/aaJ;

    move-object v2, p2

    check-cast v2, Lo/aaK;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;->e(Lo/aaJ;Lo/aaK;FFII)V

    return-void
.end method

.method public final e(Lo/aaJ;Lo/aaK;FFII)V
    .locals 0

    .line 192
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getSearchCLHelper$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/aaw;

    move-result-object p2

    const-string p4, "model"

    invoke-static {p1, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Lo/aaw;->c(Lo/aaJ;F)V

    return-void
.end method
