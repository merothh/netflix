.class final Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->F()V
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
        "Lo/ClassFormatError<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x1

    .line 197
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->e(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->b(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->e(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->b(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;->b(Ljava/lang/Boolean;)V

    return-void
.end method
