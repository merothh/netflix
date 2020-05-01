.class public final Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abT;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/JM$StateListAnimator;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lo/abT;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/abT;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;->c:Lo/abT;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/JM$StateListAnimator;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 142
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "valid auto login token was not created"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;->c:Lo/abT;

    .line 146
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 147
    invoke-static {v0}, Lo/abT;->b(Lo/abT;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/Ik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountHandler.createLink(url, autoLoginToken)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;->c:Lo/abT;

    invoke-static {v0, p1}, Lo/abT;->b(Lo/abT;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/ums/UmaLinkActionEmbeddedWebViewActivity$loadUrlWithAutoLogin$$inlined$let$lambda$1;->b(Lo/JM$StateListAnimator;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
