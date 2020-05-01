.class public final Lcom/netflix/cl/model/context/SearchAutofillSuggestionResults;
.super Lcom/netflix/cl/model/context/DataModel;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Exclusive;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/cl/model/context/DataModel;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    const-string p1, "SearchAutofillSuggestionResults"

    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/context/SearchAutofillSuggestionResults;->addContextType(Ljava/lang/String;)V

    return-void
.end method
