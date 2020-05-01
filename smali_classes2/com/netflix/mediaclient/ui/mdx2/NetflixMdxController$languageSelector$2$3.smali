.class public final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CT$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;->e()Lo/CT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2$3;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 120
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2$3;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateVisibleDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 113
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "languageChanged\'s newLanguage should not be null"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2$3;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2$3;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
