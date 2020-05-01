.class public Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "LanguageSelectorKubrick.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSubtitlesDlg"


# instance fields
.field protected callback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

.field private dlgContents:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    const-string/jumbo v0, "AudioSubtitlesDlg"

    const-string/jumbo v1, "AudioSubtitlesDlg::onCancel"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->callback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->callback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;->userCanceled()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "AudioSubtitlesDlg"

    const-string/jumbo v1, "onCreateView called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->dlgContents:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->dlgContents:Landroid/view/View;

    return-object v0
.end method

.method public setViewAndCallback(Landroid/view/View;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->dlgContents:Landroid/view/View;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->callback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    return-void
.end method
