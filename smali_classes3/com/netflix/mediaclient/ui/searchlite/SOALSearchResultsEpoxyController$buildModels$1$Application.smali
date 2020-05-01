.class final Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;
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
        "Lo/aaN;",
        "Lo/aaL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Bx;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:I

.field final synthetic d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

.field final synthetic h:I

.field final synthetic j:I


# direct methods
.method constructor <init>(Lo/Bx;ILkotlin/jvm/internal/Ref$ObjectRef;Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;II)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->a:Lo/Bx;

    iput p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->c:I

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput p6, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->j:I

    iput p7, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;FFII)V
    .locals 7

    .line 25
    move-object v1, p1

    check-cast v1, Lo/aaN;

    move-object v2, p2

    check-cast v2, Lo/aaL;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->e(Lo/aaN;Lo/aaL;FFII)V

    return-void
.end method

.method public final e(Lo/aaN;Lo/aaL;FFII)V
    .locals 0

    .line 151
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;->e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getSearchCLHelper$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/aaw;

    move-result-object p2

    const-string p4, "model"

    invoke-static {p1, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Lo/aaw;->d(Lo/aaN;F)V

    return-void
.end method
