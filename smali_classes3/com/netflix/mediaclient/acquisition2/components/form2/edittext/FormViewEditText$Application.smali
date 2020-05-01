.class final Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->f()V
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
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Application;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Application;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Application;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->e()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->a(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Application;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->c(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V

    return-void
.end method
