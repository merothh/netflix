.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasHighlighter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/Ic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasHighlighter$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lo/Ic;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasHighlighter$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasHighlighter$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    check-cast v2, Lo/UnicodeScript;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->a(Lo/If;Lo/UnicodeScript;)Lo/Ic;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasHighlighter$2;->c()Lo/Ic;

    move-result-object v0

    return-object v0
.end method
