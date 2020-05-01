.class final Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$StateListAnimator;->e:Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$StateListAnimator;->e:Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;->k()Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;->onRegistrationContextConfirm()V

    return-void
.end method
