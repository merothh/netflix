.class public final Lo/SpanWatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajW<",
        "Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;Lo/InputBinding;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->stringProvider:Lo/InputBinding;

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;Lo/SpanSet;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->interactionListenerFactory:Lo/SpanSet;

    return-void
.end method
