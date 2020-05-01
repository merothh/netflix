.class final Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->e(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$1;->c(Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
