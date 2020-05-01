.class final Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity$StateListAnimator;->b:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity$StateListAnimator;->b:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;

    iget-object v0, v0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->d:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity$StateListAnimator;->b:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;

    iget-object v1, v1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->c:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    :cond_0
    return-void
.end method
