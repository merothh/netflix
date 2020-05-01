.class final Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$StateListAnimator;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$StateListAnimator;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$StateListAnimator;->e(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final e(Ljava/lang/Boolean;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$StateListAnimator;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->a(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;Z)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$StateListAnimator;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->c(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V

    return-void
.end method
