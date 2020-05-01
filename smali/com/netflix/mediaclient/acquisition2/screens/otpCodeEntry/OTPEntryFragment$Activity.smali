.class final Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 159
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->h()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v1

    invoke-virtual {v1}, Lo/SignatureNotFoundException;->q()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v2

    invoke-virtual {v2}, Lo/SignatureNotFoundException;->t()Lo/TextClassificationSessionFactory;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lo/SignatureNotFoundException;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method
