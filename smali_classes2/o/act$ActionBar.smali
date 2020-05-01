.class public final Lo/act$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/act;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

.field final synthetic d:Lo/act;


# direct methods
.method constructor <init>(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lo/act$ActionBar;->d:Lo/act;

    iput-object p2, p0, Lo/act$ActionBar;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    invoke-direct {p0, p3}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 229
    iget-object v0, p0, Lo/act$ActionBar;->d:Lo/act;

    invoke-static {v0}, Lo/act;->b(Lo/act;)Lo/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 230
    :cond_0
    sget-object v0, Lo/acn;->d:Lo/acn;

    invoke-virtual {v0, p1}, Lo/acn;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;)V

    .line 231
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, p0, Lo/act$ActionBar;->d:Lo/act;

    iget-object p2, p0, Lo/act$ActionBar;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    invoke-static {p1, p2}, Lo/act;->e(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;)V

    goto :goto_1

    .line 232
    :cond_2
    :goto_0
    sget-object p1, Lo/act;->j:Lo/act$Application;

    check-cast p1, Lo/MessagePdu;

    .line 233
    iget-object p1, p0, Lo/act$ActionBar;->d:Lo/act;

    invoke-static {p1}, Lo/act;->c(Lo/act;)V

    .line 237
    :goto_1
    iget-object p1, p0, Lo/act$ActionBar;->d:Lo/act;

    invoke-static {p1}, Lo/act;->a(Lo/act;)V

    return-void
.end method
