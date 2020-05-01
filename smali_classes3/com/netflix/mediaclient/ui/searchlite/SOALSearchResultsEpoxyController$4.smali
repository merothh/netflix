.class final Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BadPaddingException;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/alN;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$4;->e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/Spliterator;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$4;->e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getInterceptor$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/OfPrimitive$Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->removeInterceptor(Lo/OfPrimitive$Application;)V

    return-void
.end method
