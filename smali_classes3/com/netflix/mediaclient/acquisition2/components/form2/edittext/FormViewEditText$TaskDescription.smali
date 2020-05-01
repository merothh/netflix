.class final Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$TaskDescription;
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
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$TaskDescription;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final c(Ljava/lang/Boolean;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->e(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;->c(Z)V

    :cond_0
    return-void
.end method
