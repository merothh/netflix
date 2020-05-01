.class public final Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$onText$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/text/Spanned;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Rw;


# direct methods
.method public constructor <init>(Lo/Rw;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$onText$2;->a:Lo/Rw;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Landroid/text/Spanned;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$onText$2;->a:Lo/Rw;

    invoke-virtual {v0}, Lo/Rw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$onText$2;->e()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method
