.class final Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->d(ILandroid/view/View;Lo/SynthesisPlaybackQueueItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic e:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;->e:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 311
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;->e(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final e(Ljava/lang/Boolean;)V
    .locals 3

    .line 330
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 331
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;->a:Landroid/widget/EditText;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 333
    sget-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->isLuhnCheckNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->luhnCheck(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;->e:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->a(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;->e:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->b(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;->e:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;

    invoke-static {v1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->c(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lo/anm;->b:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
