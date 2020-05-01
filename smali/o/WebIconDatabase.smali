.class public final Lo/WebIconDatabase;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WebIconDatabase$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/WebIconDatabase$ActionBar;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/WebIconDatabase$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/WebIconDatabase$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/WebIconDatabase;->d:Lo/WebIconDatabase$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method public static final c(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/WebIconDatabase;
    .locals 1

    sget-object v0, Lo/WebIconDatabase;->d:Lo/WebIconDatabase$ActionBar;

    invoke-virtual {v0, p0, p1}, Lo/WebIconDatabase$ActionBar;->e(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/WebIconDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lo/WebIconDatabase;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    sget-object v0, Lo/WebIconDatabase;->d:Lo/WebIconDatabase$ActionBar;

    invoke-virtual {v0}, Lo/WebIconDatabase$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/WebIconDatabase;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 49
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v1, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 50
    invoke-virtual {p0}, Lo/WebIconDatabase;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-virtual {p0}, Lo/WebIconDatabase;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1;-><init>(Lo/WebIconDatabase;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lo/alN;

    invoke-static {p1, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 66
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/WebChromeClient;->onDestroyView()V

    invoke-virtual {p0}, Lo/WebIconDatabase;->a()V

    return-void
.end method
