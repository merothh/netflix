.class public final Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$caretIcon$2;
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
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Rw;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo/Rw;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$caretIcon$2;->a:Lo/Rw;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$caretIcon$2;->e:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$caretIcon$2;->a:Lo/Rw;

    invoke-virtual {v0}, Lo/Rw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->ap:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$caretIcon$2;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$caretIcon$2;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
