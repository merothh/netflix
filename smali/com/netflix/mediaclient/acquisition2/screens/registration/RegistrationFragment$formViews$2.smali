.class final Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$formViews$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Ljava/util/List<",
        "+",
        "Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$formViews$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    .line 47
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$formViews$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->p()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$formViews$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->q()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$formViews$2;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
